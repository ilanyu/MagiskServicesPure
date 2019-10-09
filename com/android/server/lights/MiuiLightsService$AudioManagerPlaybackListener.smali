.class final Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioManagerPlaybackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2

    .line 547
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/MiuiLightsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/lights/MiuiLightsService;
    .param p2, "x1"    # Lcom/android/server/lights/MiuiLightsService$1;

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;-><init>(Lcom/android/server/lights/MiuiLightsService;)V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 550
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isTurnOnMusicLight()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1100(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->isLightEnable()Z
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1200(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 552
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    goto/16 :goto_104

    .line 557
    :cond_24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 558
    .local v2, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v1, :cond_8d

    .line 559
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "processNameByPid":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/VisualizerHolder;->getInstance()Lcom/android/server/lights/VisualizerHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/lights/VisualizerHolder;->isAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 561
    return-void

    .line 563
    :cond_4e
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v1

    # setter for: Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$3302(Lcom/android/server/lights/MiuiLightsService;I)I

    .line 565
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->turnoffBatteryLight()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$1700(Lcom/android/server/lights/MiuiLightsService;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 567
    :try_start_63
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v1, Lcom/android/server/lights/LightState;

    iget-object v6, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 568
    # getter for: Lcom/android/server/lights/MiuiLightsService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v6}, Lcom/android/server/lights/MiuiLightsService;->access$3400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Lcom/android/server/lights/LightState;-><init>(Ljava/lang/String;I)V

    .line 567
    # invokes: Lcom/android/server/lights/MiuiLightsService;->addToLightCollectionLocked(Lcom/android/server/lights/LightState;)V
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$2200(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/LightState;)V

    .line 570
    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_8a

    .line 571
    invoke-static {}, Lcom/android/server/lights/VisualizerHolder;->getInstance()Lcom/android/server/lights/VisualizerHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->getDataCaptureListener()Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$3500(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/lights/VisualizerHolder;->setOnDataCaptureListener(Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;)V

    .line 572
    goto :goto_d7

    .line 570
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0

    .line 574
    .end local v3    # "processNameByPid":Ljava/lang/String;
    :cond_8d
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I
    invoke-static {v5}, Lcom/android/server/lights/MiuiLightsService;->access$3300(Lcom/android/server/lights/MiuiLightsService;)I

    move-result v5

    if-ne v3, v5, :cond_d5

    .line 575
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v3

    if-eq v3, v4, :cond_ac

    .line 576
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_ac

    .line 577
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v3

    if-nez v3, :cond_d5

    .line 579
    :cond_ac
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 580
    :try_start_b3
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v1, Lcom/android/server/lights/LightState;

    iget-object v5, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 581
    # getter for: Lcom/android/server/lights/MiuiLightsService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v5}, Lcom/android/server/lights/MiuiLightsService;->access$3400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lcom/android/server/lights/LightState;-><init>(Ljava/lang/String;I)V

    .line 580
    # invokes: Lcom/android/server/lights/MiuiLightsService;->addToLightCollectionLocked(Lcom/android/server/lights/LightState;)V
    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->access$2200(Lcom/android/server/lights/MiuiLightsService;Lcom/android/server/lights/LightState;)V

    .line 583
    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_b3 .. :try_end_cc} :catchall_d2

    .line 584
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->releaseVisualizer()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$3200(Lcom/android/server/lights/MiuiLightsService;)V

    .line 585
    goto :goto_d7

    .line 583
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0

    .line 587
    .end local v2    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_d5
    goto/16 :goto_28

    .line 591
    :cond_d7
    :goto_d7
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$3300(Lcom/android/server/lights/MiuiLightsService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_103

    .line 592
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fe

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 593
    .local v1, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I
    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService;->access$3300(Lcom/android/server/lights/MiuiLightsService;)I

    move-result v3

    if-ne v2, v3, :cond_fd

    .line 594
    return-void

    .line 596
    .end local v1    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_fd
    goto :goto_e4

    .line 598
    :cond_fe
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->releaseVisualizer()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$3200(Lcom/android/server/lights/MiuiLightsService;)V

    .line 600
    :cond_103
    return-void

    .line 554
    :cond_104
    :goto_104
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$AudioManagerPlaybackListener;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->releaseVisualizer()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$3200(Lcom/android/server/lights/MiuiLightsService;)V

    .line 555
    return-void
.end method
