.class public Lcom/android/server/net/DelayedDiskWrite;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/DelayedDiskWrite$Writer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDiskWriteHandler:Landroid/os/Handler;

.field private mDiskWriteHandlerThread:Landroid/os/HandlerThread;

.field private mWriteSequence:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    .line 34
    const-string v0, "DelayedDiskWrite"

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/DelayedDiskWrite;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "x3"    # Z

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite;->doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    return-void
.end method

.method private doWrite(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    .line 67
    const/4 v0, 0x0

    move-object v1, v0

    .line 69
    .local v1, "out":Ljava/io/DataOutputStream;
    if-eqz p3, :cond_19

    .line 70
    :try_start_4
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    goto :goto_19

    .line 77
    :catchall_15
    move-exception v2

    goto :goto_76

    .line 74
    :catch_17
    move-exception v2

    goto :goto_3e

    .line 73
    :cond_19
    :goto_19
    invoke-interface {p2, v1}, Lcom/android/server/net/DelayedDiskWrite$Writer;->onWriteCalled(Ljava/io/DataOutputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_17
    .catchall {:try_start_4 .. :try_end_1c} :catchall_15

    .line 77
    if-eqz v1, :cond_23

    .line 79
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 80
    goto :goto_23

    :catch_22
    move-exception v2

    .line 84
    :cond_23
    :goto_23
    monitor-enter p0

    .line 85
    :try_start_24
    iget v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v2, :cond_39

    .line 86
    iget-object v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 87
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_39
    monitor-exit p0

    .line 91
    :goto_3a
    goto :goto_72

    .line 90
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_3b

    throw v0

    .line 74
    :goto_3e
    nop

    .line 75
    .local v2, "e":Ljava/io/IOException;
    :try_start_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/DelayedDiskWrite;->loge(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_15

    .line 77
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_5a

    .line 79
    :try_start_55
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    .line 80
    goto :goto_5a

    :catch_59
    move-exception v2

    .line 84
    :cond_5a
    :goto_5a
    monitor-enter p0

    .line 85
    :try_start_5b
    iget v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v2, :cond_70

    .line 86
    iget-object v2, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 87
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_70
    monitor-exit p0

    goto :goto_3a

    .line 92
    :goto_72
    return-void

    .line 90
    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_73

    throw v0

    .line 77
    :goto_76
    if-eqz v1, :cond_7d

    .line 79
    :try_start_78
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 80
    goto :goto_7d

    :catch_7c
    move-exception v3

    .line 84
    :cond_7d
    :goto_7d
    monitor-enter p0

    .line 85
    :try_start_7e
    iget v3, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-nez v3, :cond_93

    .line 86
    iget-object v3, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 87
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_7e .. :try_end_94} :catchall_95

    throw v2

    :catchall_95
    move-exception v0

    :try_start_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 95
    const-string v0, "DelayedDiskWrite"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 42
    return-void
.end method

.method public write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p3, "open"    # Z

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 50
    monitor-enter p0

    .line 51
    :try_start_7
    iget v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mWriteSequence:I

    if-ne v0, v1, :cond_2a

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DelayedDiskWriteThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    .line 56
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_36

    .line 58
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite;->mDiskWriteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/net/DelayedDiskWrite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/net/DelayedDiskWrite$1;-><init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void

    .line 56
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0

    .line 46
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty file path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
