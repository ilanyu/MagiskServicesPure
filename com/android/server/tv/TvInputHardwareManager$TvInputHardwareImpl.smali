.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 6
    .param p2, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .line 782
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 738
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 740
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 766
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 767
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 769
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 770
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 773
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 774
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 776
    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 778
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 779
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 780
    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 783
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 784
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 785
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    if-eqz p1, :cond_60

    .line 786
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 787
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 789
    :cond_60
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 735
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 735
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/media/AudioDevicePort;

    .line 735
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 735
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 735
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/media/AudioPatch;

    .line 735
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 735
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Landroid/media/tv/TvStreamConfig;

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "x1"    # Landroid/media/tv/TvStreamConfig;

    .line 735
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 8
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;

    .line 807
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 808
    return-object v0

    .line 810
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v1, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v2

    if-eqz v2, :cond_15

    .line 812
    return-object v0

    .line 814
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 815
    .local v3, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    if-ne v4, p1, :cond_36

    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 816
    return-object v3

    .line 818
    .end local v3    # "port":Landroid/media/AudioDevicePort;
    :cond_36
    goto :goto_19

    .line 819
    :cond_37
    return-object v0
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .line 792
    .local p1, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 795
    return-void

    .line 797
    :cond_14
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    .line 798
    .local v1, "sinkDevice":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDevicePort;

    .line 799
    .local v3, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, v1

    if-eqz v4, :cond_42

    .line 800
    invoke-virtual {v3}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_42

    .line 801
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    .end local v3    # "port":Landroid/media/AudioDevicePort;
    :cond_42
    goto :goto_23

    .line 804
    :cond_43
    return-void
.end method

