.class Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolListenerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 3235
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    .line 3236
    const-string v0, "SoundPoolListenerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3237
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 3242
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3243
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$2102(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 3245
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3246
    :try_start_13
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 3247
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v2, Lcom/android/server/audio/AudioService$SoundPoolCallback;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioService$SoundPoolCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    # setter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 3248
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2300(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;
    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2400(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 3250
    :cond_37
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3251
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_45

    .line 3252
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3253
    return-void

    .line 3251
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method
