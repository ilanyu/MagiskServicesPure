.class Lcom/android/server/location/GnssGeofenceProvider;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;,
        Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssGeofenceProvider"


# instance fields
.field private final mGeofenceEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-string v0, "GnssGeofenceProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 42
    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Landroid/os/Looper;Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "gnssGeofenceProviderNative"    # Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 46
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object p2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 19
    invoke-static {}, Lcom/android/server/location/GnssGeofenceProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(IDDDIIII)Z
    .registers 12
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I

    .line 19
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GnssGeofenceProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 19
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 19
    invoke-static {p0, p1}, Lcom/android/server/location/GnssGeofenceProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 19
    invoke-static {p0}, Lcom/android/server/location/GnssGeofenceProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$addCircularHardwareGeofence$1(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)Ljava/lang/Boolean;
    .registers 27
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move/from16 v13, p1

    .line 92
    iget-object v1, v0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    move v2, v13

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v1

    .line 95
    .local v1, "added":Z
    if-eqz v1, :cond_44

    .line 96
    new-instance v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;-><init>(Lcom/android/server/location/GnssGeofenceProvider$1;)V

    .line 97
    .local v2, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    iput v13, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    .line 98
    move-wide/from16 v3, p2

    iput-wide v3, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    .line 99
    move-wide/from16 v5, p4

    iput-wide v5, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    .line 100
    move-wide/from16 v7, p6

    iput-wide v7, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    .line 101
    move/from16 v9, p8

    iput v9, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    .line 102
    move/from16 v10, p9

    iput v10, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 103
    move/from16 v11, p10

    iput v11, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    .line 104
    move/from16 v12, p11

    iput v12, v2, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    .line 105
    iget-object v14, v0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v14, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v2    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    goto :goto_52

    .line 107
    :cond_44
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    :goto_52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public static synthetic lambda$pauseHardwareGeofence$3(Lcom/android/server/location/GnssGeofenceProvider;I)Ljava/lang/Boolean;
    .registers 5
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    move-result v0

    .line 126
    .local v0, "paused":Z
    if-eqz v0, :cond_15

    .line 127
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 128
    .local v1, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    if-eqz v1, :cond_15

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 132
    .end local v1    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$removeHardwareGeofence$2(Lcom/android/server/location/GnssGeofenceProvider;I)Ljava/lang/Boolean;
    .registers 4
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->removeGeofence(I)Z

    move-result v0

    .line 115
    .local v0, "removed":Z
    if-eqz v0, :cond_d

    .line 116
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    :cond_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$resumeHardwareGeofence$4(Lcom/android/server/location/GnssGeofenceProvider;II)Ljava/lang/Boolean;
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->resumeGeofence(II)Z

    move-result v0

    .line 140
    .local v0, "resumed":Z
    if-eqz v0, :cond_17

    .line 141
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 142
    .local v1, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    if-eqz v1, :cond_17

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    .line 144
    iput p2, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    .line 147
    .end local v1    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    :cond_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$resumeIfStarted$0(Lcom/android/server/location/GnssGeofenceProvider;)V
    .registers 15

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 58
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;

    .line 59
    .local v1, "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    iget-object v2, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v3, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    iget-wide v4, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->latitude:D

    iget-wide v6, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->longitude:D

    iget-wide v8, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->radius:D

    iget v10, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->lastTransition:I

    iget v11, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->monitorTransitions:I

    iget v12, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->notificationResponsiveness:I

    iget v13, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->addGeofence(IDDDIIII)Z

    move-result v2

    .line 64
    .local v2, "added":Z
    if-eqz v2, :cond_34

    iget-boolean v3, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->paused:Z

    if-eqz v3, :cond_34

    .line 65
    iget-object v3, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    iget v4, v1, Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;->geofenceId:I

    invoke-virtual {v3, v4}, Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;->pauseGeofence(I)Z

    .line 57
    .end local v1    # "entry":Lcom/android/server/location/GnssGeofenceProvider$GeofenceEntry;
    .end local v2    # "added":Z
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "i":I
    :cond_37
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private runOnHandlerThread(Ljava/util/concurrent/Callable;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 72
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 73
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :try_start_a
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_14} :catch_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_14} :catch_15

    return v1

    .line 76
    :catch_15
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "GnssGeofenceProvider"

    const-string v3, "Failed running callable."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .registers 26
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 91
    new-instance v13, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$n5osOgh5pgunifw_x5yjaRzShkA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;IDDDIIII)V

    move-object v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v1

    return v1
.end method

.method public isHardwareGeofenceSupported()Z
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mNative:Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;

    invoke-direct {v1, v0}, Lcom/android/server/location/-$$Lambda$nmIoImstXHuMaecjUXtG9FcFizs;-><init>(Lcom/android/server/location/GnssGeofenceProvider$GnssGeofenceProviderNative;)V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .line 124
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$ZddVrECW8W1fDH3yk5jjvded6Rs;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$ZddVrECW8W1fDH3yk5jjvded6Rs;-><init>(Lcom/android/server/location/GnssGeofenceProvider;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public removeHardwareGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .line 113
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$EVVg0uE1k4gFEkVWlkxnKMCHrGA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method public resumeHardwareGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 138
    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$X5bvoYFvm378No3aV2K7Jynm32c;-><init>(Lcom/android/server/location/GnssGeofenceProvider;II)V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssGeofenceProvider;->runOnHandlerThread(Ljava/util/concurrent/Callable;)Z

    move-result v0

    return v0
.end method

.method resumeIfStarted()V
    .registers 3

    .line 53
    sget-boolean v0, Lcom/android/server/location/GnssGeofenceProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 54
    const-string v0, "GnssGeofenceProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssGeofenceProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssGeofenceProvider$x-gy6KDILxd4rIEjriAkYQ46QwA;-><init>(Lcom/android/server/location/GnssGeofenceProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
