.class Lcom/android/server/audio/AudioService$AudioSystemThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioSystemThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 5495
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    .line 5496
    const-string p1, "AudioService"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5497
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 5502
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 5504
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    monitor-enter v0

    .line 5505
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v2, Lcom/android/server/audio/AudioService$AudioHandler;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioService$AudioHandler;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    # setter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5508
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioSystemThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 5509
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 5512
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 5513
    return-void

    .line 5509
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
