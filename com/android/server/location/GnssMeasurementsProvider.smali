.class public abstract Lcom/android/server/location/GnssMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;,
        Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssMeasurementsProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableFullTracking:Z

.field private mIsCollectionStarted:Z

.field private final mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-string v0, "GnssMeasurementsProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssMeasurementsProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/GnssMeasurementsProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "aNative"    # Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 54
    const-string v0, "GnssMeasurementsProvider"

    invoke-direct {p0, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    .line 57
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 36
    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Z)Z
    .registers 2
    .param p0, "x0"    # Z

    .line 36
    invoke-static {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->native_start_measurement_collection(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 36
    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onMeasurementsAvailable$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V
    .registers 2
    .param p0, "event"    # Landroid/location/GnssMeasurementsEvent;
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-interface {p1, p0}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_start_measurement_collection(Z)Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .registers 6
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;"
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_2c

    .line 137
    const-string v1, "GnssMeasurementsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled addListener result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v0

    .line 129
    :pswitch_1b
    const/4 v0, 0x3

    .line 130
    .local v0, "status":I
    goto :goto_24

    .line 135
    .end local v0    # "status":I
    :pswitch_1d
    return-object v0

    .line 132
    :pswitch_1e
    const/4 v0, 0x2

    .line 133
    .restart local v0    # "status":I
    goto :goto_24

    .line 126
    .end local v0    # "status":I
    :pswitch_20
    const/4 v0, 0x0

    .line 127
    .restart local v0    # "status":I
    goto :goto_24

    .line 121
    .end local v0    # "status":I
    :pswitch_22
    const/4 v0, 0x1

    .line 122
    .restart local v0    # "status":I
    nop

    .line 138
    :goto_24
    nop

    .line 140
    new-instance v1, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    return-object v1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_20
        :pswitch_20
        :pswitch_1e
        :pswitch_20
        :pswitch_1d
        :pswitch_1b
    .end packed-switch
.end method

.method public isAvailableInPlatform()Z
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->isMeasurementSupported()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRegistered()Z
    .registers 2

    .line 36
    invoke-super {p0}, Lcom/android/server/location/RemoteListenerHelper;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public onCapabilitiesUpdated(Z)V
    .registers 2
    .param p1, "isGnssMeasurementsSupported"    # Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->setSupported(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    .line 109
    return-void
.end method

.method public onGpsEnabledChanged()V
    .registers 1

    .line 112
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->tryUpdateRegistrationWithService()V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    .line 114
    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 101
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$865xzodmeiSeR2xhh7cKZjiZkhE;

    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<Landroid/location/IGnssMeasurementsListener;>;"
    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$865xzodmeiSeR2xhh7cKZjiZkhE;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 104
    return-void
.end method

.method protected registerWithService()I
    .registers 7

    .line 76
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "devOptions":I
    iget-object v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "enable_gnss_raw_meas_full_tracking"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, "fullTrackingToggled":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_20

    if-ne v1, v3, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v2

    .line 82
    .local v4, "enableFullTracking":Z
    :goto_21
    iget-object v5, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v5, v4}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    move-result v5

    .line 83
    .local v5, "result":Z
    if-eqz v5, :cond_2e

    .line 84
    iput-boolean v3, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mEnableFullTracking:Z

    .line 86
    return v2

    .line 88
    :cond_2e
    const/4 v2, 0x4

    return v2
.end method

.method resumeIfStarted()V
    .registers 3

    .line 61
    sget-boolean v0, Lcom/android/server/location/GnssMeasurementsProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 62
    const-string v0, "GnssMeasurementsProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    if-eqz v0, :cond_17

    .line 65
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    iget-boolean v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mEnableFullTracking:Z

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    .line 67
    :cond_17
    return-void
.end method

.method protected unregisterFromService()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->stopMeasurementCollection()Z

    move-result v0

    .line 95
    .local v0, "stopped":Z
    if-eqz v0, :cond_b

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    .line 98
    :cond_b
    return-void
.end method
