.class public Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv"


# instance fields
.field private final mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/RadioModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$loadModules$0(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .registers 2
    .param p0, "module"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 78
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    return-object v0
.end method

.method private static listByInterface(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p0, "fqName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 47
    .local v0, "manager":Landroid/hidl/manager/V1_0/IServiceManager;
    if-nez v0, :cond_12

    .line 48
    const-string v1, "BcRadio2Srv"

    const-string v2, "Failed to get HIDL Service Manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 52
    :cond_12
    invoke-interface {v0, p0}, Landroid/hidl/manager/V1_0/IServiceManager;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 53
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_24

    .line 54
    const-string v2, "BcRadio2Srv"

    const-string v3, "Didn\'t get interface list from HIDL Service Manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_25

    return-object v2

    .line 57
    :cond_24
    return-object v1

    .line 58
    .end local v0    # "manager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_25
    move-exception v0

    .line 59
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "BcRadio2Srv"

    const-string v2, "Failed fetching interface list"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 10
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;

    .line 112
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {v0, p2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;)V

    .line 113
    .local v0, "aggregator":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    const/4 v1, 0x0

    .line 114
    .local v1, "anySupported":Z
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 116
    .local v3, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_start_1c
    invoke-virtual {v0, v3, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    :try_end_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 117
    const/4 v1, 0x1

    .line 120
    goto :goto_29

    .line 118
    :catch_21
    move-exception v4

    .line 119
    .local v4, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v5, "BcRadio2Srv"

    const-string v6, "Announcements not supported for this module"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v3    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local v4    # "ex":Ljava/lang/UnsupportedOperationException;
    :goto_29
    goto :goto_10

    .line 122
    :cond_2a
    if-nez v1, :cond_33

    .line 123
    const-string v2, "BcRadio2Srv"

    const-string v3, "There are no HAL modules that support announcements"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_33
    return-object v0
.end method

.method public hasAnyModules()Z
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasModule(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 83
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadModules(I)Ljava/util/Collection;
    .registers 8
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 65
    const-string v0, "BcRadio2Srv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadModules("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->listByInterface(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    .local v1, "serviceName":Ljava/lang/String;
    const-string v2, "BcRadio2Srv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->tryLoadingModule(ILjava/lang/String;)Lcom/android/server/broadcastradio/hal2/RadioModule;

    move-result-object v2

    .line 71
    .local v2, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    if-eqz v2, :cond_7e

    .line 72
    const-string v3, "BcRadio2Srv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loaded broadcast radio module "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (HAL 2.0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    add-int/lit8 v4, p1, 0x1

    .line 74
    .local v4, "idx":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 74
    .end local p1    # "idx":I
    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v1    # "serviceName":Ljava/lang/String;
    .end local v2    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    move p1, v4

    .line 76
    .end local v4    # "idx":I
    .restart local p1    # "idx":I
    :cond_7e
    goto :goto_26

    .line 78
    :cond_7f
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$Km0YQiJEv8afsLUzB5d2Fcgtk1g;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$Km0YQiJEv8afsLUzB5d2Fcgtk1g;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 79
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 78
    return-object v0
.end method

.method public openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 8
    .param p1, "moduleId"    # I
    .param p2, "legacyConfig"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    if-eqz p3, :cond_25

    .line 98
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 99
    .local v0, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    if-eqz v0, :cond_1d

    .line 103
    invoke-virtual {v0, p4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;

    move-result-object v1

    .line 104
    .local v1, "session":Lcom/android/server/broadcastradio/hal2/TunerSession;
    if-eqz p2, :cond_1c

    .line 105
    invoke-virtual {v1, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 107
    :cond_1c
    return-object v1

    .line 100
    .end local v1    # "session":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid module ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-audio sessions not supported with HAL 2.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
