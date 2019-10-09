.class Lcom/android/server/audio/AudioService$AsdProxy;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsdProxy"
.end annotation


# instance fields
.field private final mAsd:Landroid/media/IAudioServerStateDispatcher;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    .registers 3
    .param p2, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 8454
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8455
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    .line 8456
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 8459
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$12800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 8460
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AsdProxy;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$12800(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    invoke-interface {v2}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8461
    monitor-exit v0

    .line 8462
    return-void

    .line 8461
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method callback()Landroid/media/IAudioServerStateDispatcher;
    .registers 2

    .line 8465
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AsdProxy;->mAsd:Landroid/media/IAudioServerStateDispatcher;

    return-object v0
.end method
