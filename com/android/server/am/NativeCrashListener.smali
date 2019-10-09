.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 97
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 99
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "totalRead":I
    :goto_1
    if-lez p3, :cond_10

    .line 179
    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 180
    .local v1, "n":I
    if-gtz v1, :cond_d

    .line 184
    const/4 v2, -0x1

    return v2

    .line 186
    :cond_d
    sub-int/2addr p3, v1

    .line 187
    add-int/2addr v0, v1

    .line 188
    .end local v1    # "n":I
    goto :goto_1

    .line 189
    :cond_10
    return v0
.end method

.method static unpackInt([BI)I
    .registers 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 168
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 169
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 170
    .local v1, "b1":I
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 171
    .local v2, "b2":I
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 172
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 195
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 196
    .local v1, "buf":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v2

    .line 199
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v2, 0x2710

    :try_start_c
    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    .line 200
    .local v2, "timeout":Landroid/system/StructTimeval;
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 201
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 208
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 209
    .local v5, "headerBytes":I
    if-eq v5, v3, :cond_2f

    .line 211
    const-string v3, "NativeCrashListener"

    const-string v4, "Unable to read from debuggerd"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 215
    :cond_2f
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v3

    .line 216
    .local v3, "pid":I
    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v6

    .line 222
    .local v6, "signal":I
    if-lez v3, :cond_ac

    .line 224
    iget-object v7, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_b4

    .line 225
    :try_start_3f
    iget-object v8, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 226
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_a9

    .line 227
    if-eqz v8, :cond_92

    .line 229
    :try_start_4c
    iget-boolean v7, v8, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v7, :cond_51

    .line 233
    return-void

    .line 239
    :cond_51
    array-length v7, v1

    invoke-static {p1, v1, v4, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v7

    .line 240
    .local v7, "bytes":I
    if-lez v7, :cond_67

    .line 246
    add-int/lit8 v9, v7, -0x1

    aget-byte v9, v1, v9

    if-nez v9, :cond_64

    .line 247
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v1, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 248
    goto :goto_69

    .line 251
    :cond_64
    invoke-virtual {v0, v1, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 253
    :cond_67
    if-gtz v7, :cond_51

    .line 262
    :goto_69
    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6c} :catch_b4

    :try_start_6c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 263
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 264
    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 265
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_8c

    :try_start_75
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 270
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v4, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 271
    .local v4, "reportString":Ljava/lang/String;
    new-instance v9, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v9, p0, v8, v6, v4}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8b} :catch_b4

    .line 272
    .end local v4    # "reportString":Ljava/lang/String;
    .end local v7    # "bytes":I
    goto :goto_a8

    .line 265
    .restart local v7    # "bytes":I
    :catchall_8c
    move-exception v9

    :try_start_8d
    monitor-exit v4
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9

    .line 273
    .end local v7    # "bytes":I
    :cond_92
    const-string v4, "NativeCrashListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a8} :catch_b4

    .line 275
    .end local v8    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_a8
    goto :goto_b3

    .line 226
    :catchall_a9
    move-exception v4

    :try_start_aa
    monitor-exit v7
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v4

    .line 276
    :cond_ac
    const-string v4, "NativeCrashListener"

    const-string v7, "Bogus pid!"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b3} :catch_b4

    .line 281
    .end local v2    # "timeout":Landroid/system/StructTimeval;
    .end local v3    # "pid":I
    .end local v5    # "headerBytes":I
    .end local v6    # "signal":I
    :goto_b3
    goto :goto_bc

    .line 278
    :catch_b4
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NativeCrashListener"

    const-string v4, "Exception dealing with report"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_bc
    return-void
.end method

.method public run()V
    .registers 10

    .line 103
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 111
    .local v1, "ackSignal":[B
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ndebugsocket"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v2, "socketFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 118
    .end local v2    # "socketFile":Ljava/io/File;
    :cond_13
    :try_start_13
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 119
    .local v2, "serverFd":Ljava/io/FileDescriptor;
    const-string v3, "/data/system/ndebugsocket"

    invoke-static {v3}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v3

    .line 121
    .local v3, "sockAddr":Landroid/system/UnixSocketAddress;
    invoke-static {v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 122
    invoke-static {v2, v0}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 123
    const-string v5, "/data/system/ndebugsocket"

    const/16 v6, 0x1ff

    invoke-static {v5, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2f} :catch_6b

    .line 126
    :goto_2f
    const/4 v5, 0x0

    move-object v6, v5

    .line 129
    .local v6, "peerFd":Ljava/io/FileDescriptor;
    :try_start_31
    invoke-static {v2, v5}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v6, v5

    .line 131
    if-eqz v6, :cond_3b

    .line 134
    invoke-virtual {p0, v6}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_4a
    .catchall {:try_start_31 .. :try_end_3b} :catchall_48

    .line 141
    :cond_3b
    if-eqz v6, :cond_5d

    .line 143
    :try_start_3d
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 149
    goto :goto_42

    .line 144
    :catch_41
    move-exception v5

    .line 151
    :goto_42
    :try_start_42
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_45
    .catch Landroid/system/ErrnoException; {:try_start_42 .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_6b

    .line 156
    .end local v6    # "peerFd":Ljava/io/FileDescriptor;
    :goto_45
    goto :goto_5d

    .line 152
    .restart local v6    # "peerFd":Ljava/io/FileDescriptor;
    :catch_46
    move-exception v5

    goto :goto_45

    .line 141
    :catchall_48
    move-exception v5

    goto :goto_5e

    .line 136
    :catch_4a
    move-exception v5

    .line 137
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4b
    const-string v7, "NativeCrashListener"

    const-string v8, "Error handling connection"

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_48

    .line 141
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v6, :cond_5d

    .line 143
    :try_start_54
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    .line 149
    goto :goto_59

    .line 144
    :catch_58
    move-exception v5

    .line 151
    :goto_59
    :try_start_59
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_5c
    .catch Landroid/system/ErrnoException; {:try_start_59 .. :try_end_5c} :catch_46
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_6b

    goto :goto_45

    .line 159
    .end local v6    # "peerFd":Ljava/io/FileDescriptor;
    :cond_5d
    :goto_5d
    goto :goto_2f

    .line 141
    .restart local v6    # "peerFd":Ljava/io/FileDescriptor;
    :goto_5e
    if-eqz v6, :cond_6a

    .line 143
    :try_start_60
    invoke-static {v6, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    .line 149
    goto :goto_65

    .line 144
    :catch_64
    move-exception v0

    .line 151
    :goto_65
    :try_start_65
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_68
    .catch Landroid/system/ErrnoException; {:try_start_65 .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6b

    .line 156
    goto :goto_6a

    .line 152
    :catch_69
    move-exception v0

    .line 156
    :cond_6a
    :goto_6a
    :try_start_6a
    throw v5
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_6b

    .line 160
    .end local v2    # "serverFd":Ljava/io/FileDescriptor;
    .end local v3    # "sockAddr":Landroid/system/UnixSocketAddress;
    .end local v6    # "peerFd":Ljava/io/FileDescriptor;
    :catch_6b
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NativeCrashListener"

    const-string v3, "Unable to init native debug socket!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
