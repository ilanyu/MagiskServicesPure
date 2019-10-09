.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .registers 2
    .param p0, "controller"    # Landroid/media/IVolumeController;

    .line 7865
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 7861
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 4
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 7857
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 7822
    const-string/jumbo v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 7824
    return-void
.end method

.method public postDismiss()V
    .registers 4

    .line 7914
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7915
    return-void

    .line 7917
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 7920
    goto :goto_13

    .line 7918
    :catch_b
    move-exception v0

    .line 7919
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7921
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 7874
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7875
    return-void

    .line 7877
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 7880
    goto :goto_13

    .line 7878
    :catch_b
    move-exception v0

    .line 7879
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling displaySafeVolumeWarning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7881
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .registers 5
    .param p1, "flags"    # I

    .line 7894
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7895
    return-void

    .line 7897
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 7900
    goto :goto_13

    .line 7898
    :catch_b
    move-exception v0

    .line 7899
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterMuteChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7901
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public postVolumeChanged(II)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .line 7884
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7885
    return-void

    .line 7887
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 7890
    goto :goto_13

    .line 7888
    :catch_b
    move-exception v0

    .line 7889
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling volumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7891
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public setA11yMode(I)V
    .registers 5
    .param p1, "a11yMode"    # I

    .line 7924
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7925
    return-void

    .line 7927
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setA11yMode(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 7930
    goto :goto_13

    .line 7928
    :catch_b
    move-exception v0

    .line 7929
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setA11Mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7931
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 7817
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 7818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 7819
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 5
    .param p1, "layoutDirection"    # I

    .line 7904
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v0, :cond_5

    .line 7905
    return-void

    .line 7907
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v0, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 7910
    goto :goto_13

    .line 7908
    :catch_b
    move-exception v0

    .line 7909
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setLayoutDirection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7911
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 7853
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 7854
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .registers 11
    .param p1, "resolvedStream"    # I
    .param p2, "flags"    # I
    .param p3, "isMute"    # Z

    .line 7827
    if-eqz p3, :cond_4

    .line 7828
    const/4 v0, 0x0

    return v0

    .line 7830
    :cond_4
    const/4 v0, 0x0

    .line 7831
    .local v0, "suppress":Z
    const/4 v1, 0x3

    if-ne p1, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v1, :cond_38

    .line 7832
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 7833
    .local v1, "now":J
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_26

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez v3, :cond_26

    .line 7835
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_24

    .line 7836
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    .line 7838
    :cond_24
    const/4 v0, 0x1

    goto :goto_38

    .line 7839
    :cond_26
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_38

    .line 7840
    iget-wide v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_37

    .line 7842
    iput-wide v5, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_38

    .line 7845
    :cond_37
    const/4 v0, 0x1

    .line 7849
    .end local v1    # "now":J
    :cond_38
    :goto_38
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 7870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
