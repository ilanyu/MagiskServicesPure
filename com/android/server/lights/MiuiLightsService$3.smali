.class Lcom/android/server/lights/MiuiLightsService$3;
.super Ljava/lang/Object;
.source "MiuiLightsService.java"

# interfaces
.implements Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lights/MiuiLightsService;->getDataCaptureListener()Lcom/android/server/lights/VisualizerHolder$OnDataCaptureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/MiuiLightsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/MiuiLightsService;

    .line 605
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onFrequencyCapture$0(Lcom/android/server/lights/MiuiLightsService$3;)V
    .registers 4

    .line 615
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$3700(Lcom/android/server/lights/MiuiLightsService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    .line 616
    # getter for: Lcom/android/server/lights/MiuiLightsService;->mPlayingPid:I
    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->access$3300(Lcom/android/server/lights/MiuiLightsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 617
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # invokes: Lcom/android/server/lights/MiuiLightsService;->releaseVisualizer()V
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$3200(Lcom/android/server/lights/MiuiLightsService;)V

    .line 619
    :cond_33
    return-void
.end method


# virtual methods
.method public onFrequencyCapture(I[F)V
    .registers 11
    .param p1, "frequency"    # I
    .param p2, "frequencies"    # [F

    .line 608
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$600(Lcom/android/server/lights/MiuiLightsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 609
    :try_start_7
    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mMusicLight:Lcom/android/server/lights/MiuiLightsService$LightImpl;
    invoke-static {v1}, Lcom/android/server/lights/MiuiLightsService;->access$3600(Lcom/android/server/lights/MiuiLightsService;)Lcom/android/server/lights/MiuiLightsService$LightImpl;

    move-result-object v2

    const/high16 v1, -0x1000000

    or-int v3, p1, v1

    const/4 v4, 0x1

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setLightLocked(IIIII)V

    .line 611
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_38

    .line 612
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-virtual {v1}, Lcom/android/server/lights/MiuiLightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/lights/MiuiLightsService;->notifyFrequencyCapture(Landroid/content/Context;I[F)V

    .line 613
    if-nez p1, :cond_37

    .line 614
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$3;->this$0:Lcom/android/server/lights/MiuiLightsService;

    # getter for: Lcom/android/server/lights/MiuiLightsService;->mLightHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->access$2600(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$3$H_v-eRBNnNVChQJXpmptH9EZ4Mk;

    invoke-direct {v1, p0}, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$3$H_v-eRBNnNVChQJXpmptH9EZ4Mk;-><init>(Lcom/android/server/lights/MiuiLightsService$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_37
    return-void

    .line 611
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method
