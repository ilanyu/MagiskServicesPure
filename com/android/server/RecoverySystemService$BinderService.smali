.class final Lcom/android/server/RecoverySystemService$BinderService;
.super Landroid/os/IRecoverySystem$Stub;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecoverySystemService;


# direct methods
.method private constructor <init>(Lcom/android/server/RecoverySystemService;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    invoke-direct {p0}, Landroid/os/IRecoverySystem$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/RecoverySystemService;
    .param p2, "x1"    # Lcom/android/server/RecoverySystemService$1;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;)V

    return-void
.end method

.method private checkAndWaitForUncryptService()Z
    .registers 10

    .line 204
    const/4 v0, 0x0

    move v1, v0

    .line 204
    .local v1, "retry":I
    :goto_2
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_4c

    .line 205
    const-string v2, "init.svc.uncrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "uncryptService":Ljava/lang/String;
    const-string v3, "init.svc.setup-bcb"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "setupBcbService":Ljava/lang/String;
    const-string v4, "init.svc.clear-bcb"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "clearBcbService":Ljava/lang/String;
    const-string/jumbo v5, "running"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_37

    const-string/jumbo v5, "running"

    .line 209
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    const-string/jumbo v5, "running"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_37

    :cond_35
    move v5, v0

    goto :goto_38

    :cond_37
    :goto_37
    move v5, v6

    .line 217
    .local v5, "busy":Z
    :goto_38
    if-nez v5, :cond_3b

    .line 218
    return v6

    .line 222
    :cond_3b
    const-wide/16 v6, 0x3e8

    :try_start_3d
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    .line 225
    goto :goto_49

    .line 223
    :catch_41
    move-exception v6

    .line 224
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v7, "RecoverySystemService"

    const-string v8, "Interrupted:"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v2    # "uncryptService":Ljava/lang/String;
    .end local v3    # "setupBcbService":Ljava/lang/String;
    .end local v4    # "clearBcbService":Ljava/lang/String;
    .end local v5    # "busy":Z
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    .end local v1    # "retry":I
    :cond_4c
    return v0
.end method

.method private connectService()Landroid/net/LocalSocket;
    .registers 8

    .line 232
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 233
    .local v0, "socket":Landroid/net/LocalSocket;
    const/4 v1, 0x0

    .line 237
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 237
    .local v2, "retry":I
    :goto_7
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_2c

    .line 239
    :try_start_b
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v4, "uncrypt"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_1a

    .line 241
    const/4 v1, 0x1

    .line 242
    goto :goto_2c

    .line 243
    :catch_1a
    move-exception v3

    .line 245
    .local v3, "ignored":Ljava/io/IOException;
    const-wide/16 v4, 0x3e8

    :try_start_1d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 248
    goto :goto_29

    .line 246
    :catch_21
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "RecoverySystemService"

    const-string v6, "Interrupted:"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v3    # "ignored":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 251
    .end local v2    # "retry":I
    :cond_2c
    :goto_2c
    if-nez v1, :cond_37

    .line 252
    const-string v2, "RecoverySystemService"

    const-string v3, "Timed out connecting to uncrypt socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v2, 0x0

    return-object v2

    .line 255
    :cond_37
    return-object v0
.end method

.method private setupOrClearBcb(ZLjava/lang/String;)Z
    .registers 12
    .param p1, "isSetup"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.RECOVERY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v0

    .line 262
    .local v0, "available":Z
    const/4 v1, 0x0

    if-nez v0, :cond_1c

    .line 263
    const-string v2, "RecoverySystemService"

    const-string/jumbo v3, "uncrypt service is unavailable."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v1

    .line 267
    :cond_1c
    if-eqz p1, :cond_27

    .line 268
    const-string v3, "ctl.start"

    const-string/jumbo v4, "setup-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 270
    :cond_27
    const-string v3, "ctl.start"

    const-string v4, "clear-bcb"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_2e
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v3

    .line 275
    .local v3, "socket":Landroid/net/LocalSocket;
    if-nez v3, :cond_3c

    .line 276
    const-string v2, "RecoverySystemService"

    const-string v4, "Failed to connect to uncrypt socket"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v1

    .line 280
    :cond_3c
    const/4 v4, 0x0

    .line 281
    .local v4, "dis":Ljava/io/DataInputStream;
    nop

    .line 283
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_3e
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 284
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v5

    .line 287
    if-eqz p1, :cond_65

    .line 288
    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 289
    .local v5, "cmdUtf8":[B
    array-length v6, v5

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 290
    array-length v6, v5

    invoke-virtual {v2, v5, v1, v6}, Ljava/io/DataOutputStream;->write([BII)V

    .line 291
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 295
    .end local v5    # "cmdUtf8":[B
    :cond_65
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 299
    .local v5, "status":I
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 301
    const/16 v6, 0x64

    if-ne v5, v6, :cond_a0

    .line 302
    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_83

    const-string/jumbo v8, "setup"

    goto :goto_85

    :cond_83
    const-string v8, "clear"

    :goto_85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " bcb successfully finished."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_94} :catch_c4
    .catchall {:try_start_3e .. :try_end_94} :catchall_c2

    .line 313
    .end local v5    # "status":I
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 316
    nop

    .line 318
    const/4 v1, 0x1

    return v1

    .line 306
    .restart local v5    # "status":I
    :cond_a0
    :try_start_a0
    const-string v6, "RecoverySystemService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uncrypt failed with status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_b7} :catch_c4
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_c2

    .line 307
    nop

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 307
    return v1

    .line 313
    .end local v5    # "status":I
    :catchall_c2
    move-exception v1

    goto :goto_d7

    .line 309
    :catch_c4
    move-exception v5

    .line 310
    .local v5, "e":Ljava/io/IOException;
    :try_start_c5
    const-string v6, "RecoverySystemService"

    const-string v7, "IOException when communicating with uncrypt:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_c2

    .line 311
    nop

    .line 313
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 311
    return v1

    .line 313
    .end local v5    # "e":Ljava/io/IOException;
    :goto_d7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 315
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method


# virtual methods
.method public clearBcb()Z
    .registers 4

    .line 170
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, v1, v2}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 172
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 5
    .param p1, "command"    # Ljava/lang/String;

    .line 186
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 188
    monitor-exit v0

    return-void

    .line 192
    :cond_e
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 193
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 194
    .end local v1    # "pm":Landroid/os/PowerManager;
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setupBcb(Ljava/lang/String;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .line 178
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_6
    invoke-direct {p0, v1, p1}, Lcom/android/server/RecoverySystemService$BinderService;->setupOrClearBcb(ZLjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 180
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 16
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .line 80
    # getter for: Lcom/android/server/RecoverySystemService;->sRequestLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/RecoverySystemService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_5
    iget-object v1, p0, Lcom/android/server/RecoverySystemService$BinderService;->this$0:Lcom/android/server/RecoverySystemService;

    # getter for: Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/RecoverySystemService;->access$200(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECOVERY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->checkAndWaitForUncryptService()Z

    move-result v1

    .line 84
    .local v1, "available":Z
    const/4 v2, 0x0

    if-nez v1, :cond_22

    .line 85
    const-string v3, "RecoverySystemService"

    const-string/jumbo v4, "uncrypt service is unavailable."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v0

    return v2

    .line 91
    :cond_22
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_140

    .line 93
    :try_start_27
    new-instance v4, Ljava/io/FileWriter;

    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_120
    .catchall {:try_start_27 .. :try_end_2e} :catchall_140

    .line 94
    .local v4, "uncryptFile":Ljava/io/FileWriter;
    :try_start_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_42} :catch_10f
    .catchall {:try_start_2e .. :try_end_42} :catchall_10d

    .line 95
    :try_start_42
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_120
    .catchall {:try_start_42 .. :try_end_45} :catchall_140

    .line 99
    .end local v4    # "uncryptFile":Ljava/io/FileWriter;
    nop

    .line 102
    :try_start_46
    const-string v4, "ctl.start"

    const-string/jumbo v5, "uncrypt"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/android/server/RecoverySystemService$BinderService;->connectService()Landroid/net/LocalSocket;

    move-result-object v4

    .line 106
    .local v4, "socket":Landroid/net/LocalSocket;
    if-nez v4, :cond_5d

    .line 107
    const-string v3, "RecoverySystemService"

    const-string v5, "Failed to connect to uncrypt socket"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_140

    return v2

    .line 112
    :cond_5d
    const/4 v5, 0x0

    .line 113
    .local v5, "dis":Ljava/io/DataInputStream;
    nop

    .line 115
    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_5f
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v6

    .line 116
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v6

    .line 117
    const/high16 v6, -0x80000000

    move v7, v6

    .line 119
    .local v7, "lastStatus":I
    :goto_76
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 121
    .local v8, "status":I
    if-ne v8, v7, :cond_7f

    if-eq v7, v6, :cond_7f

    .line 122
    goto :goto_76

    .line 124
    :cond_7f
    move v7, v8

    .line 126
    if-ltz v8, :cond_c7

    const/16 v9, 0x64

    if-gt v8, v9, :cond_c7

    .line 128
    const-string v10, "RecoverySystemService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uncrypt read status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_9d} :catch_ef
    .catchall {:try_start_5f .. :try_end_9d} :catchall_ed

    .line 129
    if-eqz p2, :cond_ab

    .line 131
    :try_start_9f
    invoke-interface {p2, v8}, Landroid/os/IRecoverySystemProgressListener;->onProgress(I)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a2} :catch_a3
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ef
    .catchall {:try_start_9f .. :try_end_a2} :catchall_ed

    .line 134
    goto :goto_ab

    .line 132
    :catch_a3
    move-exception v10

    .line 133
    .local v10, "ignored":Landroid/os/RemoteException;
    :try_start_a4
    const-string v11, "RecoverySystemService"

    const-string v12, "RemoteException when posting progress"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v10    # "ignored":Landroid/os/RemoteException;
    :cond_ab
    :goto_ab
    if-ne v8, v9, :cond_c6

    .line 137
    const-string v6, "RecoverySystemService"

    const-string/jumbo v9, "uncrypt successfully finished."

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b8} :catch_ef
    .catchall {:try_start_a4 .. :try_end_b8} :catchall_ed

    .line 142
    nop

    .line 158
    .end local v7    # "lastStatus":I
    .end local v8    # "status":I
    :try_start_b9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 161
    nop

    .line 163
    const/4 v2, 0x1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_140

    return v2

    .line 153
    .restart local v7    # "lastStatus":I
    :cond_c6
    goto :goto_76

    .line 146
    .restart local v8    # "status":I
    :cond_c7
    :try_start_c7
    const-string v6, "RecoverySystemService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uncrypt failed with status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_e1} :catch_ef
    .catchall {:try_start_c7 .. :try_end_e1} :catchall_ed

    .line 151
    nop

    .line 158
    :try_start_e2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_e2 .. :try_end_ec} :catchall_140

    .line 151
    return v2

    .line 158
    .end local v7    # "lastStatus":I
    .end local v8    # "status":I
    :catchall_ed
    move-exception v2

    goto :goto_103

    .line 154
    :catch_ef
    move-exception v6

    .line 155
    .local v6, "e":Ljava/io/IOException;
    :try_start_f0
    const-string v7, "RecoverySystemService"

    const-string v8, "IOException when reading status: "

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f7
    .catchall {:try_start_f0 .. :try_end_f7} :catchall_ed

    .line 156
    nop

    .line 158
    :try_start_f8
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 156
    return v2

    .line 158
    .end local v6    # "e":Ljava/io/IOException;
    :goto_103
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 159
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_10d
    .catchall {:try_start_f8 .. :try_end_10d} :catchall_140

    .line 95
    .end local v3    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "dis":Ljava/io/DataInputStream;
    .local v4, "uncryptFile":Ljava/io/FileWriter;
    :catchall_10d
    move-exception v5

    goto :goto_111

    .line 93
    :catch_10f
    move-exception v3

    :try_start_110
    throw v3
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10d

    .line 95
    :goto_111
    if-eqz v3, :cond_11c

    :try_start_113
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_116} :catch_117
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_120
    .catchall {:try_start_113 .. :try_end_116} :catchall_140

    goto :goto_11f

    :catch_117
    move-exception v6

    :try_start_118
    invoke-virtual {v3, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_11f

    :cond_11c
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    :goto_11f
    throw v5
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_120} :catch_120
    .catchall {:try_start_118 .. :try_end_120} :catchall_140

    .line 95
    .end local v4    # "uncryptFile":Ljava/io/FileWriter;
    :catch_120
    move-exception v3

    .line 96
    .local v3, "e":Ljava/io/IOException;
    :try_start_121
    const-string v4, "RecoverySystemService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when writing \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    monitor-exit v0

    return v2

    .line 164
    .end local v1    # "available":Z
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_140
    move-exception v1

    monitor-exit v0
    :try_end_142
    .catchall {:try_start_121 .. :try_end_142} :catchall_140

    throw v1
.end method
