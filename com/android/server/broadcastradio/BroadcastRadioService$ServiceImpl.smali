.class Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/BroadcastRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;


# direct methods
.method private constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/broadcastradio/BroadcastRadioService;
    .param p2, "x1"    # Lcom/android/server/broadcastradio/BroadcastRadioService$1;

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;)V

    return-void
.end method

.method private enforcePolicyAccess()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_BROADCAST_RADIO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 79
    return-void

    .line 77
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "ACCESS_BROADCAST_RADIO permission not granted"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 6
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    .line 121
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 122
    :try_start_10
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasAnyModules()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 123
    const-string v1, "BcRadioSrv"

    const-string v2, "There are no HAL 2.x modules registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {v1, p2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;)V

    monitor-exit v0

    return-object v1

    .line 127
    :cond_2a
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 128
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public listModules()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    .line 84
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 85
    :try_start_a
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 87
    :cond_1a
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    iget-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
    invoke-static {v2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$202(Lcom/android/server/broadcastradio/BroadcastRadioService;Ljava/util/List;)Ljava/util/List;

    .line 88
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    invoke-static {v2}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/android/server/broadcastradio/BroadcastRadioService;->getNextId(Ljava/util/List;)I
    invoke-static {v3}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$400(Ljava/util/List;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->loadModules(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mModules:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 91
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 7
    .param p1, "moduleId"    # I
    .param p2, "bandConfig"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->enforcePolicyAccess()V

    .line 99
    if-eqz p4, :cond_33

    .line 102
    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_c
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasModule(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 104
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$500(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 106
    :cond_24
    iget-object v1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;->this$0:Lcom/android/server/broadcastradio/BroadcastRadioService;

    # getter for: Lcom/android/server/broadcastradio/BroadcastRadioService;->mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
    invoke-static {v1}, Lcom/android/server/broadcastradio/BroadcastRadioService;->access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 108
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v1

    .line 100
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
