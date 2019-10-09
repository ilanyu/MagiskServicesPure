.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 741
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .registers 2
    .param p1, "patchList"    # [Landroid/media/AudioPatch;

    .line 752
    return-void
.end method

.method public onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .registers 4
    .param p1, "portList"    # [Landroid/media/AudioPort;

    .line 744
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1100(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 745
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # invokes: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1200(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    .line 746
    monitor-exit v0

    .line 747
    return-void

    .line 746
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onServiceDied()V
    .registers 4

    .line 756
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1100(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 757
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1302(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    .line 758
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1400(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 759
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 760
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 761
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    # setter for: Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;
    invoke-static {v1, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->access$1502(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;

    .line 763
    :cond_33
    monitor-exit v0

    .line 764
    return-void

    .line 763
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1
.end method