.method private handleAudioSinkUpdated()V
    .registers 3

    .line 1091
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1093
    monitor-exit v0

    .line 1094
    return-void

    .line 1093
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .line 1026
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1028
    monitor-exit v0

    return v2

    .line 1030
    :cond_a
    if-eqz p1, :cond_2e

    if-nez p2, :cond_f

    goto :goto_2e

    .line 1033
    :cond_f
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_18

    .line 1034
    monitor-exit v0

    return v2

    .line 1037
    :cond_18
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v1

    .line 1038
    .local v1, "result":I
    if-nez v1, :cond_2c

    const/4 v2, 0x1

    nop

    :cond_2c
    monitor-exit v0

    return v2

    .line 1031
    .end local v1    # "result":I
    :cond_2e
    :goto_2e
    monitor-exit v0

    return v2

    .line 1039
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .registers 6
    .param p1, "config"    # Landroid/media/tv/TvStreamConfig;

    .line 1043
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 1045
    monitor-exit v0

    return v2

    .line 1047
    :cond_a
    if-nez p1, :cond_e

    .line 1048
    monitor-exit v0

    return v2

    .line 1051
    :cond_e
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v1

    .line 1052
    .local v1, "result":I
    if-nez v1, :cond_22

    const/4 v2, 0x1

    nop

    :cond_22
    monitor-exit v0

    return v2

    .line 1053
    .end local v1    # "result":I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private updateAudioConfigLocked()V
    .registers 20

    .line 883
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    move-result v1

    .line 884
    .local v1, "sinkUpdated":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    move-result v2

    .line 888
    .local v2, "sourceUpdated":Z
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-eqz v3, :cond_1f6

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f6

    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-nez v3, :cond_20

    .line 889
    move/from16 v17, v1

    move/from16 v18, v2

    goto/16 :goto_1fa

    .line 896
    :cond_20
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V
    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->access$1800(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 897
    iget v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iget-object v5, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F
    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->access$1900(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v5

    mul-float/2addr v3, v5

    .line 898
    .local v3, "volume":F
    const/4 v5, 0x0

    .line 899
    .local v5, "sourceGainConfig":Landroid/media/AudioGainConfig;
    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_9c

    iget v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_9c

    .line 900
    const/4 v6, 0x0

    .line 901
    .local v6, "sourceGain":Landroid/media/AudioGain;
    iget-object v9, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v9}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    :goto_49
    if-ge v11, v10, :cond_59

    aget-object v12, v9, v11

    .line 902
    .local v12, "gain":Landroid/media/AudioGain;
    invoke-virtual {v12}, Landroid/media/AudioGain;->mode()I

    move-result v13

    and-int/2addr v13, v7

    if-eqz v13, :cond_56

    .line 903
    move-object v6, v12

    .line 904
    goto :goto_59

    .line 901
    .end local v12    # "gain":Landroid/media/AudioGain;
    :cond_56
    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    .line 908
    :cond_59
    :goto_59
    if-eqz v6, :cond_93

    .line 909
    invoke-virtual {v6}, Landroid/media/AudioGain;->maxValue()I

    move-result v9

    invoke-virtual {v6}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    sub-int/2addr v9, v10

    .line 910
    invoke-virtual {v6}, Landroid/media/AudioGain;->stepValue()I

    move-result v10

    div-int/2addr v9, v10

    .line 911
    .local v9, "steps":I
    invoke-virtual {v6}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    .line 912
    .local v10, "gainValue":I
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v3, v11

    if-gez v11, :cond_81

    .line 913
    invoke-virtual {v6}, Landroid/media/AudioGain;->stepValue()I

    move-result v11

    int-to-float v12, v9

    mul-float/2addr v12, v3

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v12, v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    goto :goto_85

    .line 915
    :cond_81
    invoke-virtual {v6}, Landroid/media/AudioGain;->maxValue()I

    move-result v10

    .line 918
    :goto_85
    new-array v11, v7, [I

    aput v10, v11, v8

    .line 919
    .local v11, "gainValues":[I
    nop

    .line 920
    invoke-virtual {v6}, Landroid/media/AudioGain;->channelMask()I

    move-result v12

    .line 919
    invoke-virtual {v6, v7, v12, v11, v8}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v5

    .line 921
    .end local v9    # "steps":I
    .end local v10    # "gainValue":I
    .end local v11    # "gainValues":[I
    goto :goto_9c

    .line 922
    :cond_93
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$900()Ljava/lang/String;

    move-result-object v9

    const-string v10, "No audio source gain with MODE_JOINT support exists."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v6    # "sourceGain":Landroid/media/AudioGain;
    :cond_9c
    :goto_9c
    iget-object v6, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v6}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v6

    .line 927
    .local v6, "sourceConfig":Landroid/media/AudioPortConfig;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v9, "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    new-array v10, v7, [Landroid/media/AudioPatch;

    iget-object v11, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    aput-object v11, v10, v8

    .line 929
    .local v10, "audioPatchArray":[Landroid/media/AudioPatch;
    if-nez v2, :cond_b4

    if-eqz v1, :cond_b2

    goto :goto_b4

    :cond_b2
    move v11, v8

    goto :goto_b5

    :cond_b4
    :goto_b4
    move v11, v7

    .line 931
    .local v11, "shouldRecreateAudioPatch":Z
    :goto_b5
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_bb
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_136

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioDevicePort;

    .line 932
    .local v13, "audioSink":Landroid/media/AudioDevicePort;
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v14

    .line 933
    .local v14, "sinkConfig":Landroid/media/AudioPortConfig;
    iget v15, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 934
    .local v15, "sinkSamplingRate":I
    iget v4, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 935
    .local v4, "sinkChannelMask":I
    iget v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 938
    .local v8, "sinkFormat":I
    if-eqz v14, :cond_e5

    .line 939
    if-nez v15, :cond_d9

    .line 940
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v15

    .line 942
    :cond_d9
    if-ne v4, v7, :cond_df

    .line 943
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v4

    .line 945
    :cond_df
    if-ne v8, v7, :cond_e5

    .line 946
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v4

    .line 950
    :cond_e5
    if-eqz v14, :cond_f9

    .line 951
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    if-ne v7, v15, :cond_f9

    .line 952
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v7

    if-ne v7, v4, :cond_f9

    .line 953
    invoke-virtual {v14}, Landroid/media/AudioPortConfig;->format()I

    move-result v7

    if-eq v7, v8, :cond_12f

    .line 955
    :cond_f9
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v7, v15}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v7

    if-nez v7, :cond_112

    .line 956
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_112

    .line 957
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v7

    const/16 v16, 0x0

    aget v15, v7, v16

    .line 959
    :cond_112
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v7

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v7, v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v7

    if-nez v7, :cond_11d

    .line 960
    const/4 v4, 0x1

    .line 962
    :cond_11d
    invoke-virtual {v13}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v7

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v7, v8}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v7

    if-nez v7, :cond_128

    .line 963
    const/4 v8, 0x1

    .line 965
    :cond_128
    const/4 v7, 0x0

    invoke-virtual {v13, v15, v4, v8, v7}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v14

    .line 967
    const/4 v7, 0x1

    .line 969
    .end local v11    # "shouldRecreateAudioPatch":Z
    .local v7, "shouldRecreateAudioPatch":Z
    move v11, v7

    .end local v7    # "shouldRecreateAudioPatch":Z
    .restart local v11    # "shouldRecreateAudioPatch":Z
    :cond_12f
    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    .end local v4    # "sinkChannelMask":I
    .end local v8    # "sinkFormat":I
    .end local v13    # "audioSink":Landroid/media/AudioDevicePort;
    .end local v14    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v15    # "sinkSamplingRate":I
    nop

    .line 931
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_bb

    .line 973
    :cond_136
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/media/AudioPortConfig;

    .line 974
    .local v4, "sinkConfig":Landroid/media/AudioPortConfig;
    if-eqz v6, :cond_149

    if-eqz v5, :cond_143

    goto :goto_149

    .line 998
    :cond_143
    move/from16 v17, v1

    move/from16 v18, v2

    goto/16 :goto_1b9

    .line 975
    :cond_149
    :goto_149
    const/4 v7, 0x0

    .line 976
    .local v7, "sourceSamplingRate":I
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v12

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v8, v12}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v8

    if-eqz v8, :cond_15f

    .line 977
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v7

    goto :goto_171

    .line 978
    :cond_15f
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_171

    .line 980
    iget-object v8, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v8

    const/4 v12, 0x0

    aget v7, v8, v12

    .line 982
    :cond_171
    :goto_171
    const/4 v8, 0x1

    .line 983
    .local v8, "sourceChannelMask":I
    iget-object v12, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v12}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_17a
    if-ge v14, v13, :cond_199

    aget v15, v12, v14

    .line 984
    .local v15, "inChannelMask":I
    move/from16 v17, v1

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v1

    .end local v1    # "sinkUpdated":Z
    .local v17, "sinkUpdated":Z
    invoke-static {v1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    .line 985
    move/from16 v18, v2

    invoke-static {v15}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v2

    .end local v2    # "sourceUpdated":Z
    .local v18, "sourceUpdated":Z
    if-ne v1, v2, :cond_192

    .line 986
    move v8, v15

    .line 987
    goto :goto_19d

    .line 983
    .end local v15    # "inChannelMask":I
    :cond_192
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_17a

    .line 990
    .end local v17    # "sinkUpdated":Z
    .end local v18    # "sourceUpdated":Z
    .restart local v1    # "sinkUpdated":Z
    .restart local v2    # "sourceUpdated":Z
    :cond_199
    move/from16 v17, v1

    move/from16 v18, v2

    .end local v1    # "sinkUpdated":Z
    .end local v2    # "sourceUpdated":Z
    .restart local v17    # "sinkUpdated":Z
    .restart local v18    # "sourceUpdated":Z
    :goto_19d
    const/4 v1, 0x1

    .line 991
    .local v1, "sourceFormat":I
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v2}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v2

    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->format()I

    move-result v12

    # invokes: Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z
    invoke-static {v2, v12}, Lcom/android/server/tv/TvInputHardwareManager;->access$2000([II)Z

    move-result v2

    if-eqz v2, :cond_1b2

    .line 992
    invoke-virtual {v4}, Landroid/media/AudioPortConfig;->format()I

    move-result v1

    .line 994
    :cond_1b2
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v2, v7, v8, v1, v5}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v6

    .line 996
    const/4 v11, 0x1

    .line 998
    .end local v1    # "sourceFormat":I
    .end local v7    # "sourceSamplingRate":I
    .end local v8    # "sourceChannelMask":I
    :goto_1b9
    if-eqz v11, :cond_1f5

    .line 999
    iput v3, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 1000
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1cb

    .line 1001
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 1003
    :cond_1cb
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/media/AudioPortConfig;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    .line 1006
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/media/AudioPortConfig;

    invoke-interface {v9, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/media/AudioPortConfig;

    .line 1003
    invoke-static {v10, v1, v7}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    .line 1007
    aget-object v1, v10, v2

    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 1008
    if-eqz v5, :cond_1f5

    .line 1009
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-static {v1, v5}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    .line 1012
    :cond_1f5
    return-void

    .line 889
    .end local v3    # "volume":F
    .end local v4    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v5    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    .end local v6    # "sourceConfig":Landroid/media/AudioPortConfig;
    .end local v9    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .end local v10    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v11    # "shouldRecreateAudioPatch":Z
    .end local v17    # "sinkUpdated":Z
    .end local v18    # "sourceUpdated":Z
    .local v1, "sinkUpdated":Z
    .restart local v2    # "sourceUpdated":Z
    :cond_1f6
    move/from16 v17, v1

    move/from16 v18, v2

    .end local v1    # "sinkUpdated":Z
    .end local v2    # "sourceUpdated":Z
    .restart local v17    # "sinkUpdated":Z
    .restart local v18    # "sourceUpdated":Z
    :goto_1fa
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_20b

    .line 890
    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 891
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 893
    :cond_20b
    return-void
.end method

.method private updateAudioSinkLocked()Z
    .registers 5

    .line 1067
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-nez v0, :cond_a

    .line 1068
    const/4 v0, 0x0

    return v0

    .line 1070
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1071
    .local v0, "previousSink":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1072
    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v1, :cond_1d

    .line 1073
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    goto :goto_2c

    .line 1075
    :cond_1d
    iget v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1076
    invoke-direct {p0, v1, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v1

    .line 1077
    .local v1, "audioSink":Landroid/media/AudioDevicePort;
    if-eqz v1, :cond_2c

    .line 1078
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    .end local v1    # "audioSink":Landroid/media/AudioDevicePort;
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3a

    .line 1084
    return v3

    .line 1086
    :cond_3a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1087
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    return v1
.end method

.method private updateAudioSourceLocked()Z
    .registers 5

    .line 1057
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1058
    return v1

    .line 1060
    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1061
    .local v0, "previousSource":Landroid/media/AudioDevicePort;
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1062
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    const/4 v3, 0x1

    if-nez v2, :cond_28

    if-eqz v0, :cond_27

    :goto_25
    move v1, v3

    goto :goto_31

    :cond_27
    goto :goto_31

    .line 1063
    :cond_28
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v2, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_25

    .line 1062
    :cond_31
    :goto_31
    return v1
.end method


# virtual methods
.method public onMediaStreamVolumeChanged()V
    .registers 3

    .line 1112
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1114
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 8
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    .line 1099
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1100
    :try_start_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 1101
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1103
    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 1104
    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1105
    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 1107
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1108
    monitor-exit v0

    .line 1109
    return-void

    .line 1108
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public release()V
    .registers 4

    .line 823
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v1, :cond_1f

    .line 826
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager;->access$1600(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v1}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 827
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 829
    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 830
    monitor-exit v0

    .line 831
    return-void

    .line 830
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setStreamVolume(F)V
    .registers 5
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_e

    .line 1020
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 1021
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 1022
    monitor-exit v0

    .line 1023
    return-void

    .line 1018
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1022
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-nez v1, :cond_70

    .line 844
    const/4 v1, 0x0

    .line 845
    .local v1, "result":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_29

    .line 847
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v5, :cond_27

    .line 848
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v5

    move v1, v5

    .line 849
    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    goto :goto_67

    .line 852
    :cond_27
    monitor-exit v0

    return v3

    .line 856
    :cond_29
    if-nez p2, :cond_2d

    .line 857
    monitor-exit v0

    return v2

    .line 860
    :cond_2d
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p2, v5}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    .line 861
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v5}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v6}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v5

    move v1, v5

    .line 862
    if-eqz v1, :cond_50

    .line 863
    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 867
    :cond_50
    if-nez v1, :cond_67

    .line 868
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;
    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->access$1700(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v4

    move v1, v4

    .line 869
    if-nez v1, :cond_67

    .line 870
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 874
    :cond_67
    :goto_67
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 875
    if-nez v1, :cond_6e

    move v2, v3

    nop

    :cond_6e
    monitor-exit v0

    return v2

    .line 841
    .end local v1    # "result":I
    :cond_70
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 876
    :catchall_78
    move-exception v1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw v1
.end method
