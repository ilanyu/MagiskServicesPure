.class public final Lcom/android/server/am/ActiveServices;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActiveServices$ServiceDumper;,
        Lcom/android/server/am/ActiveServices$ServiceRestarter;,
        Lcom/android/server/am/ActiveServices$ServiceLookupResult;,
        Lcom/android/server/am/ActiveServices$ServiceMap;,
        Lcom/android/server/am/ActiveServices$ActiveForegroundApp;,
        Lcom/android/server/am/ActiveServices$ForcedStandbyListener;
    }
.end annotation


# static fields
.field private static final DEBUG_DELAYED_SERVICE:Z = false

.field private static final DEBUG_DELAYED_STARTS:Z = false

.field static final LAST_ANR_LIFETIME_DURATION_MSECS:I = 0x6ddd00

.field private static final LOG_SERVICE_START_STOP:Z = false

.field static final SERVICE_BACKGROUND_TIMEOUT:I = 0x30d40

.field private static final SERVICE_RESCHEDULE:Z

.field static final SERVICE_START_FOREGROUND_TIMEOUT:I = 0x2710

.field static final SERVICE_TIMEOUT:I = 0x4e20

.field private static final SHOW_DUNGEON_NOTIFICATION:Z = false

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_MU:Ljava/lang/String; = "ActivityManager_MU"

.field private static final TAG_SERVICE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SERVICE_EXECUTING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mDestroyingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastAnrDump:Ljava/lang/String;

.field final mLastAnrDumpClearer:Ljava/lang/Runnable;

.field final mMaxStartingBackground:I

.field final mPendingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mRestartingServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field mScreenOn:Z

.field final mServiceConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActiveServices$ServiceMap;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpCollectionResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 134
    const-string/jumbo v0, "ro.vendor.qti.am.reschedule_service"

    .line 135
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    const-string/jumbo v0, "persist.sys.miui_optimization"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    move v1, v2

    nop

    :cond_16
    sput-boolean v1, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 177
    new-instance v1, Lcom/android/server/am/ActiveServices$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$1;-><init>(Lcom/android/server/am/ActiveServices;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    .line 360
    iput-object p1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 361
    const/4 v1, 0x0

    .line 363
    .local v1, "maxBg":I
    :try_start_36
    const-string/jumbo v2, "ro.config.max_starting_bg"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_43} :catch_45

    move v1, v2

    .line 365
    goto :goto_46

    .line 364
    :catch_45
    move-exception v2

    .line 366
    :goto_46
    if-lez v1, :cond_4a

    .line 367
    move v0, v1

    goto :goto_53

    :cond_4a
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    if-eqz v2, :cond_51

    goto :goto_53

    :cond_51
    const/16 v0, 0x8

    :goto_53
    iput v0, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    .line 368
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # I

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/Notification;
    .param p4, "x4"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices;
    .param p1, "x1"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appRestrictedAnyInBackground(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 403
    .local v0, "mode":I
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private final bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .line 2771
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2772
    return-void

    .line 2776
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2777
    return-void

    .line 2780
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2781
    return-void
.end method

.method private final bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2789
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2789
    .local v0, "conni":I
    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_77

    .line 2790
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2791
    .local v4, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    nop

    .line 2791
    .local v3, "i":I
    :goto_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_74

    .line 2792
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 2795
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iput-boolean v1, v5, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    .line 2797
    :try_start_23
    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v6, v7, v2, v1}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 2802
    goto :goto_71

    .line 2798
    :catch_2b
    move-exception v6

    .line 2799
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure disconnecting service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2800
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v9}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget-object v9, v9, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2799
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2791
    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2789
    .end local v3    # "i":I
    .end local v4    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_74
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2807
    .end local v0    # "conni":I
    :cond_77
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_d3

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_d3

    .line 2808
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 2808
    .local v0, "i":I
    :goto_88
    if-ltz v0, :cond_d3

    .line 2809
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IntentBindRecord;

    .line 2812
    .local v4, "ibr":Lcom/android/server/am/IntentBindRecord;
    iget-boolean v5, v4, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v5, :cond_d0

    .line 2814
    :try_start_96
    const-string v5, "bring down unbind"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2815
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 2816
    iput-boolean v3, v4, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 2817
    iput-boolean v3, v4, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2818
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, v4, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2819
    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2818
    invoke-interface {v5, p1, v6}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b3} :catch_b4

    .line 2824
    goto :goto_d0

    .line 2820
    :catch_b4
    move-exception v5

    .line 2821
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when unbinding service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2823
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2808
    .end local v4    # "ibr":Lcom/android/server/am/IntentBindRecord;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_d0
    :goto_d0
    add-int/lit8 v0, v0, -0x1

    goto :goto_88

    .line 2831
    .end local v0    # "i":I
    :cond_d3
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    const/16 v4, 0x4c

    if-eqz v0, :cond_138

    .line 2832
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bringing down service while still waiting for start foreground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 2835
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 2836
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-static {v5}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4, v6, v7}, Lcom/android/server/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 2838
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x42

    invoke-virtual {v0, v5, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2840
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_138

    .line 2841
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x45

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2843
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2844
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "servicerecord"

    .line 2845
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2844
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2846
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2855
    .end local v0    # "msg":Landroid/os/Message;
    :cond_138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/am/ServiceRecord;->destroyTime:J

    .line 2861
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 2862
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v5, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 2866
    .local v5, "found":Lcom/android/server/am/ServiceRecord;
    if-eqz v5, :cond_179

    if-ne v5, p1, :cond_153

    goto :goto_179

    .line 2869
    :cond_153
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bringing down "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but actually running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2873
    :cond_179
    :goto_179
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2874
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 2875
    invoke-direct {p0, p1, v3, v1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 2878
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    .line 2878
    .local v6, "i":I
    :goto_18c
    if-ltz v6, :cond_19e

    .line 2879
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_19b

    .line 2880
    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2878
    :cond_19b
    add-int/lit8 v6, v6, -0x1

    goto :goto_18c

    .line 2885
    .end local v6    # "i":I
    :cond_19e
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2886
    iget-boolean v6, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v6, :cond_1c9

    .line 2887
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 2888
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    .line 2889
    invoke-static {v7}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 2888
    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/android/server/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 2891
    const/16 v4, 0x3c

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v4, v6, v7, v8}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 2895
    :cond_1c9
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 2896
    iput v3, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 2897
    iput-object v2, p1, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 2900
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->clearDeliveredStartsLocked()V

    .line 2901
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2903
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_23e

    .line 2904
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4

    .line 2905
    :try_start_1e2
    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 2906
    monitor-exit v4
    :try_end_1e8
    .catchall {:try_start_1e2 .. :try_end_1e8} :catchall_23b

    .line 2907
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2908
    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v4, :cond_1f8

    .line 2909
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2911
    :cond_1f8
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_23e

    .line 2912
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2914
    :try_start_203
    const-string v4, "destroy"

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2915
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2916
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    .line 2917
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 2918
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_21d} :catch_21e

    .line 2923
    goto :goto_23e

    .line 2919
    :catch_21e
    move-exception v1

    .line 2920
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when destroying service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2922
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2922
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_23e

    .line 2906
    :catchall_23b
    move-exception v1

    :try_start_23c
    monitor-exit v4
    :try_end_23d
    .catchall {:try_start_23c .. :try_end_23d} :catchall_23b

    throw v1

    .line 2933
    :cond_23e
    :goto_23e
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_24b

    .line 2934
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 2937
    :cond_24b
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    instance-of v1, v1, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    if-eqz v1, :cond_258

    .line 2938
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 2941
    :cond_258
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    .line 2942
    .local v1, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2943
    .local v6, "now":J
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v4, :cond_27d

    .line 2944
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v3, v1, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 2945
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, v3, v1, v6, v7}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 2946
    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-nez v4, :cond_27d

    .line 2947
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v4, p1, v3}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 2948
    iput-object v2, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 2952
    :cond_27d
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2953
    return-void
.end method

.method private bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intentFlags"    # I
    .param p3, "execInFg"    # Z
    .param p4, "whileRestarting"    # Z
    .param p5, "permissionsReviewRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 2408
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_16

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_16

    .line 2409
    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2410
    return-object v4

    .line 2413
    :cond_16
    if-nez p4, :cond_21

    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2415
    return-object v4

    .line 2424
    :cond_21
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2425
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2429
    :cond_2c
    iget-boolean v0, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_3d

    .line 2431
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2432
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 2437
    :cond_3d
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v6, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v6}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    if-nez v0, :cond_90

    .line 2438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch app "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2441
    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is stopped"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2442
    .local v0, "msg":Ljava/lang/String;
    const-string v4, "ActivityManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2444
    return-object v0

    .line 2449
    .end local v0    # "msg":Ljava/lang/String;
    :cond_90
    :try_start_90
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-interface {v0, v6, v5, v7}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_9b} :catch_be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_9b} :catch_9c

    goto :goto_bf

    .line 2452
    :catch_9c
    move-exception v0

    .line 2453
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed trying to unstop package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_c0

    .line 2451
    :catch_be
    move-exception v0

    .line 2455
    :goto_bf
    nop

    .line 2457
    :goto_c0
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_ca

    const/4 v0, 0x1

    goto :goto_cb

    :cond_ca
    move v0, v5

    :goto_cb
    move/from16 v17, v0

    .line 2458
    .local v17, "isolated":Z
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 2459
    .local v14, "procName":Ljava/lang/String;
    const-string/jumbo v6, "service"

    .line 2462
    .local v6, "hostingType":Ljava/lang/String;
    if-nez v17, :cond_117

    .line 2463
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v14, v7, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    .line 2466
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v7, :cond_113

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_113

    .line 2468
    :try_start_e4
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v7, v0, v8, v9, v10}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2469
    invoke-direct {v1, v2, v7, v3}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_f6
    .catch Landroid/os/TransactionTooLargeException; {:try_start_e4 .. :try_end_f6} :catch_111
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_f6} :catch_f7

    .line 2470
    return-object v4

    .line 2473
    :catch_f7
    move-exception v0

    .line 2474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception when starting service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2475
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_113

    .line 2471
    :catch_111
    move-exception v0

    .line 2472
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    throw v0

    .line 2496
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    :cond_113
    :goto_113
    move-object/from16 v18, v6

    .line 2496
    .end local v6    # "hostingType":Ljava/lang/String;
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    .local v18, "hostingType":Ljava/lang/String;
    :goto_115
    move-object v0, v7

    goto :goto_133

    .line 2487
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "hostingType":Ljava/lang/String;
    .restart local v6    # "hostingType":Ljava/lang/String;
    :cond_117
    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 2488
    .restart local v7    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {}, Landroid/webkit/WebViewZygote;->isMultiprocessEnabled()Z

    move-result v0

    if-eqz v0, :cond_113

    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2489
    invoke-static {}, Landroid/webkit/WebViewZygote;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 2490
    const-string/jumbo v0, "webview_service"

    .line 2496
    .end local v6    # "hostingType":Ljava/lang/String;
    .local v0, "hostingType":Ljava/lang/String;
    move-object/from16 v18, v0

    goto :goto_115

    .line 2496
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "hostingType":Ljava/lang/String;
    :goto_133
    if-nez v0, :cond_196

    if-nez p5, :cond_196

    .line 2498
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x1

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    const/4 v13, 0x0

    const/4 v15, 0x0

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->callerPackage:Ljava/lang/String;

    move-object v7, v14

    move/from16 v10, p2

    move-object/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v19, v14

    move/from16 v14, v17

    .end local v14    # "procName":Ljava/lang/String;
    .local v19, "procName":Ljava/lang/String;
    invoke-virtual/range {v6 .. v16}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    move-object v0, v6

    if-nez v6, :cond_191

    .line 2503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    .line 2506
    invoke-virtual {v5}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": process is bad"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2507
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2509
    return-object v4

    .line 2511
    .end local v4    # "msg":Ljava/lang/String;
    :cond_191
    if-eqz v17, :cond_198

    .line 2512
    iput-object v0, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_198

    .line 2516
    .end local v19    # "procName":Ljava/lang/String;
    .restart local v14    # "procName":Ljava/lang/String;
    :cond_196
    move-object/from16 v19, v14

    .line 2516
    .end local v14    # "procName":Ljava/lang/String;
    .restart local v19    # "procName":Ljava/lang/String;
    :cond_198
    :goto_198
    iget-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v6, :cond_1a9

    .line 2521
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v8, 0x2710

    const-string v10, "fg-service-launch"

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistUidLocked(IJLjava/lang/String;)V

    .line 2525
    :cond_1a9
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b6

    .line 2526
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2529
    :cond_1b6
    iget-boolean v6, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v6, :cond_1c3

    .line 2531
    iput-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 2532
    iget-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v5, :cond_1c3

    .line 2535
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2539
    :cond_1c3
    return-object v4
.end method

.method private final bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "fg"    # Z
    .param p3, "why"    # Ljava/lang/String;

    .line 2083
    const/4 v0, 0x1

    .line 2084
    .local v0, "timeoutNeeded":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_3e

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3e

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2085
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_3e

    .line 2087
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too early to start/bind service in system_server: Phase="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mBootPhase:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2087
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    const/4 v0, 0x0

    .line 2092
    :cond_3e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2093
    .local v1, "now":J
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v4, 0x1

    if-nez v3, :cond_7e

    .line 2094
    iput-boolean p2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2095
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v3

    .line 2096
    .local v3, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v3, :cond_5a

    .line 2097
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 2099
    :cond_5a
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_7d

    .line 2100
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2101
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    or-int/2addr v6, p2

    iput-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2102
    if-eqz v0, :cond_7d

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ne v5, v4, :cond_7d

    .line 2103
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2106
    .end local v3    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    :cond_7d
    goto :goto_95

    :cond_7e
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_95

    if-eqz p2, :cond_95

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-nez v3, :cond_95

    .line 2107
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 2108
    if-eqz v0, :cond_95

    .line 2109
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2112
    :cond_95
    :goto_95
    iget-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    or-int/2addr v3, p2

    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 2113
    iget v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 2114
    iput-wide v1, p1, Lcom/android/server/am/ServiceRecord;->executingStart:J

    .line 2115
    return-void
.end method

.method private cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1373
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eqz v0, :cond_37

    .line 1378
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 1379
    .local v0, "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_34

    .line 1380
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_34

    .line 1381
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1382
    .local v2, "other":Lcom/android/server/am/ServiceRecord;
    if-eq v2, p1, :cond_31

    iget v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-ne v3, v4, :cond_31

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1383
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1385
    return-void

    .line 1380
    .end local v2    # "other":Lcom/android/server/am/ServiceRecord;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1389
    .end local v1    # "i":I
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->cancelNotification()V

    .line 1391
    .end local v0    # "sm":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_37
    return-void
.end method

.method private clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2384
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_39

    .line 2387
    const/4 v0, 0x0

    .line 2388
    .local v0, "stillTracking":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_22

    .line 2389
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    if-ne v2, v3, :cond_1f

    .line 2390
    const/4 v0, 0x1

    .line 2391
    goto :goto_22

    .line 2388
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2394
    .end local v1    # "i":I
    :cond_22
    :goto_22
    if-nez v0, :cond_39

    .line 2395
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 2396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2395
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setRestarting(ZIJ)V

    .line 2397
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->restartTracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 2400
    .end local v0    # "stillTracking":Z
    :cond_39
    return-void
.end method

.method private collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "evenPersistent"    # Z
    .param p4, "doit"    # Z
    .param p5, "killProcess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;)Z"
        }
    .end annotation

    .line 3271
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p6, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v0, 0x0

    .line 3272
    .local v0, "didSomething":Z
    invoke-virtual {p6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_8a

    .line 3273
    invoke-virtual {p6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 3274
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    if-eqz p1, :cond_2a

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 3275
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz p2, :cond_2a

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 3277
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v4, v2

    .line 3278
    .local v4, "sameComponent":Z
    :goto_2b
    if-eqz v4, :cond_86

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_39

    if-nez p3, :cond_39

    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_86

    .line 3280
    :cond_39
    if-nez p4, :cond_3c

    .line 3281
    return v2

    .line 3283
    :cond_3c
    const/4 v0, 0x1

    .line 3284
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Force stopping service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_71

    .line 3286
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean p5, v5, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 3287
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v5, :cond_71

    .line 3288
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3289
    iget-boolean v5, v3, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v5, :cond_71

    .line 3290
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v5}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3294
    :cond_71
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3295
    iput-object v5, v3, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3296
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-nez v5, :cond_81

    .line 3297
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    .line 3299
    :cond_81
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3272
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "sameComponent":Z
    :cond_86
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_7

    .line 3302
    .end local v1    # "i":I
    :cond_8a
    return v0
.end method

.method private decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 1105
    iget-object v0, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1106
    .local v0, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-eqz v0, :cond_43

    .line 1107
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1108
    iget v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    if-gtz v1, :cond_43

    .line 1109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1111
    iget-wide v3, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1113
    iget-object v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iput-boolean v2, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1115
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_43

    .line 1116
    :cond_33
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gez v1, :cond_43

    .line 1117
    iget-wide v1, v0, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1121
    :cond_43
    :goto_43
    return-void
.end method

.method private dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p5, "args"    # [Ljava/lang/String;
    .param p6, "dumpAll"    # Z

    .line 4331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4332
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4333
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "SERVICE "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4334
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4335
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4336
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4337
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_45

    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_4a

    .line 4338
    :cond_45
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4339
    :goto_4a
    if-eqz p6, :cond_4f

    .line 4340
    invoke-virtual {p4, p3, v0}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4342
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_14 .. :try_end_50} :catchall_c8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4343
    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c7

    iget-object v1, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_c7

    .line 4344
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Client:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4345
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 4347
    :try_start_68
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6d} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6d} :catch_98

    .line 4349
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_6d
    iget-object v2, p4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-interface {v2, v3, p4, p5}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 4350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/TransferPipe;->setBufferPrefix(Ljava/lang/String;)V

    .line 4351
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_8f
    .catchall {:try_start_6d .. :try_end_8f} :catchall_93

    .line 4353
    :try_start_8f
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 4354
    goto :goto_c6

    .line 4353
    :catchall_93
    move-exception v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v2
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_98} :catch_ae
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_98} :catch_98

    .line 4357
    .end local v1    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_98
    move-exception v1

    .line 4358
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Got a RemoteException while dumping the service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_c7

    .line 4355
    :catch_ae
    move-exception v1

    .line 4356
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Failure while dumping the service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4359
    .end local v1    # "e":Ljava/io/IOException;
    :goto_c6
    nop

    .line 4361
    :cond_c7
    :goto_c7
    return-void

    .line 4342
    :catchall_c8
    move-exception v2

    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private final findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .line 1878
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 1879
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    if-ne v0, p2, :cond_8

    move-object v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1
.end method

.method private getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;
    .registers 5
    .param p1, "callingUser"    # I

    .line 388
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 389
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v0, :cond_1d

    .line 390
    new-instance v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/am/ActiveServices$ServiceMap;-><init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V

    move-object v0, v1

    .line 391
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    :cond_1d
    return-object v0
.end method

.method private final isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "knowConn"    # Z
    .param p3, "hasConn"    # Z

    .line 2751
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 2752
    return v1

    .line 2756
    :cond_6
    if-nez p2, :cond_c

    .line 2757
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result p3

    .line 2759
    :cond_c
    if-eqz p3, :cond_f

    .line 2760
    return v1

    .line 2763
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private final realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 2554
    move/from16 v11, p3

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_12b

    .line 2560
    iput-object v10, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v2, v9, Lcom/android/server/am/ServiceRecord;->restartTime:J

    .line 2563
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 2564
    .local v12, "newService":Z
    const-string v0, "create"

    invoke-direct {v1, v9, v11, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2565
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v13, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2566
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v13}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2567
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2569
    move v3, v13

    .line 2578
    .local v3, "created":Z
    :try_start_33
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    monitor-enter v4
    :try_end_3a
    .catch Landroid/os/DeadObjectException; {:try_start_33 .. :try_end_3a} :catch_e0
    .catchall {:try_start_33 .. :try_end_3a} :catchall_de

    .line 2579
    :try_start_3a
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked()V

    .line 2580
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_db

    .line 2581
    :try_start_40
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v0, v4, v14}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2583
    const/16 v0, 0x9

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2584
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2585
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->repProcState:I

    .line 2584
    invoke-interface {v0, v9, v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 2587
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V
    :try_end_65
    .catch Landroid/os/DeadObjectException; {:try_start_40 .. :try_end_65} :catch_e0
    .catchall {:try_start_40 .. :try_end_65} :catchall_de

    .line 2588
    const/4 v0, 0x1

    .line 2599
    .end local v3    # "created":Z
    .local v0, "created":Z
    if-nez v0, :cond_82

    .line 2601
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 2602
    .local v3, "inDestroying":Z
    invoke-direct {v1, v9, v3, v3}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2605
    if-eqz v12, :cond_7c

    .line 2606
    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2607
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2608
    sget-boolean v4, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 2616
    :cond_7c
    if-nez v3, :cond_81

    .line 2617
    invoke-direct {v1, v9, v13}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 2619
    .end local v3    # "inDestroying":Z
    :cond_81
    nop

    .line 2622
    :cond_82
    iget-boolean v3, v9, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v3, :cond_88

    .line 2623
    iput-boolean v14, v10, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 2626
    :cond_88
    invoke-direct {v1, v9, v11}, Lcom/android/server/am/ActiveServices;->requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V

    .line 2628
    invoke-direct {v1, v10, v2, v14}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 2633
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_b6

    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    if-eqz v2, :cond_b6

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b6

    .line 2634
    iget-object v15, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v2, v8

    move-object v3, v9

    move-object v13, v8

    move/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;I)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    :cond_b6
    invoke-direct {v1, v9, v11, v14}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2640
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_cc

    .line 2642
    iget v2, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2643
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    goto :goto_cd

    .line 2646
    :cond_cc
    const/4 v2, 0x0

    :goto_cd
    iget-boolean v3, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    if-eqz v3, :cond_da

    .line 2648
    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 2649
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_da

    .line 2652
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2655
    :cond_da
    return-void

    .line 2580
    .end local v0    # "created":Z
    .local v3, "created":Z
    :catchall_db
    move-exception v0

    :try_start_dc
    monitor-exit v4
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw v0
    :try_end_de
    .catch Landroid/os/DeadObjectException; {:try_start_dd .. :try_end_de} :catch_e0
    .catchall {:try_start_dd .. :try_end_de} :catchall_de

    .line 2599
    :catchall_de
    move-exception v0

    goto :goto_10e

    .line 2589
    :catch_e0
    move-exception v0

    .line 2590
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_e1
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application dead when creating service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 2593
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2596
    :cond_108
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2597
    throw v0
    :try_end_10e
    .catchall {:try_start_e1 .. :try_end_10e} :catchall_de

    .line 2599
    .end local v0    # "e":Landroid/os/DeadObjectException;
    :goto_10e
    if-nez v3, :cond_12a

    .line 2601
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 2602
    .local v4, "inDestroying":Z
    invoke-direct {v1, v9, v4, v4}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2605
    if-eqz v12, :cond_124

    .line 2606
    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2607
    iput-object v2, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2608
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 2616
    :cond_124
    if-nez v4, :cond_12a

    .line 2617
    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 2619
    .end local v4    # "inDestroying":Z
    :cond_12a
    throw v0

    .line 2555
    .end local v3    # "created":Z
    .end local v12    # "newService":Z
    :cond_12b
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method private final requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "i"    # Lcom/android/server/am/IntentBindRecord;
    .param p3, "execInFg"    # Z
    .param p4, "rebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2119
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_c

    goto :goto_58

    .line 2125
    :cond_c
    iget-boolean v0, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    if-eqz p4, :cond_57

    :cond_13
    iget-object v0, p2, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 2127
    :try_start_1b
    const-string v0, "bind"

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2128
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2129
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, p2, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-interface {v0, p1, v3, p4, v4}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 2131
    if-nez p4, :cond_3c

    .line 2132
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 2134
    :cond_3c
    iput-boolean v2, p2, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 2135
    iput-boolean v1, p2, Lcom/android/server/am/IntentBindRecord;->doRebind:Z
    :try_end_40
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1b .. :try_end_40} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_40} :catch_41

    .line 2148
    goto :goto_57

    .line 2142
    :catch_41
    move-exception v0

    .line 2145
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 2146
    .local v2, "inDestroying":Z
    invoke-direct {p0, p1, v2, v2}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2147
    return v1

    .line 2136
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "inDestroying":Z
    :catch_4c
    move-exception v0

    .line 2139
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 2140
    .local v1, "inDestroying":Z
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2141
    throw v0

    .line 2150
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v1    # "inDestroying":Z
    :cond_57
    :goto_57
    return v2

    .line 2121
    :cond_58
    :goto_58
    return v1
.end method

.method private final requestServiceBindingsLocked(Lcom/android/server/am/ServiceRecord;Z)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2544
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 2545
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/IntentBindRecord;

    .line 2546
    .local v1, "ibr":Lcom/android/server/am/IntentBindRecord;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2547
    goto :goto_1d

    .line 2544
    .end local v1    # "ibr":Lcom/android/server/am/IntentBindRecord;
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2550
    .end local v0    # "i":I
    :cond_1d
    :goto_1d
    return-void
.end method

.method private requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "service"    # Landroid/content/Intent;
    .param p5, "callerFg"    # Z
    .param p6, "userId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 644
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_99

    .line 648
    const/4 v3, 0x0

    if-nez p5, :cond_43

    .line 649
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Starting a service in package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " requires a permissions review"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return v3

    .line 654
    :cond_43
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v15, v4, [Landroid/content/Intent;

    aput-object v2, v15, v3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 657
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    const/high16 v17, 0x54000000

    const/16 v18, 0x0

    .line 654
    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v16, v4

    invoke-virtual/range {v7 .. v18}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v4

    .line 661
    .local v4, "target":Landroid/content/IIntentSender;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10800000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 664
    const-string v7, "android.intent.extra.PACKAGE_NAME"

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v7, "android.intent.extra.INTENT"

    new-instance v8, Landroid/content/IntentSender;

    invoke-direct {v8, v4}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    iget-object v7, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v8, Lcom/android/server/am/ActiveServices$2;

    move/from16 v9, p6

    invoke-direct {v8, v0, v6, v9}, Lcom/android/server/am/ActiveServices$2;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 679
    return v3

    .line 682
    .end local v4    # "target":Landroid/content/IIntentSender;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_99
    move/from16 v9, p6

    return v4
.end method

.method private requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V
    .registers 9
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "timeElapsed"    # J

    .line 1094
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1095
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1a

    .line 1096
    nop

    .line 1097
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1096
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_20

    .line 1099
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1100
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessage(Landroid/os/Message;)Z

    .line 1102
    :goto_20
    return-void
.end method

.method private retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .registers 42
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "createIfNeeded"    # Z
    .param p8, "callingFromFg"    # Z
    .param p9, "isBindExternal"    # Z
    .param p10, "allowInstant"    # Z

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v8, p4

    move/from16 v7, p5

    .line 1910
    const/4 v0, 0x0

    .line 1914
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v17, "service"

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    move v12, v8

    move v13, v7

    move/from16 v14, p6

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1917
    .end local p6    # "userId":I
    .local v11, "userId":I
    invoke-direct {v1, v11}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v12

    .line 1918
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 1919
    .local v13, "comp":Landroid/content/ComponentName;
    if-eqz v13, :cond_32

    .line 1920
    iget-object v2, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 1923
    :cond_32
    if-nez v0, :cond_44

    if-nez p9, :cond_44

    .line 1924
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, v9}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1925
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    .line 1928
    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    :cond_44
    if-eqz v0, :cond_57

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_57

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1929
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 1932
    const/4 v0, 0x0

    .line 1935
    .end local v0    # "r":Lcom/android/server/am/ServiceRecord;
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    :cond_57
    move-object v14, v0

    const/4 v15, 0x0

    if-nez v14, :cond_28d

    .line 1937
    const v0, 0x10000400

    .line 1939
    .local v0, "flags":I
    if-eqz p10, :cond_63

    .line 1940
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    .line 1943
    .end local v0    # "flags":I
    .local v17, "flags":I
    :cond_63
    move/from16 v17, v0

    :try_start_65
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6b} :catch_28a

    move-object v3, v9

    move-object/from16 v4, p2

    move/from16 v5, v17

    move v6, v11

    move/from16 v7, p5

    :try_start_73
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    move-object v2, v0

    .line 1946
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_7d

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_7e

    :cond_7d
    move-object v0, v15

    .line 1947
    .local v0, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_7e
    if-nez v0, :cond_a4

    .line 1948
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " U="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-object v15

    .line 1952
    :cond_a4
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    .local v3, "name":Landroid/content/ComponentName;
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_15e

    .line 1955
    if-eqz p9, :cond_147

    .line 1956
    iget-boolean v4, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_12b

    .line 1960
    iget v4, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_10f

    .line 1965
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x400

    invoke-interface {v4, v10, v5, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1967
    .local v4, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_f8

    .line 1971
    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5, v0}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v0, v5

    .line 1972
    new-instance v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1973
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1974
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1975
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    .line 1976
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1977
    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_160

    .line 1968
    .restart local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_f8
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BIND_EXTERNAL_SERVICE failed, could not resolve client package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1961
    .end local v4    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_10f
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not an isolatedProcess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1957
    :cond_12b
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not exported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1978
    :cond_147
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BIND_EXTERNAL_SERVICE required for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1981
    :cond_15e
    if-nez p9, :cond_264

    .line 1985
    :goto_160
    if-lez v11, :cond_19b

    .line 1986
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget v15, v0, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {v4, v5, v6, v7, v15}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_188

    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_178
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_178} :catch_286

    .line 1988
    move/from16 v15, p5

    :try_start_17a
    invoke-virtual {v4, v15, v5}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v4

    if-eqz v4, :cond_18a

    .line 1989
    const/4 v11, 0x0

    .line 1990
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v4

    move-object v12, v4

    goto :goto_18a

    .line 1992
    :cond_188
    move/from16 v15, p5

    :cond_18a
    :goto_18a
    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v0}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    move-object v0, v4

    .line 1993
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v11}, Lcom/android/server/am/ActivityManagerService;->getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iput-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_19d

    .line 1995
    :cond_19b
    move/from16 v15, p5

    .line 1995
    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .local v4, "sInfo":Landroid/content/pm/ServiceInfo;
    :goto_19d
    move-object v4, v0

    iget-object v0, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_17a .. :try_end_1a6} :catch_284

    move-object v5, v0

    .line 1998
    .end local v14    # "r":Lcom/android/server/am/ServiceRecord;
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    if-nez v5, :cond_25f

    if-eqz p7, :cond_25f

    .line 1999
    :try_start_1ab
    new-instance v0, Landroid/content/Intent$FilterComparison;

    .line 2000
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v6, v0

    .line 2001
    .local v6, "filter":Landroid/content/Intent$FilterComparison;
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceRestarter;

    const/4 v7, 0x0

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/ActiveServices$ServiceRestarter;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ActiveServices$1;)V

    move-object v7, v0

    .line 2003
    .local v7, "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    move-object v14, v0

    .line 2004
    .local v14, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v14
    :try_end_1c6
    .catch Landroid/os/RemoteException; {:try_start_1ab .. :try_end_1c6} :catch_259

    .line 2005
    :try_start_1c6
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1ca
    .catchall {:try_start_1c6 .. :try_end_1ca} :catchall_24a

    move-object/from16 v27, v2

    :try_start_1cc
    iget-object v2, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
    :try_end_1ce
    .catchall {:try_start_1cc .. :try_end_1ce} :catchall_244

    .line 2005
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v27, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v28, v5

    :try_start_1d0
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 2005
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .local v28, "r":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {v14, v0, v2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getServiceStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v21

    .line 2008
    .local v21, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    monitor-exit v14
    :try_end_1d7
    .catchall {:try_start_1d0 .. :try_end_1d7} :catchall_240

    .line 2009
    :try_start_1d7
    new-instance v0, Lcom/android/server/am/ServiceRecord;

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v4

    move/from16 v25, p8

    move-object/from16 v26, v7

    invoke-direct/range {v19 .. v26}, Lcom/android/server/am/ServiceRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;Landroid/content/ComponentName;Landroid/content/Intent$FilterComparison;Landroid/content/pm/ServiceInfo;ZLjava/lang/Runnable;)V
    :try_end_1ec
    .catch Landroid/os/RemoteException; {:try_start_1d7 .. :try_end_1ec} :catch_253

    move-object v2, v0

    .line 2010
    .end local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .local v2, "r":Lcom/android/server/am/ServiceRecord;
    :try_start_1ed
    invoke-virtual {v7, v2}, Lcom/android/server/am/ActiveServices$ServiceRestarter;->setService(Lcom/android/server/am/ServiceRecord;)V

    .line 2011
    iget-object v0, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    iget-object v0, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2015
    .local v0, "i":I
    :goto_202
    if-ltz v0, :cond_235

    .line 2016
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;
    :try_end_20c
    .catch Landroid/os/RemoteException; {:try_start_1ed .. :try_end_20c} :catch_23a

    .line 2017
    .local v5, "pr":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v29, v2

    :try_start_20e
    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2017
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .local v29, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v30, v6

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2017
    .end local v6    # "filter":Landroid/content/Intent$FilterComparison;
    .local v30, "filter":Landroid/content/Intent$FilterComparison;
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v6, :cond_229

    iget-object v2, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 2018
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_229

    .line 2020
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_229
    .catch Landroid/os/RemoteException; {:try_start_20e .. :try_end_229} :catch_230

    .line 2015
    .end local v5    # "pr":Lcom/android/server/am/ServiceRecord;
    :cond_229
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v2, v29

    move-object/from16 v6, v30

    goto :goto_202

    .line 2025
    .end local v0    # "i":I
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v14    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v17    # "flags":I
    .end local v21    # "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .end local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v30    # "filter":Landroid/content/Intent$FilterComparison;
    :catch_230
    move-exception v0

    move-object/from16 v14, v29

    goto/16 :goto_28c

    .line 2027
    .end local v29    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_235
    move-object/from16 v29, v2

    move-object/from16 v14, v29

    .line 2027
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v29    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_263

    .line 2025
    .end local v29    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v2    # "r":Lcom/android/server/am/ServiceRecord;
    :catch_23a
    move-exception v0

    move-object/from16 v29, v2

    move-object/from16 v14, v29

    .line 2025
    .end local v2    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v29    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_28c

    .line 2008
    .end local v29    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v4    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v14    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v17    # "flags":I
    .restart local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v28    # "r":Lcom/android/server/am/ServiceRecord;
    :catchall_240
    move-exception v0

    move-object/from16 v30, v6

    .line 2008
    .end local v6    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v30    # "filter":Landroid/content/Intent$FilterComparison;
    goto :goto_251

    .line 2008
    .end local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v30    # "filter":Landroid/content/Intent$FilterComparison;
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    .restart local v6    # "filter":Landroid/content/Intent$FilterComparison;
    :catchall_244
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    .line 2008
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v30    # "filter":Landroid/content/Intent$FilterComparison;
    goto :goto_251

    .line 2008
    .end local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v30    # "filter":Landroid/content/Intent$FilterComparison;
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v6    # "filter":Landroid/content/Intent$FilterComparison;
    :catchall_24a
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v5

    move-object/from16 v30, v6

    .line 2008
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v30    # "filter":Landroid/content/Intent$FilterComparison;
    :goto_251
    :try_start_251
    monitor-exit v14
    :try_end_252
    .catchall {:try_start_251 .. :try_end_252} :catchall_257

    :try_start_252
    throw v0
    :try_end_253
    .catch Landroid/os/RemoteException; {:try_start_252 .. :try_end_253} :catch_253

    .line 2025
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v14    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v17    # "flags":I
    .end local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v30    # "filter":Landroid/content/Intent$FilterComparison;
    :catch_253
    move-exception v0

    move-object/from16 v14, v28

    goto :goto_28c

    .line 2008
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v4    # "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .restart local v14    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v17    # "flags":I
    .restart local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v30    # "filter":Landroid/content/Intent$FilterComparison;
    :catchall_257
    move-exception v0

    goto :goto_251

    .line 2025
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceRestarter;
    .end local v14    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v17    # "flags":I
    .end local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v30    # "filter":Landroid/content/Intent$FilterComparison;
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :catch_259
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v14, v28

    .line 2025
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v28    # "r":Lcom/android/server/am/ServiceRecord;
    goto :goto_28c

    .line 2027
    .end local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_25f
    move-object/from16 v28, v5

    .line 2027
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .restart local v28    # "r":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v14, v28

    .line 2027
    .end local v28    # "r":Lcom/android/server/am/ServiceRecord;
    .local v14, "r":Lcom/android/server/am/ServiceRecord;
    :goto_263
    goto :goto_28e

    .line 1982
    .local v0, "sInfo":Landroid/content/pm/ServiceInfo;
    .restart local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "name":Landroid/content/ComponentName;
    .restart local v17    # "flags":I
    :cond_264
    move/from16 v15, p5

    move-object/from16 v27, v2

    .line 1982
    .end local v2    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_268
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BIND_EXTERNAL_SERVICE failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not an externalService"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_284
    .catch Landroid/os/RemoteException; {:try_start_268 .. :try_end_284} :catch_284

    .line 2025
    .end local v0    # "sInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v17    # "flags":I
    .end local v27    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_284
    move-exception v0

    goto :goto_28c

    :catch_286
    move-exception v0

    move/from16 v15, p5

    goto :goto_28c

    :catch_28a
    move-exception v0

    move v15, v7

    :goto_28c
    goto :goto_28e

    .line 2029
    :cond_28d
    move v15, v7

    :goto_28e
    if-eqz v14, :cond_3a0

    .line 2031
    iput-object v10, v14, Lcom/android/server/am/ServiceRecord;->callerPackage:Ljava/lang/String;

    .line 2032
    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, v14, Lcom/android/server/am/ServiceRecord;->exported:Z

    move v4, v8

    move v5, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-eqz v0, :cond_334

    .line 2034
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->exported:Z

    if-nez v0, :cond_2f9

    .line 2035
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: Accessing service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that is not exported from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not exported from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2042
    :cond_2f9
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: Accessing service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2047
    :cond_334
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz v0, :cond_383

    if-eqz v10, :cond_383

    .line 2048
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 2049
    .local v0, "opCode":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_383

    iget-object v2, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v2, v0, v15, v10}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_383

    .line 2051
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Appop Denial: Accessing service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires appop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2054
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2051
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const/4 v2, 0x0

    return-object v2

    .line 2059
    .end local v0    # "opCode":I
    :cond_383
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v9

    move v5, v15

    move v6, v8

    move-object/from16 v7, p2

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/firewall/IntentFirewall;->checkService(Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_399

    .line 2061
    const/4 v2, 0x0

    return-object v2

    .line 2063
    :cond_399
    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/am/ActiveServices$ServiceLookupResult;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V

    return-object v0

    .line 2065
    :cond_3a0
    const/4 v2, 0x0

    return-object v2
.end method

.method private final scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z
    .registers 29
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "allowCancel"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2155
    const/4 v3, 0x1

    if-eqz p2, :cond_10

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v4}, Lcom/android/server/am/ActiveServicesInjector;->canRestartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2156
    return v3

    .line 2159
    :cond_10
    const/4 v4, 0x0

    .line 2161
    .local v4, "canceled":Z
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isShuttingDownLocked()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_38

    .line 2162
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not scheduling restart of crashed service "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - system is shutting down"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return v6

    .line 2167
    :cond_38
    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v0, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    .line 2168
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v7, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v1, :cond_71

    .line 2169
    iget-object v3, v5, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 2170
    .local v3, "cur":Lcom/android/server/am/ServiceRecord;
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempting to schedule restart of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " when found in map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    return v6

    .line 2175
    .end local v3    # "cur":Lcom/android/server/am/ServiceRecord;
    :cond_71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2180
    .local v7, "now":J
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    const/4 v12, 0x3

    if-nez v9, :cond_1d6

    .line 2182
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActiveServicesInjector;->willRestartNow(Lcom/android/server/am/ServiceRecord;)Z

    move-result v9

    if-nez v9, :cond_1d6

    .line 2184
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    .line 2185
    .local v13, "minDuration":J
    iget-object v9, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v9, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    .line 2189
    .local v10, "resetTime":J
    iget-object v9, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2190
    .local v9, "N":I
    if-lez v9, :cond_11f

    .line 2191
    add-int/lit8 v17, v9, -0x1

    .line 2191
    .local v17, "i":I
    :goto_9c
    move/from16 v18, v17

    .line 2191
    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v15, v18

    if-ltz v15, :cond_115

    .line 2192
    .end local v18    # "i":I
    .local v15, "i":I
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2193
    .local v3, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 2194
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    if-nez v6, :cond_b4

    .line 2191
    .end local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v19, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :goto_b1
    move-object/from16 v19, v5

    goto :goto_10d

    .line 2196
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .restart local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_b4
    if-eqz p2, :cond_e5

    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-ge v6, v12, :cond_c0

    iget v6, v3, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    const/4 v12, 0x6

    if-ge v6, v12, :cond_c0

    goto :goto_e5

    .line 2212
    :cond_c0
    const-string v6, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling start item "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in service "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    const/4 v2, 0x1

    .line 2191
    .end local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v4    # "canceled":Z
    .local v2, "canceled":Z
    move v4, v2

    goto :goto_b1

    .line 2198
    .end local v2    # "canceled":Z
    .restart local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .restart local v4    # "canceled":Z
    :cond_e5
    :goto_e5
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move/from16 v20, v4

    move-object/from16 v19, v5

    iget-wide v4, v3, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 2199
    .end local v4    # "canceled":Z
    .end local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .local v20, "canceled":Z
    sub-long v16, v16, v4

    .line 2200
    .local v16, "dur":J
    const-wide/16 v4, 0x2

    mul-long v16, v16, v4

    .line 2201
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 2209
    cmp-long v2, v13, v16

    if-gez v2, :cond_104

    move-wide/from16 v4, v16

    .line 2210
    .end local v13    # "minDuration":J
    .local v4, "minDuration":J
    move-wide v13, v4

    .line 2210
    .end local v4    # "minDuration":J
    .restart local v13    # "minDuration":J
    :cond_104
    cmp-long v2, v10, v16

    if-gez v2, :cond_10b

    move-wide/from16 v4, v16

    .line 2211
    .end local v10    # "resetTime":J
    .end local v16    # "dur":J
    .local v4, "resetTime":J
    move-wide v10, v4

    .line 2191
    .end local v4    # "resetTime":J
    .restart local v10    # "resetTime":J
    :cond_10b
    move/from16 v4, v20

    .line 2191
    .end local v3    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v20    # "canceled":Z
    .local v4, "canceled":Z
    :goto_10d
    add-int/lit8 v17, v15, -0x1

    .line 2191
    .end local v15    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v5, v19

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x3

    goto :goto_9c

    .line 2217
    .end local v17    # "i":I
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_115
    move/from16 v20, v4

    move-object/from16 v19, v5

    .line 2217
    .end local v4    # "canceled":Z
    .end local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "canceled":Z
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_123

    .line 2220
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "canceled":Z
    .restart local v4    # "canceled":Z
    .restart local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_11f
    move-object/from16 v19, v5

    move/from16 v20, v4

    .line 2220
    .end local v4    # "canceled":Z
    .end local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v20    # "canceled":Z
    :goto_123
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 2221
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 2228
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v15, 0x0

    cmp-long v2, v4, v15

    if-nez v2, :cond_13b

    .line 2229
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2230
    iput-wide v13, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    goto :goto_177

    .line 2231
    :cond_13b
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    if-le v2, v3, :cond_151

    .line 2232
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v2, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget v2, v1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    sub-int/2addr v2, v3

    move-wide/from16 v21, v13

    int-to-long v12, v2

    .line 2232
    .end local v13    # "minDuration":J
    .local v21, "minDuration":J
    mul-long/2addr v4, v12

    iput-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2251
    move-wide/from16 v13, v21

    goto :goto_177

    .line 2240
    .end local v21    # "minDuration":J
    .restart local v13    # "minDuration":J
    :cond_151
    move-wide/from16 v21, v13

    .line 2240
    .end local v13    # "minDuration":J
    .restart local v21    # "minDuration":J
    iget-wide v4, v1, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v4, v10

    cmp-long v2, v7, v4

    if-lez v2, :cond_161

    .line 2241
    iput v3, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2242
    move-wide/from16 v13, v21

    iput-wide v13, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2242
    .end local v21    # "minDuration":J
    .restart local v13    # "minDuration":J
    goto :goto_177

    .line 2244
    .end local v13    # "minDuration":J
    .restart local v21    # "minDuration":J
    :cond_161
    move-wide/from16 v13, v21

    .line 2244
    .end local v21    # "minDuration":J
    .restart local v13    # "minDuration":J
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    iget-object v4, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2245
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    cmp-long v2, v2, v13

    if-gez v2, :cond_177

    .line 2246
    iput-wide v13, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2251
    :cond_177
    :goto_177
    iget-wide v2, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v2, v7

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2252
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 2265
    :goto_17e
    const/4 v2, 0x0

    .line 2266
    .local v2, "repeat":Z
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    .line 2267
    .local v3, "restartTimeBetween":J
    iget-object v5, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 2267
    .local v5, "i":I
    :goto_18d
    if-ltz v5, :cond_1c6

    .line 2268
    iget-object v6, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 2269
    .local v6, "r2":Lcom/android/server/am/ServiceRecord;
    if-eq v6, v1, :cond_1bb

    move/from16 v23, v9

    move-wide/from16 v24, v10

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2269
    .end local v9    # "N":I
    .end local v10    # "resetTime":J
    .local v23, "N":I
    .local v24, "resetTime":J
    iget-wide v11, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v11, v3

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1bf

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v11, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v11, v3

    cmp-long v9, v9, v11

    if-gez v9, :cond_1bf

    .line 2271
    iget-wide v9, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    add-long/2addr v9, v3

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2272
    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr v9, v7

    iput-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2273
    const/4 v2, 0x1

    .line 2274
    goto :goto_1ca

    .line 2267
    .end local v6    # "r2":Lcom/android/server/am/ServiceRecord;
    .end local v23    # "N":I
    .end local v24    # "resetTime":J
    .restart local v9    # "N":I
    .restart local v10    # "resetTime":J
    :cond_1bb
    move/from16 v23, v9

    move-wide/from16 v24, v10

    .line 2267
    .end local v9    # "N":I
    .end local v10    # "resetTime":J
    .restart local v23    # "N":I
    .restart local v24    # "resetTime":J
    :cond_1bf
    add-int/lit8 v5, v5, -0x1

    move/from16 v9, v23

    move-wide/from16 v10, v24

    goto :goto_18d

    .line 2277
    .end local v3    # "restartTimeBetween":J
    .end local v5    # "i":I
    .end local v23    # "N":I
    .end local v24    # "resetTime":J
    .restart local v9    # "N":I
    .restart local v10    # "resetTime":J
    :cond_1c6
    move/from16 v23, v9

    move-wide/from16 v24, v10

    .line 2277
    .end local v9    # "N":I
    .end local v10    # "resetTime":J
    .restart local v23    # "N":I
    .restart local v24    # "resetTime":J
    :goto_1ca
    if-nez v2, :cond_1d1

    .line 2279
    .end local v2    # "repeat":Z
    .end local v13    # "minDuration":J
    .end local v23    # "N":I
    .end local v24    # "resetTime":J
    nop

    .line 2288
    move/from16 v4, v20

    const/4 v2, 0x0

    goto :goto_1e7

    .line 2265
    .restart local v13    # "minDuration":J
    .restart local v23    # "N":I
    .restart local v24    # "resetTime":J
    :cond_1d1
    move/from16 v9, v23

    move-wide/from16 v10, v24

    goto :goto_17e

    .line 2282
    .end local v13    # "minDuration":J
    .end local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v20    # "canceled":Z
    .end local v23    # "N":I
    .end local v24    # "resetTime":J
    .restart local v4    # "canceled":Z
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1d6
    move-object/from16 v19, v5

    .line 2282
    .end local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .restart local v19    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->totalRestartCount:I

    .line 2283
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/am/ServiceRecord;->restartCount:I

    .line 2284
    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    .line 2285
    iput-wide v7, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2288
    :goto_1e7
    iget-object v3, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_201

    .line 2289
    iput-boolean v2, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    .line 2290
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/am/ServiceRecord;->makeRestarting(IJ)V

    .line 2294
    :cond_201
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2296
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2297
    iget-object v2, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 2298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    .line 2299
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling restart of crashed service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    sget-boolean v2, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    .line 2310
    const/16 v2, 0x7553

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 2311
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    iget-wide v9, v1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    .line 2310
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2313
    return v4
.end method

.method private final sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "execInFg"    # Z
    .param p3, "oomAdjusted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 2659
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2660
    .local v0, "N":I
    if-nez v0, :cond_9

    .line 2661
    return-void

    .line 2664
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2666
    .local v1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ServiceStartArgs;>;"
    :goto_e
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_98

    .line 2667
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 2672
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v5, 0x1

    if-nez v4, :cond_27

    if-le v0, v5, :cond_27

    .line 2677
    goto :goto_e

    .line 2679
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveredTime:J

    .line 2680
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    iget v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 2682
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    if-eqz v4, :cond_46

    .line 2683
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord$StartItem;->neededGrants:Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    .line 2684
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord$StartItem;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v7

    .line 2683
    invoke-virtual {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionUncheckedFromIntentLocked(Lcom/android/server/am/ActivityManagerService$NeededUriGrants;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2686
    :cond_46
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v6, p1, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    iget-object v8, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, v2, Lcom/android/server/am/ServiceRecord$StartItem;->callingId:I

    .line 2687
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 2686
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 2688
    const-string/jumbo v4, "start"

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 2689
    if-nez p3, :cond_69

    .line 2690
    const/4 p3, 0x1

    .line 2691
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 2693
    :cond_69
    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v4, :cond_7b

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    if-nez v4, :cond_7b

    .line 2694
    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_79

    .line 2698
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_7b

    .line 2703
    :cond_79
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 2706
    :cond_7b
    :goto_7b
    const/4 v3, 0x0

    .line 2707
    .local v3, "flags":I
    iget v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    if-le v4, v5, :cond_82

    .line 2708
    or-int/lit8 v3, v3, 0x2

    .line 2710
    :cond_82
    iget v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    if-lez v4, :cond_88

    .line 2711
    or-int/lit8 v3, v3, 0x1

    .line 2713
    :cond_88
    new-instance v4, Landroid/app/ServiceStartArgs;

    iget-boolean v5, v2, Lcom/android/server/am/ServiceRecord$StartItem;->taskRemoved:Z

    iget v6, v2, Lcom/android/server/am/ServiceRecord$StartItem;->id:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    invoke-direct {v4, v5, v6, v3, v7}, Landroid/app/ServiceStartArgs;-><init>(ZIILandroid/content/Intent;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2714
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    .end local v3    # "flags":I
    goto/16 :goto_e

    .line 2716
    :cond_98
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 2717
    .local v2, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ServiceStartArgs;>;"
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/content/pm/ParceledListSlice;->setInlineCountLimit(I)V

    .line 2718
    const/4 v4, 0x0

    .line 2720
    .local v4, "caughtException":Ljava/lang/Exception;
    :try_start_a2
    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5, p1, v2}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    :try_end_a9
    .catch Landroid/os/TransactionTooLargeException; {:try_start_a2 .. :try_end_a9} :catch_be
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a9} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_aa

    goto :goto_c7

    .line 2731
    :catch_aa
    move-exception v5

    .line 2732
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    const-string v7, "Unexpected exception"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2733
    move-object v4, v5

    .line 2733
    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_c8

    .line 2726
    :catch_b4
    move-exception v5

    .line 2729
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v7, "Failed delivering service starts"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2730
    move-object v4, v5

    .line 2730
    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_c7

    .line 2721
    :catch_be
    move-exception v5

    .line 2724
    .local v5, "e":Landroid/os/TransactionTooLargeException;
    const-string v6, "ActivityManager"

    const-string v7, "Failed delivering service starts"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    move-object v4, v5

    .line 2734
    .end local v5    # "e":Landroid/os/TransactionTooLargeException;
    :goto_c7
    nop

    .line 2736
    :goto_c8
    if-eqz v4, :cond_e6

    .line 2738
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 2739
    .local v5, "inDestroying":Z
    nop

    .line 2739
    .local v3, "i":I
    :goto_d1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_dd

    .line 2740
    invoke-direct {p0, p1, v5, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 2739
    add-int/lit8 v3, v3, 0x1

    goto :goto_d1

    .line 2742
    .end local v3    # "i":I
    :cond_dd
    instance-of v3, v4, Landroid/os/TransactionTooLargeException;

    if-nez v3, :cond_e2

    .line 2742
    .end local v5    # "inDestroying":Z
    goto :goto_e6

    .line 2743
    .restart local v5    # "inDestroying":Z
    :cond_e2
    move-object v3, v4

    check-cast v3, Landroid/os/TransactionTooLargeException;

    throw v3

    .line 2746
    .end local v5    # "inDestroying":Z
    :cond_e6
    :goto_e6
    return-void
.end method

.method private serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "inDestroying"    # Z
    .param p3, "finishing"    # Z

    .line 3145
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3146
    iget v0, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-gtz v0, :cond_a7

    .line 3147
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_68

    .line 3150
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 3151
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3152
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 3155
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0xc

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_55

    .line 3156
    :cond_30
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v0, :cond_55

    .line 3158
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_3d
    if-ltz v0, :cond_55

    .line 3159
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    if-eqz v3, :cond_52

    .line 3160
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v1, v3, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    .line 3161
    goto :goto_55

    .line 3158
    :cond_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    .line 3165
    .end local v0    # "i":I
    :cond_55
    :goto_55
    if-eqz p2, :cond_61

    .line 3168
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3169
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3171
    :cond_61
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 3173
    :cond_68
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->executeFg:Z

    .line 3174
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_89

    .line 3175
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 3176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3175
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3177
    if-eqz p3, :cond_89

    .line 3178
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/app/procstats/ServiceState;->clearCurrentOwner(Ljava/lang/Object;Z)V

    .line 3179
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    .line 3182
    :cond_89
    if-eqz p3, :cond_a7

    .line 3183
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a5

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_a5

    .line 3184
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3185
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_a5

    .line 3186
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3189
    :cond_a5
    iput-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3192
    :cond_a7
    return-void
.end method

.method private serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3128
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_20

    .line 3129
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v0

    .line 3130
    .local v0, "memFactor":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3131
    .local v1, "now":J
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setExecuting(ZIJ)V

    .line 3132
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3133
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 3135
    .end local v0    # "memFactor":I
    .end local v1    # "now":J
    :cond_20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3136
    return-void
.end method

.method private setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;I)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "flags"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    .line 1205
    const/16 v0, 0x3c

    const/4 v5, 0x2

    const/16 v6, 0x4c

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_208

    .line 1206
    if-eqz v4, :cond_1ff

    .line 1210
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_85

    .line 1211
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v10, 0x44

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    .line 1215
    .local v9, "mode":I
    packed-switch v9, :pswitch_data_26c

    .line 1227
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v11, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v14, "startForeground"

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .end local v9    # "mode":I
    goto :goto_84

    .line 1224
    .restart local v9    # "mode":I
    :pswitch_43
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instant app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not have permission to create foreground services"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :pswitch_63
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instant app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not have permission to create foreground services, ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    return-void

    .line 1217
    :pswitch_83
    nop

    .line 1231
    .end local v9    # "mode":I
    :goto_84
    goto :goto_9f

    :cond_85
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_9f

    .line 1232
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "android.permission.FOREGROUND_SERVICE"

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v13, "startForeground"

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1236
    :cond_9f
    :goto_9f
    const/4 v9, 0x0

    .line 1237
    .local v9, "alreadyStartedOp":Z
    iget-boolean v10, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v10, :cond_b2

    .line 1241
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 1242
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 1243
    const/4 v9, 0x1

    .line 1244
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v11, 0x42

    invoke-virtual {v10, v11, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1249
    :cond_b2
    const/4 v10, 0x0

    .line 1250
    .local v10, "ignoreForeground":Z
    :try_start_b3
    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6, v12, v13}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v11

    .line 1252
    .local v11, "mode":I
    const/4 v12, 0x3

    if-eq v11, v12, :cond_e9

    packed-switch v11, :pswitch_data_276

    .line 1264
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "Foreground not allowed as per app op"

    invoke-direct {v0, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :pswitch_cf
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service.startForeground() not allowed due to app op: service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v10, 0x1

    .line 1262
    goto :goto_ea

    .line 1256
    :cond_e9
    :pswitch_e9
    nop

    .line 1267
    :goto_ea
    if-nez v10, :cond_116

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1268
    invoke-direct {v1, v12, v13}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_116

    .line 1269
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Service.startForeground() not allowed due to bg restriction: service "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v12, v8}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1275
    const/4 v10, 0x1

    .line 1282
    :cond_116
    if-nez v10, :cond_1c9

    .line 1283
    iget v12, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    if-eq v12, v3, :cond_121

    .line 1284
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1285
    iput v3, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1287
    :cond_121
    iget v12, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v4, Landroid/app/Notification;->flags:I

    .line 1288
    iput-object v4, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1289
    iget-boolean v12, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v12, :cond_1aa

    .line 1290
    iget v12, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v12}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v12

    .line 1291
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v12, :cond_181

    .line 1292
    iget-object v13, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1293
    .local v13, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    if-nez v13, :cond_17c

    .line 1294
    new-instance v14, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    invoke-direct {v14}, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;-><init>()V

    move-object v13, v14

    .line 1295
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iput-object v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    .line 1296
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    .line 1297
    iget-boolean v14, v1, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    iput-boolean v14, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1298
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_167

    .line 1299
    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    iget v14, v14, Lcom/android/server/am/UidRecord;->curProcState:I

    if-gt v14, v5, :cond_163

    move v8, v7

    nop

    :cond_163
    iput-boolean v8, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    iput-boolean v8, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1303
    :cond_167
    nop

    .line 1304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v5, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    .line 1305
    iget-object v5, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    const-wide/16 v5, 0x0

    invoke-direct {v1, v12, v5, v6}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1308
    :cond_17c
    iget v5, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    add-int/2addr v5, v7

    iput v5, v13, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mNumActive:I

    .line 1310
    .end local v13    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_181
    iput-boolean v7, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1311
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    .line 1312
    invoke-static {v6}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v16

    const/16 v17, 0x4c

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/16 v20, 0x1

    .line 1311
    move-object v15, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    invoke-virtual/range {v15 .. v20}, Lcom/android/server/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 1315
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-static {v0, v5, v6, v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 1319
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_1aa
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->postNotification()V

    .line 1320
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1b6

    .line 1321
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v7}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1323
    :cond_1b6
    iget v0, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1324
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V
    :try_end_1c9
    .catchall {:try_start_b3 .. :try_end_1c9} :catchall_1e4

    .line 1332
    .end local v10    # "ignoreForeground":Z
    .end local v11    # "mode":I
    :cond_1c9
    if-eqz v9, :cond_1e2

    .line 1335
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    .line 1336
    invoke-static {v5}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1335
    const/16 v8, 0x4c

    invoke-virtual {v0, v5, v8, v6, v7}, Lcom/android/server/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1340
    .end local v9    # "alreadyStartedOp":Z
    :cond_1e2
    goto/16 :goto_26a

    .line 1332
    .restart local v9    # "alreadyStartedOp":Z
    :catchall_1e4
    move-exception v0

    if-eqz v9, :cond_1fe

    .line 1335
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    .line 1336
    invoke-static {v6}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1335
    const/16 v10, 0x4c

    invoke-virtual {v5, v6, v10, v7, v8}, Lcom/android/server/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    :cond_1fe
    throw v0

    .line 1207
    .end local v9    # "alreadyStartedOp":Z
    :cond_1ff
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "null notification"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1341
    :cond_208
    iget-boolean v5, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_24b

    .line 1342
    iget v5, v2, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v5

    .line 1343
    .local v5, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v5, :cond_218

    .line 1344
    invoke-direct {v1, v5, v2}, Lcom/android/server/am/ActiveServices;->decActiveForegroundAppLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Lcom/android/server/am/ServiceRecord;)V

    .line 1346
    :cond_218
    iput-boolean v8, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1347
    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    .line 1348
    invoke-static {v10}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 1347
    const/16 v13, 0x4c

    invoke-virtual {v9, v10, v13, v11, v12}, Lcom/android/server/AppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1350
    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v0, v9, v10, v11}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 1353
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_24b

    .line 1354
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v9, v8, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1355
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v0, v7}, Lcom/android/server/am/ActiveServices;->updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1358
    .end local v5    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_24b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_257

    .line 1359
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->cancelForegroundNotificationLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 1360
    iput v8, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1361
    iput-object v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    goto :goto_26a

    .line 1362
    :cond_257
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_26a

    .line 1363
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V

    .line 1364
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_26a

    .line 1365
    iput v8, v2, Lcom/android/server/am/ServiceRecord;->foregroundId:I

    .line 1366
    iput-object v6, v2, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1370
    :cond_26a
    :goto_26a
    return-void

    nop

    :pswitch_data_26c
    .packed-switch 0x0
        :pswitch_83
        :pswitch_63
        :pswitch_43
    .end packed-switch

    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_e9
        :pswitch_cf
    .end packed-switch
.end method

.method private stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/am/ServiceRecord;

    .line 722
    iget-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v0, :cond_8

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 728
    return-void

    .line 730
    :cond_8
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    .line 731
    :try_start_f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 732
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_68

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 734
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v1, :cond_2d

    .line 735
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 735
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 738
    :cond_2d
    iput-boolean v0, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, "isKnowConn":Z
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v3, 0x3f

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_64

    .line 743
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->hasOtherAppAutoCreateConnections()Z

    move-result v2

    if-nez v2, :cond_64

    .line 744
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background stop Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " don\'t refer to it\'s conn."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v1, 0x1

    .line 749
    :cond_64
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 750
    return-void

    .line 732
    .end local v1    # "isKnowConn":Z
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method private final unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "callingUid"    # I
    .param p3, "force"    # Z

    .line 2366
    if-nez p3, :cond_c

    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->restartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 2367
    const/4 v0, 0x0

    return v0

    .line 2372
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 2373
    .local v0, "removed":Z
    if-nez v0, :cond_1a

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p2, v1, :cond_1d

    .line 2374
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 2376
    :cond_1d
    if-eqz v0, :cond_22

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 2379
    :cond_22
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2380
    const/4 v1, 0x1

    return v1
.end method

.method private updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    .registers 14
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "modCr"    # Lcom/android/server/am/ConnectionRecord;
    .param p3, "updateLru"    # Z

    .line 1435
    const/4 v0, 0x0

    if-eqz p2, :cond_16

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_16

    .line 1436
    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_16

    .line 1439
    return v0

    .line 1443
    :cond_16
    const/4 v1, 0x0

    .line 1444
    .local v1, "anyClientActivities":Z
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_6f

    if-nez v1, :cond_6f

    .line 1445
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 1446
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "conni":I
    :goto_32
    if-ltz v5, :cond_6c

    if-nez v1, :cond_6c

    .line 1447
    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1448
    .local v6, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    .local v7, "cri":I
    :goto_43
    if-ltz v7, :cond_69

    .line 1449
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    .line 1450
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v9, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_66

    iget-object v9, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v9, p1, :cond_58

    .line 1452
    goto :goto_66

    .line 1454
    :cond_58
    iget-object v9, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_66

    .line 1455
    const/4 v1, 0x1

    .line 1456
    goto :goto_69

    .line 1448
    .end local v8    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_66
    :goto_66
    add-int/lit8 v7, v7, -0x1

    goto :goto_43

    .line 1446
    .end local v6    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v7    # "cri":I
    :cond_69
    :goto_69
    add-int/lit8 v5, v5, -0x1

    goto :goto_32

    .line 1444
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v5    # "conni":I
    :cond_6c
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 1461
    .end local v2    # "i":I
    :cond_6f
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-eq v1, v2, :cond_7e

    .line 1462
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    .line 1463
    if-eqz p3, :cond_7d

    .line 1464
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1466
    :cond_7d
    return v3

    .line 1468
    :cond_7e
    return v0
.end method

.method private updateServiceForegroundLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z

    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, "anyForeground":Z
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_21

    .line 1396
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1397
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v3, :cond_1f

    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v3, :cond_1c

    goto :goto_1f

    .line 1395
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1398
    .restart local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1399
    nop

    .line 1402
    .end local v1    # "i":I
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/am/ActivityManagerService;->updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 1403
    return-void
.end method

.method private updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1406
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1407
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1f

    .line 1408
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 1409
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v3, :cond_1c

    .line 1410
    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1411
    goto :goto_1f

    .line 1407
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1414
    .end local v0    # "i":I
    :cond_1f
    :goto_1f
    return-void
.end method


# virtual methods
.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 11
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3196
    const/4 v0, 0x0

    .line 3198
    .local v0, "didSomething":Z
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_78

    .line 3199
    const/4 v1, 0x0

    .line 3201
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "didSomething":Z
    :goto_d
    :try_start_d
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5b

    .line 3202
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    move-object v1, v4

    .line 3203
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v4, :cond_33

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_58

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3204
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 3205
    goto :goto_58

    .line 3208
    :cond_33
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3209
    add-int/lit8 v0, v0, -0x1

    .line 3210
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 3212
    iget-boolean v4, v1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    invoke-direct {p0, v1, p1, v4}, Lcom/android/server/am/ActiveServices;->realStartServiceLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ProcessRecord;Z)V

    .line 3213
    const/4 v3, 0x1

    .line 3214
    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v4

    if-nez v4, :cond_58

    .line 3219
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_58} :catch_5e

    .line 3201
    :cond_58
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3226
    .end local v0    # "i":I
    :cond_5b
    nop

    .line 3232
    move v0, v3

    goto :goto_78

    .line 3222
    :catch_5e
    move-exception v0

    .line 3223
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in new application when starting service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3225
    throw v0

    .line 3232
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v3    # "didSomething":Z
    .local v0, "didSomething":Z
    :cond_78
    :goto_78
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_bd

    .line 3234
    nop

    .local v2, "i":I
    :goto_81
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_bd

    .line 3235
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 3236
    .local v2, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-eq p1, v3, :cond_a7

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_b9

    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3237
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 3238
    goto :goto_b9

    .line 3240
    :cond_a7
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3241
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3234
    :cond_b9
    :goto_b9
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_81

    .line 3244
    .end local v1    # "i":I
    .end local v2    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_bd
    return v0
.end method

.method bindServiceLocked(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I
    .registers 49
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "service"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "connection"    # Landroid/app/IServiceConnection;
    .param p6, "flags"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v0, p3

    .line 1477
    iget-object v1, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    .line 1478
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_41d

    .line 1485
    const/4 v1, 0x0

    .line 1486
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    const/4 v8, 0x0

    if-eqz v14, :cond_31

    .line 1487
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1488
    if-nez v1, :cond_31

    .line 1489
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding with unknown activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return v8

    .line 1494
    :cond_31
    move-object v7, v1

    .line 1494
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    .local v7, "activity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 1495
    .local v1, "clientLabel":I
    const/4 v2, 0x0

    .line 1496
    .local v2, "clientIntent":Landroid/app/PendingIntent;
    iget-object v3, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3f

    move v3, v6

    goto :goto_40

    :cond_3f
    move v3, v8

    :goto_40
    move v15, v3

    .line 1498
    .local v15, "isCallerSystem":Z
    if-eqz v15, :cond_5d

    .line 1502
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setDefusable(Z)V

    .line 1503
    const-string v3, "android.intent.extra.client_intent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/app/PendingIntent;

    .line 1504
    if-eqz v2, :cond_5d

    .line 1505
    const-string v3, "android.intent.extra.client_label"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1506
    if-eqz v1, :cond_5d

    .line 1510
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 1515
    .end local v1    # "clientLabel":I
    .end local v2    # "clientIntent":Landroid/app/PendingIntent;
    .end local p3    # "service":Landroid/content/Intent;
    .local v5, "service":Landroid/content/Intent;
    .local v16, "clientIntent":Landroid/app/PendingIntent;
    .local v17, "clientLabel":I
    :cond_5d
    move-object v5, v0

    move/from16 v17, v1

    move-object/from16 v16, v2

    const/high16 v18, 0x8000000

    and-int v0, p6, v18

    if-eqz v0, :cond_71

    .line 1516
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "BIND_TREAT_LIKE_ACTIVITY"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    :cond_71
    const/high16 v19, 0x1000000

    and-int v0, p6, v19

    if-eqz v0, :cond_a5

    if-eqz v15, :cond_7a

    goto :goto_a5

    .line 1521
    :cond_7a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_ALLOW_WHITELIST_MANAGEMENT when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_a5
    :goto_a5
    const/high16 v0, 0x400000

    and-int v1, p6, v0

    if-eqz v1, :cond_d9

    if-eqz v15, :cond_ae

    goto :goto_d9

    .line 1527
    :cond_ae
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") set BIND_ALLOW_INSTANT when binding service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_d9
    :goto_d9
    iget v1, v9, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_df

    move v1, v6

    goto :goto_e0

    :cond_df
    move v1, v8

    :goto_e0
    move v4, v1

    .line 1533
    .local v4, "callerFg":Z
    const/high16 v1, -0x80000000

    and-int v1, p6, v1

    if-eqz v1, :cond_e9

    move v10, v6

    goto :goto_ea

    :cond_e9
    move v10, v8

    .line 1534
    .local v10, "isBindExternal":Z
    :goto_ea
    and-int v0, p6, v0

    if-eqz v0, :cond_f0

    move v11, v6

    goto :goto_f1

    :cond_f0
    move v11, v8

    .line 1536
    .local v11, "allowInstant":Z
    :goto_f1
    nop

    .line 1537
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1538
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    const/16 v21, 0x1

    .line 1537
    move-object v1, v12

    move-object v2, v5

    move-object/from16 v3, p4

    move/from16 v22, v4

    move-object/from16 v4, p7

    .line 1537
    .end local v4    # "callerFg":Z
    .local v22, "callerFg":Z
    move-object/from16 v23, v5

    move v5, v0

    .line 1537
    .end local v5    # "service":Landroid/content/Intent;
    .local v23, "service":Landroid/content/Intent;
    move/from16 v6, v20

    move-object/from16 v24, v7

    move/from16 v7, p8

    .line 1537
    .end local v7    # "activity":Lcom/android/server/am/ActivityRecord;
    .local v24, "activity":Lcom/android/server/am/ActivityRecord;
    move v0, v8

    move/from16 v8, v21

    move-object v14, v9

    move/from16 v9, v22

    .line 1537
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v14, "callerApp":Lcom/android/server/am/ProcessRecord;
    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v7

    .line 1539
    .local v7, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-nez v7, :cond_11a

    .line 1540
    return v0

    .line 1542
    :cond_11a
    iget-object v1, v7, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v1, :cond_120

    .line 1543
    const/4 v0, -0x1

    return v0

    .line 1545
    :cond_120
    iget-object v8, v7, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 1547
    .local v8, "s":Lcom/android/server/am/ServiceRecord;
    const/4 v1, 0x0

    .line 1553
    .local v1, "permissionsReviewRequired":Z
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v2, :cond_1a7

    .line 1554
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 1557
    const/4 v9, 0x1

    .line 1560
    .end local v1    # "permissionsReviewRequired":Z
    .local v9, "permissionsReviewRequired":Z
    move/from16 v6, v22

    if-nez v6, :cond_167

    .line 1561
    .end local v22    # "callerFg":Z
    .local v6, "callerFg":Z
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Binding to a service in package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requires a permissions review"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return v0

    .line 1566
    :cond_167
    move-object v3, v8

    .line 1567
    .local v3, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    move-object/from16 v4, v23

    .line 1569
    .local v4, "serviceIntent":Landroid/content/Intent;
    new-instance v5, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/am/ActiveServices$3;

    move-object v1, v2

    move-object v0, v2

    move-object v2, v12

    move-object/from16 v25, v7

    move-object v7, v5

    move v5, v6

    .line 1569
    .end local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .local v25, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    move/from16 v26, v6

    move-object/from16 v6, p5

    .line 1569
    .end local v6    # "callerFg":Z
    .local v26, "callerFg":Z
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices$3;-><init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V

    invoke-direct {v7, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v0, v7

    .line 1604
    .local v0, "callback":Landroid/os/RemoteCallback;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1607
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v5, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    const-string v2, "android.intent.extra.REMOTE_CALLBACK"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1615
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/ActiveServices$4;

    move/from16 v7, p8

    invoke-direct {v5, v12, v1, v7}, Lcom/android/server/am/ActiveServices$4;-><init>(Lcom/android/server/am/ActiveServices;Landroid/content/Intent;I)V

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1615
    .end local v0    # "callback":Landroid/os/RemoteCallback;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    goto :goto_1ae

    .line 1624
    .end local v9    # "permissionsReviewRequired":Z
    .end local v25    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v26    # "callerFg":Z
    .local v1, "permissionsReviewRequired":Z
    .restart local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v22    # "callerFg":Z
    :cond_1a7
    move-object/from16 v25, v7

    move/from16 v26, v22

    move/from16 v7, p8

    .line 1624
    .end local v7    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v22    # "callerFg":Z
    .restart local v25    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .restart local v26    # "callerFg":Z
    move v9, v1

    .line 1624
    .end local v1    # "permissionsReviewRequired":Z
    .restart local v9    # "permissionsReviewRequired":Z
    :goto_1ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v5, v0

    .line 1627
    .local v5, "origId":J
    :try_start_1b3
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x0

    invoke-direct {v12, v8, v0, v1}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z
    :try_end_1bb
    .catchall {:try_start_1b3 .. :try_end_1bb} :catchall_40b

    .line 1632
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_1f0

    .line 1633
    :try_start_1bf
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1634
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v0

    if-nez v0, :cond_1f0

    .line 1636
    invoke-virtual {v8}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v0

    .line 1637
    .local v0, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    if-eqz v0, :cond_1f0

    .line 1638
    iget-object v2, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v2

    iget-wide v3, v8, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V
    :try_end_1df
    .catchall {:try_start_1bf .. :try_end_1df} :catchall_1e0

    .line 1638
    .end local v0    # "stracker":Lcom/android/internal/app/procstats/ServiceState;
    goto :goto_1f1

    .line 1736
    :catchall_1e0
    move-exception v0

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v38, v14

    move-object/from16 v39, v23

    move-object/from16 v21, v24

    move/from16 v1, v26

    move-wide v10, v5

    goto/16 :goto_419

    .line 1644
    :cond_1f0
    const/4 v7, 0x1

    :goto_1f1
    :try_start_1f1
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v14, Lcom/android/server/am/ProcessRecord;->curProcState:I

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;
    :try_end_1ff
    .catchall {:try_start_1f1 .. :try_end_1ff} :catchall_40b

    move-wide/from16 v34, v5

    :try_start_201
    iget-object v5, v8, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .end local v5    # "origId":J
    .local v34, "origId":J
    move-object/from16 v27, v0

    move/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v30, v4

    move/from16 v31, v1

    move-object/from16 v32, v7

    move-object/from16 v33, v5

    invoke-virtual/range {v27 .. v33}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IILandroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/am/ActivityManagerService$Association;

    .line 1648
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1649
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3
    :try_end_222
    .catchall {:try_start_201 .. :try_end_222} :catchall_3fb

    .line 1648
    move-object/from16 v7, v23

    :try_start_224
    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1651
    .end local v23    # "service":Landroid/content/Intent;
    .local v7, "service":Landroid/content/Intent;
    invoke-virtual {v8, v7, v14}, Lcom/android/server/am/ServiceRecord;->retrieveAppBindingLocked(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;)Lcom/android/server/am/AppBindRecord;

    move-result-object v0

    move-object v6, v0

    .line 1652
    .local v6, "b":Lcom/android/server/am/AppBindRecord;
    new-instance v20, Lcom/android/server/am/ConnectionRecord;
    :try_end_22e
    .catchall {:try_start_224 .. :try_end_22e} :catchall_3eb

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v24

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v38, v14

    move-wide/from16 v10, v34

    move v14, v5

    move/from16 v5, v17

    .end local v11    # "allowInstant":Z
    .end local v14    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "origId":J
    .local v10, "origId":J
    .local v36, "isBindExternal":Z
    .local v37, "allowInstant":Z
    .local v38, "callerApp":Lcom/android/server/am/ProcessRecord;
    move-object v14, v6

    move-object/from16 v6, v16

    .line 1652
    .end local v6    # "b":Lcom/android/server/am/AppBindRecord;
    .local v14, "b":Lcom/android/server/am/AppBindRecord;
    :try_start_246
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ConnectionRecord;-><init>(Lcom/android/server/am/AppBindRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/IServiceConnection;IILandroid/app/PendingIntent;)V

    move-object/from16 v6, v20

    .line 1655
    .local v6, "c":Lcom/android/server/am/ConnectionRecord;
    invoke-interface/range {p5 .. p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v5, v0

    .line 1656
    .local v5, "binder":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_258
    .catchall {:try_start_246 .. :try_end_258} :catchall_3e3

    .line 1657
    .local v0, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-nez v0, :cond_26f

    .line 1658
    :try_start_25a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1659
    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_265
    .catchall {:try_start_25a .. :try_end_265} :catchall_266

    goto :goto_26f

    .line 1736
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "binder":Landroid/os/IBinder;
    .end local v6    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_266
    move-exception v0

    move-object/from16 v39, v7

    move-object/from16 v21, v24

    .line 1736
    .end local v7    # "service":Landroid/content/Intent;
    .end local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "callerFg":Z
    .local v1, "callerFg":Z
    .local v21, "activity":Lcom/android/server/am/ActivityRecord;
    .local v39, "service":Landroid/content/Intent;
    :goto_26b
    move/from16 v1, v26

    goto/16 :goto_419

    .line 1661
    .end local v1    # "callerFg":Z
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .restart local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v5    # "binder":Landroid/os/IBinder;
    .restart local v6    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v7    # "service":Landroid/content/Intent;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .restart local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "callerFg":Z
    :cond_26f
    :goto_26f
    :try_start_26f
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_277
    .catchall {:try_start_26f .. :try_end_277} :catchall_3e3

    .line 1663
    move-object/from16 v4, v24

    if-eqz v4, :cond_292

    .line 1664
    .end local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    :try_start_27b
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-nez v1, :cond_286

    .line 1665
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v4, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 1667
    :cond_286
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_28b
    .catchall {:try_start_27b .. :try_end_28b} :catchall_28c

    goto :goto_292

    .line 1736
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v5    # "binder":Landroid/os/IBinder;
    .end local v6    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :catchall_28c
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v39, v7

    goto :goto_26b

    .line 1669
    .restart local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v5    # "binder":Landroid/os/IBinder;
    .restart local v6    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :cond_292
    :goto_292
    :try_start_292
    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1670
    iget v1, v6, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_29b
    .catchall {:try_start_292 .. :try_end_29b} :catchall_3db

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2a4

    .line 1671
    :try_start_29f
    iget-object v1, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z
    :try_end_2a4
    .catchall {:try_start_29f .. :try_end_2a4} :catchall_28c

    .line 1673
    :cond_2a4
    :try_start_2a4
    iget v1, v6, Lcom/android/server/am/ConnectionRecord;->flags:I
    :try_end_2a6
    .catchall {:try_start_2a4 .. :try_end_2a6} :catchall_3db

    and-int v1, v1, v19

    if-eqz v1, :cond_2ad

    .line 1674
    const/4 v1, 0x1

    :try_start_2ab
    iput-boolean v1, v8, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z
    :try_end_2ad
    .catchall {:try_start_2ab .. :try_end_2ad} :catchall_28c

    .line 1676
    :cond_2ad
    :try_start_2ad
    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_2af
    .catchall {:try_start_2ad .. :try_end_2af} :catchall_3db

    if-eqz v1, :cond_2b7

    .line 1677
    :try_start_2b1
    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    invoke-direct {v12, v1, v6, v2}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z
    :try_end_2b7
    .catchall {:try_start_2b1 .. :try_end_2b7} :catchall_28c

    .line 1679
    :cond_2b7
    :try_start_2b7
    iget-object v1, v12, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;
    :try_end_2bf
    .catchall {:try_start_2b7 .. :try_end_2bf} :catchall_3db

    move-object v0, v1

    .line 1680
    if-nez v0, :cond_2cd

    .line 1681
    :try_start_2c2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1682
    iget-object v1, v12, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2cd
    .catchall {:try_start_2c2 .. :try_end_2cd} :catchall_28c

    .line 1684
    :cond_2cd
    move-object v3, v0

    .line 1684
    .end local v0    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v3, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :try_start_2ce
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d1
    .catchall {:try_start_2ce .. :try_end_2d1} :catchall_3db

    .line 1686
    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_30a

    .line 1687
    :try_start_2d5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1688
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v0
    :try_end_2df
    .catchall {:try_start_2d5 .. :try_end_2df} :catchall_301

    const/16 v19, 0x0

    move-object v1, v12

    move-object v2, v8

    move-object/from16 v20, v3

    move v3, v0

    .line 1688
    .end local v3    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v20, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move-object/from16 v21, v4

    move/from16 v4, v26

    .line 1688
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v22, v5

    move/from16 v5, v19

    .line 1688
    .end local v5    # "binder":Landroid/os/IBinder;
    .local v22, "binder":Landroid/os/IBinder;
    move-object/from16 v39, v7

    move-object v7, v6

    move v6, v9

    .line 1688
    .end local v6    # "c":Lcom/android/server/am/ConnectionRecord;
    .local v7, "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v39    # "service":Landroid/content/Intent;
    :try_start_2f2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_2f6
    .catchall {:try_start_2f2 .. :try_end_2f6} :catchall_2fe

    if-eqz v0, :cond_313

    .line 1690
    nop

    .line 1736
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1690
    const/4 v0, 0x0

    return v0

    .line 1736
    .end local v7    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "binder":Landroid/os/IBinder;
    :catchall_2fe
    move-exception v0

    goto/16 :goto_26b

    .line 1736
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .restart local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .local v7, "service":Landroid/content/Intent;
    :catchall_301
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v39, v7

    move/from16 v1, v26

    .line 1736
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "service":Landroid/content/Intent;
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "service":Landroid/content/Intent;
    goto/16 :goto_419

    .line 1694
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .restart local v3    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "binder":Landroid/os/IBinder;
    .restart local v6    # "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v7    # "service":Landroid/content/Intent;
    .restart local v14    # "b":Lcom/android/server/am/AppBindRecord;
    :cond_30a
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v39, v7

    move-object v7, v6

    .line 1694
    .end local v3    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "binder":Landroid/os/IBinder;
    .end local v6    # "c":Lcom/android/server/am/ConnectionRecord;
    .local v7, "c":Lcom/android/server/am/ConnectionRecord;
    .restart local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "binder":Landroid/os/IBinder;
    .restart local v39    # "service":Landroid/content/Intent;
    :cond_313
    :try_start_313
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_315
    .catchall {:try_start_313 .. :try_end_315} :catchall_3d7

    if-eqz v0, :cond_34a

    .line 1695
    and-int v0, p6, v18

    if-eqz v0, :cond_320

    .line 1696
    :try_start_31b
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1698
    :cond_320
    iget-boolean v0, v8, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-eqz v0, :cond_329

    .line 1699
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 1702
    :cond_329
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v2, :cond_33c

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v2, v2, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_33a

    goto :goto_33c

    :cond_33a
    const/4 v2, 0x0

    goto :goto_33d

    :cond_33c
    :goto_33c
    const/4 v2, 0x1

    :goto_33d
    iget-object v3, v14, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1704
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    :try_end_34a
    .catchall {:try_start_31b .. :try_end_34a} :catchall_2fe

    .line 1712
    :cond_34a
    :try_start_34a
    iget-object v0, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3b8

    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->received:Z
    :try_end_352
    .catchall {:try_start_34a .. :try_end_352} :catchall_3d7

    if-eqz v0, :cond_3b8

    .line 1716
    :try_start_354
    iget-object v0, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v2, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v2, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_354 .. :try_end_360} :catch_361
    .catchall {:try_start_354 .. :try_end_360} :catchall_2fe

    .line 1721
    goto :goto_39b

    .line 1717
    :catch_361
    move-exception v0

    .line 1718
    .local v0, "e":Ljava/lang/Exception;
    :try_start_362
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure sending service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 1719
    invoke-interface {v3}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1718
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_39b
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b5

    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    if-eqz v0, :cond_3b5

    .line 1727
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;
    :try_end_3ae
    .catchall {:try_start_362 .. :try_end_3ae} :catchall_3d7

    move/from16 v1, v26

    const/4 v2, 0x1

    :try_start_3b1
    invoke-direct {v12, v8, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 1727
    .end local v26    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    goto :goto_3c6

    .line 1733
    .end local v1    # "callerFg":Z
    .restart local v26    # "callerFg":Z
    :cond_3b5
    move/from16 v1, v26

    .line 1733
    .end local v26    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    goto :goto_3c6

    .line 1729
    .end local v1    # "callerFg":Z
    .restart local v26    # "callerFg":Z
    :cond_3b8
    move/from16 v1, v26

    .line 1729
    .end local v26    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v0, v0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    if-nez v0, :cond_3c6

    .line 1730
    iget-object v0, v14, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    const/4 v2, 0x0

    invoke-direct {v12, v8, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z

    .line 1733
    :cond_3c6
    :goto_3c6
    iget v0, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v12, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_3cf
    .catchall {:try_start_3b1 .. :try_end_3cf} :catchall_3d5

    .line 1736
    .end local v7    # "c":Lcom/android/server/am/ConnectionRecord;
    .end local v14    # "b":Lcom/android/server/am/AppBindRecord;
    .end local v20    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v22    # "binder":Landroid/os/IBinder;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1737
    nop

    .line 1739
    const/4 v2, 0x1

    return v2

    .line 1736
    :catchall_3d5
    move-exception v0

    goto :goto_419

    .line 1736
    .end local v1    # "callerFg":Z
    .restart local v26    # "callerFg":Z
    :catchall_3d7
    move-exception v0

    move/from16 v1, v26

    .line 1736
    .end local v26    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    goto :goto_419

    .line 1736
    .end local v1    # "callerFg":Z
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .restart local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .local v7, "service":Landroid/content/Intent;
    .restart local v26    # "callerFg":Z
    :catchall_3db
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v39, v7

    move/from16 v1, v26

    .line 1736
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "service":Landroid/content/Intent;
    .end local v26    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "service":Landroid/content/Intent;
    goto :goto_419

    .line 1736
    .end local v1    # "callerFg":Z
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .restart local v7    # "service":Landroid/content/Intent;
    .restart local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "callerFg":Z
    :catchall_3e3
    move-exception v0

    move-object/from16 v39, v7

    move-object/from16 v21, v24

    move/from16 v1, v26

    .line 1736
    .end local v7    # "service":Landroid/content/Intent;
    .end local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "service":Landroid/content/Intent;
    goto :goto_419

    .line 1736
    .end local v1    # "callerFg":Z
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v36    # "isBindExternal":Z
    .end local v37    # "allowInstant":Z
    .end local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .restart local v7    # "service":Landroid/content/Intent;
    .local v10, "isBindExternal":Z
    .restart local v11    # "allowInstant":Z
    .local v14, "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "callerFg":Z
    .restart local v34    # "origId":J
    :catchall_3eb
    move-exception v0

    move-object/from16 v39, v7

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v38, v14

    move-object/from16 v21, v24

    move/from16 v1, v26

    move-wide/from16 v10, v34

    .line 1736
    .end local v7    # "service":Landroid/content/Intent;
    .end local v11    # "allowInstant":Z
    .end local v14    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "callerFg":Z
    .end local v34    # "origId":J
    .restart local v1    # "callerFg":Z
    .local v10, "origId":J
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v36    # "isBindExternal":Z
    .restart local v37    # "allowInstant":Z
    .restart local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "service":Landroid/content/Intent;
    goto :goto_419

    .line 1736
    .end local v1    # "callerFg":Z
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v36    # "isBindExternal":Z
    .end local v37    # "allowInstant":Z
    .end local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .local v10, "isBindExternal":Z
    .restart local v11    # "allowInstant":Z
    .restart local v14    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "service":Landroid/content/Intent;
    .restart local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "callerFg":Z
    .restart local v34    # "origId":J
    :catchall_3fb
    move-exception v0

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v38, v14

    move-object/from16 v39, v23

    move-object/from16 v21, v24

    move/from16 v1, v26

    move-wide/from16 v10, v34

    .line 1736
    .end local v11    # "allowInstant":Z
    .end local v14    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "service":Landroid/content/Intent;
    .end local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "callerFg":Z
    .end local v34    # "origId":J
    .restart local v1    # "callerFg":Z
    .local v10, "origId":J
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v36    # "isBindExternal":Z
    .restart local v37    # "allowInstant":Z
    .restart local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "service":Landroid/content/Intent;
    goto :goto_419

    .line 1736
    .end local v1    # "callerFg":Z
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v36    # "isBindExternal":Z
    .end local v37    # "allowInstant":Z
    .end local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .local v5, "origId":J
    .local v10, "isBindExternal":Z
    .restart local v11    # "allowInstant":Z
    .restart local v14    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "service":Landroid/content/Intent;
    .restart local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "callerFg":Z
    :catchall_40b
    move-exception v0

    move/from16 v36, v10

    move/from16 v37, v11

    move-object/from16 v38, v14

    move-object/from16 v39, v23

    move-object/from16 v21, v24

    move/from16 v1, v26

    move-wide v10, v5

    .line 1736
    .end local v5    # "origId":J
    .end local v11    # "allowInstant":Z
    .end local v14    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "service":Landroid/content/Intent;
    .end local v24    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "callerFg":Z
    .restart local v1    # "callerFg":Z
    .local v10, "origId":J
    .restart local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .restart local v36    # "isBindExternal":Z
    .restart local v37    # "allowInstant":Z
    .restart local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v39    # "service":Landroid/content/Intent;
    :goto_419
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1479
    .end local v1    # "callerFg":Z
    .end local v8    # "s":Lcom/android/server/am/ServiceRecord;
    .end local v10    # "origId":J
    .end local v15    # "isCallerSystem":Z
    .end local v16    # "clientIntent":Landroid/app/PendingIntent;
    .end local v17    # "clientLabel":I
    .end local v21    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v25    # "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    .end local v36    # "isBindExternal":Z
    .end local v37    # "allowInstant":Z
    .end local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v39    # "service":Landroid/content/Intent;
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local p3    # "service":Landroid/content/Intent;
    :cond_41d
    move-object/from16 v38, v9

    .line 1479
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "callerApp":Lcom/android/server/am/ProcessRecord;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when binding service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method bringDownDisabledPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;IZZZ)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "evenPersistent"    # Z
    .param p5, "killProcess"    # Z
    .param p6, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZZ)Z"
        }
    .end annotation

    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p3

    .line 3307
    const/4 v10, 0x0

    .line 3309
    .local v10, "didSomething":Z
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 3310
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3313
    :cond_e
    const/4 v11, 0x1

    const/4 v0, -0x1

    if-ne v9, v0, :cond_4e

    .line 3314
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v11

    .local v0, "i":I
    :goto_19
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    if-ltz v12, :cond_71

    .line 3315
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    .line 3316
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 3315
    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    move-result v0

    or-int/2addr v10, v0

    .line 3317
    if-nez p6, :cond_3a

    if-eqz v10, :cond_3a

    .line 3318
    return v11

    .line 3320
    :cond_3a
    if-eqz p6, :cond_4b

    if-nez p2, :cond_4b

    .line 3321
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    iget v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v7, v8, v0}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 3314
    :cond_4b
    add-int/lit8 v0, v12, -0x1

    .end local v12    # "i":I
    .restart local v0    # "i":I
    goto :goto_19

    .line 3325
    .end local v0    # "i":I
    :cond_4e
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3326
    .local v12, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v12, :cond_6a

    .line 3327
    iget-object v13, v12, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 3328
    .local v13, "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p5

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->collectPackageServicesLocked(Ljava/lang/String;Ljava/util/Set;ZZZLandroid/util/ArrayMap;)Z

    move-result v10

    .line 3331
    .end local v13    # "items":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_6a
    if-eqz p6, :cond_71

    if-nez p2, :cond_71

    .line 3332
    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 3337
    .end local v12    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    :cond_71
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget-object v1, v7, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-static {v9, v0, v1}, Lcom/android/server/am/ActiveServicesInjector;->removeServiceLocked(ILandroid/util/SparseArray;Ljava/util/ArrayList;)V

    .line 3339
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_98

    .line 3340
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    .restart local v0    # "i":I
    :goto_83
    if-ltz v0, :cond_93

    .line 3341
    iget-object v1, v7, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    invoke-direct {v7, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3340
    add-int/lit8 v0, v0, -0x1

    goto :goto_83

    .line 3343
    .end local v0    # "i":I
    :cond_93
    iget-object v0, v7, Lcom/android/server/am/ActiveServices;->mTmpCollectionResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3346
    :cond_98
    return v10
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 20
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 3366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 3367
    .local v2, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    move-object/from16 v3, p1

    iget v0, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 3368
    .local v4, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .local v0, "i":I
    :goto_16
    if-ltz v0, :cond_30

    .line 3369
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 3370
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 3371
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3368
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 3376
    .end local v0    # "i":I
    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .restart local v0    # "i":I
    :goto_35
    move v6, v0

    .end local v0    # "i":I
    .local v6, "i":I
    if-ltz v6, :cond_93

    .line 3377
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ServiceRecord;

    .line 3378
    .local v14, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_90

    .line 3379
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_6b

    .line 3380
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stopping service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": remove task"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    invoke-direct {v1, v14}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_90

    .line 3383
    :cond_6b
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v9, 0x1

    .line 3384
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v15

    move-object v8, v14

    move-object/from16 v11, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;I)V

    .line 3383
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3385
    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_90

    iget-object v0, v14, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_90

    .line 3389
    const/4 v0, 0x0

    :try_start_8b
    invoke-direct {v1, v14, v5, v0}, Lcom/android/server/am/ActiveServices;->sendServiceArgsLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_8e
    .catch Landroid/os/TransactionTooLargeException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 3392
    goto :goto_90

    .line 3390
    :catch_8f
    move-exception v0

    .line 3376
    .end local v14    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_90
    :goto_90
    add-int/lit8 v0, v6, -0x1

    .end local v6    # "i":I
    .restart local v0    # "i":I
    goto :goto_35

    .line 3397
    .end local v0    # "i":I
    :cond_93
    return-void
.end method

.method protected dumpService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .registers 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "opti"    # I
    .param p6, "dumpAll"    # Z

    move-object v8, p0

    .line 4284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 4286
    .local v9, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/DumpUtils;->filterRecord(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v10

    .line 4288
    .local v10, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/am/ServiceRecord;>;"
    iget-object v1, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4289
    iget-object v0, v8, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4291
    .local v0, "users":[I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v4, v2, :cond_49

    aget v5, v0, v4

    .line 4292
    .local v5, "user":I
    iget-object v6, v8, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4293
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v6, :cond_2b

    .line 4294
    goto :goto_46

    .line 4296
    :cond_2b
    iget-object v7, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 4297
    .local v7, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v11, v3

    .local v11, "i":I
    :goto_2e
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_46

    .line 4298
    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 4300
    .local v12, "r1":Lcom/android/server/am/ServiceRecord;
    invoke-interface {v10, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43

    .line 4301
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4297
    .end local v12    # "r1":Lcom/android/server/am/ServiceRecord;
    :cond_43
    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    .line 4291
    .end local v5    # "user":I
    .end local v6    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v7    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v11    # "i":I
    :cond_46
    :goto_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 4305
    .end local v0    # "users":[I
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_85

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4307
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_54

    .line 4308
    return v3

    .line 4312
    :cond_54
    sget-object v0, Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;->INSTANCE:Lcom/android/server/am/-$$Lambda$Y_KRxxoOXfy-YceuDG7WHd46Y_I;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4314
    const/4 v0, 0x0

    .line 4315
    .local v0, "needSep":Z
    nop

    .local v3, "i":I
    :goto_5f
    move v11, v3

    .end local v3    # "i":I
    .restart local v11    # "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_83

    .line 4316
    if-eqz v0, :cond_6b

    .line 4317
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4319
    :cond_6b
    const/4 v0, 0x1

    .line 4320
    const-string v2, ""

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    move-object v1, v8

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/am/ServiceRecord;[Ljava/lang/String;Z)V

    .line 4315
    add-int/lit8 v3, v11, 0x1

    .end local v11    # "i":I
    .restart local v3    # "i":I
    goto :goto_5f

    .line 4322
    .end local v3    # "i":I
    :cond_83
    const/4 v1, 0x1

    return v1

    .line 4305
    .end local v0    # "needSep":Z
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method forceStopPackageLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3350
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3351
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_3f

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 3352
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 3353
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 3354
    .local v3, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-object v4, v3, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3355
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3356
    iput-boolean v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 3352
    .end local v3    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 3359
    .end local v1    # "i":I
    :cond_36
    iget-boolean v1, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-eqz v1, :cond_3f

    .line 3360
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 3363
    :cond_3f
    return-void
.end method

.method foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z
    .registers 11
    .param p1, "aa"    # Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    .param p2, "nowElapsed"    # J

    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, "canRemove":Z
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 919
    iget-boolean v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    if-eqz v1, :cond_e

    .line 922
    const/4 v0, 0x1

    goto :goto_58

    .line 924
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-nez v1, :cond_29

    iget-boolean v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-eqz v1, :cond_17

    goto :goto_29

    .line 942
    :cond_17
    iget-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    add-long/2addr v1, v3

    .line 944
    .local v1, "minTime":J
    cmp-long v3, p2, v1

    if-ltz v3, :cond_26

    .line 950
    const/4 v0, 0x1

    goto :goto_58

    .line 953
    :cond_26
    iput-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .end local v1    # "minTime":J
    goto :goto_58

    .line 925
    :cond_29
    :goto_29
    iget-wide v1, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    .line 926
    iget-wide v3, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    iget-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3a

    .line 927
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    goto :goto_40

    .line 928
    :cond_3a
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    :goto_40
    add-long/2addr v1, v3

    .line 929
    .restart local v1    # "minTime":J
    cmp-long v3, p2, v1

    if-ltz v3, :cond_47

    .line 933
    const/4 v0, 0x1

    goto :goto_57

    .line 936
    :cond_47
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    add-long/2addr v3, p2

    .line 937
    .local v3, "reportTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_54

    move-wide v5, v3

    goto :goto_55

    :cond_54
    move-wide v5, v1

    :goto_55
    iput-wide v5, p1, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 941
    .end local v1    # "minTime":J
    .end local v3    # "reportTime":J
    :goto_57
    nop

    .line 958
    :goto_58
    return v0
.end method

.method foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V
    .registers 9
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1177
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v0, :cond_4a

    .line 1178
    const/4 v1, 0x0

    .line 1179
    .local v1, "changed":Z
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_19
    if-ltz v2, :cond_43

    .line 1180
    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1181
    .local v4, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mUid:I

    iget v6, p1, Lcom/android/server/am/UidRecord;->uid:I

    if-ne v5, v6, :cond_40

    .line 1182
    iget v5, p1, Lcom/android/server/am/UidRecord;->curProcState:I

    const/4 v6, 0x2

    if-gt v5, v6, :cond_38

    .line 1183
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v5, :cond_35

    .line 1184
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1185
    const/4 v1, 0x1

    .line 1187
    :cond_35
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileTop:Z

    goto :goto_40

    .line 1188
    :cond_38
    iget-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-eqz v5, :cond_40

    .line 1189
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    .line 1190
    const/4 v1, 0x1

    .line 1179
    .end local v4    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 1194
    .end local v2    # "j":I
    :cond_43
    if-eqz v1, :cond_4a

    .line 1195
    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1198
    .end local v1    # "changed":Z
    :cond_4a
    return-void
.end method

.method public getRunningServiceControlPanelLocked(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 3691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3692
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActiveServices;->getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v1

    .line 3693
    .local v1, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v1, :cond_40

    .line 3694
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "conni":I
    :goto_16
    if-ltz v2, :cond_40

    .line 3695
    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3696
    .local v3, "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3d

    .line 3697
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_3a

    .line 3698
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v5, Lcom/android/server/am/ConnectionRecord;->clientIntent:Landroid/app/PendingIntent;

    return-object v5

    .line 3696
    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 3694
    .end local v3    # "conn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v4    # "i":I
    :cond_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 3703
    .end local v2    # "conni":I
    :cond_40
    const/4 v2, 0x0

    return-object v2
.end method

.method getRunningServiceInfoLocked(IIIZZ)Ljava/util/List;
    .registers 16
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "canInteractAcrossUsers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3642
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3644
    .local v1, "ident":J
    const/4 v3, 0x0

    if-eqz p5, :cond_6e

    .line 3645
    :try_start_c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v4}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v4

    .line 3646
    .local v4, "users":[I
    move v5, v3

    .local v5, "ui":I
    :goto_15
    array-length v6, v4

    if-ge v5, v6, :cond_44

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_44

    .line 3647
    aget v6, v4, v5

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 3648
    .local v6, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v7, v3

    .local v7, "i":I
    :goto_25
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_41

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, p1, :cond_41

    .line 3649
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ServiceRecord;

    .line 3650
    .local v8, "sr":Lcom/android/server/am/ServiceRecord;
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    .end local v8    # "sr":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 3646
    .end local v6    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v7    # "i":I
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 3654
    .end local v5    # "ui":I
    :cond_44
    nop

    .local v3, "i":I
    :goto_45
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, p1, :cond_6a

    .line 3655
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 3656
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    nop

    .line 3657
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v6

    .line 3658
    .local v6, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v7, v5, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v7, v6, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 3659
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3654
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 3661
    .end local v3    # "i":I
    .end local v4    # "users":[I
    :cond_6a
    goto :goto_d5

    .line 3684
    :catchall_6b
    move-exception v3

    goto/16 :goto_da

    .line 3662
    :cond_6e
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3663
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActiveServices;->getServicesLocked(I)Landroid/util/ArrayMap;

    move-result-object v5

    .line 3664
    .local v5, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    move v6, v3

    .local v6, "i":I
    :goto_77
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_9f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, p1, :cond_9f

    .line 3665
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 3667
    .local v7, "sr":Lcom/android/server/am/ServiceRecord;
    if-nez p4, :cond_95

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_9c

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v8, p3, :cond_9c

    .line 3668
    :cond_95
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3664
    .end local v7    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_9c
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 3672
    .end local v6    # "i":I
    :cond_9f
    nop

    .restart local v3    # "i":I
    :goto_a0
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_d5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p1, :cond_d5

    .line 3673
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 3674
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget v7, v6, Lcom/android/server/am/ServiceRecord;->userId:I

    if-ne v7, v4, :cond_d2

    if-nez p4, :cond_c6

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_d2

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v7, p3, :cond_d2

    .line 3676
    :cond_c6
    nop

    .line 3677
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActiveServices;->makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v7

    .line 3678
    .local v7, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v8, v6, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iput-wide v8, v7, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .line 3679
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catchall {:try_start_c .. :try_end_d2} :catchall_6b

    .line 3672
    .end local v6    # "r":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 3684
    .end local v3    # "i":I
    .end local v4    # "userId":I
    .end local v5    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :cond_d5
    :goto_d5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3685
    nop

    .line 3687
    return-object v0

    .line 3684
    :goto_da
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getServiceByNameLocked(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingUser"    # I

    .line 379
    invoke-direct {p0, p2}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    return-object v0
.end method

.method getServicesLocked(I)Landroid/util/ArrayMap;
    .registers 3
    .param p1, "callingUser"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    return-object v0
.end method

.method hasBackgroundServicesLocked(I)Z
    .registers 6
    .param p1, "callingUser"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 384
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_17

    const/4 v1, 0x1

    nop

    :cond_17
    return v1
.end method

.method final killServicesLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 19
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "allowRestart"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3429
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "i":I
    :goto_c
    const/4 v4, 0x0

    if-ltz v0, :cond_1d

    .line 3430
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 3431
    .local v5, "r":Lcom/android/server/am/ConnectionRecord;
    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 3429
    .end local v5    # "r":Lcom/android/server/am/ConnectionRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 3433
    .end local v0    # "i":I
    :cond_1d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3434
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3436
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    .line 3439
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_2f
    if-ltz v5, :cond_da

    .line 3440
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 3441
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    monitor-enter v7

    .line 3442
    :try_start_40
    iget-object v8, v6, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked()V

    .line 3443
    monitor-exit v7
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_d7

    .line 3444
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v7, v2, :cond_5b

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_5b

    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v7, :cond_5b

    .line 3445
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3447
    :cond_5b
    iput-object v4, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3448
    iput-object v4, v6, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3449
    iput v0, v6, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3450
    invoke-virtual {v6}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 3451
    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3455
    iget-object v7, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 3456
    .local v7, "numClients":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "bindingi":I
    :goto_71
    if-ltz v8, :cond_d1

    .line 3457
    iget-object v9, v6, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/IntentBindRecord;

    .line 3460
    .local v9, "b":Lcom/android/server/am/IntentBindRecord;
    iput-object v4, v9, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 3461
    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->received:Z

    iput-boolean v0, v9, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 3466
    iget-object v10, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v3

    .local v10, "appi":I
    :goto_8a
    if-ltz v10, :cond_cc

    .line 3467
    iget-object v11, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3469
    .local v11, "proc":Lcom/android/server/am/ProcessRecord;
    iget-boolean v12, v11, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v12, :cond_c7

    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v12, :cond_9d

    .line 3470
    goto :goto_c7

    .line 3475
    :cond_9d
    iget-object v12, v9, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppBindRecord;

    .line 3476
    .local v12, "abind":Lcom/android/server/am/AppBindRecord;
    const/4 v13, 0x0

    .line 3477
    .local v13, "hasCreate":Z
    iget-object v14, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    sub-int/2addr v14, v3

    .local v14, "conni":I
    :goto_ad
    if-ltz v14, :cond_c4

    .line 3478
    iget-object v4, v12, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 3479
    .local v4, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v0, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x31

    if-ne v0, v3, :cond_bf

    .line 3481
    const/4 v13, 0x1

    .line 3482
    goto :goto_c4

    .line 3477
    .end local v4    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_bf
    add-int/lit8 v14, v14, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_ad

    .line 3485
    .end local v14    # "conni":I
    :cond_c4
    :goto_c4
    if-nez v13, :cond_c7

    .line 3486
    nop

    .line 3466
    .end local v11    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "abind":Lcom/android/server/am/AppBindRecord;
    .end local v13    # "hasCreate":Z
    :cond_c7
    :goto_c7
    add-int/lit8 v10, v10, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_8a

    .line 3456
    .end local v9    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v10    # "appi":I
    :cond_cc
    add-int/lit8 v8, v8, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_71

    .line 3439
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "numClients":I
    .end local v8    # "bindingi":I
    :cond_d1
    add-int/lit8 v5, v5, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto/16 :goto_2f

    .line 3443
    .restart local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :catchall_d7
    move-exception v0

    :try_start_d8
    monitor-exit v7
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v0

    .line 3499
    .end local v5    # "i":I
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_da
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v0

    .line 3502
    .local v0, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .local v4, "i":I
    :goto_e7
    if-ltz v4, :cond_1e8

    .line 3503
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 3507
    .local v5, "sr":Lcom/android/server/am/ServiceRecord;
    iget-boolean v6, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v6, :cond_fa

    .line 3508
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 3513
    :cond_fa
    iget-object v6, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 3514
    .local v6, "curRec":Lcom/android/server/am/ServiceRecord;
    if-eq v6, v5, :cond_131

    .line 3515
    if-eqz v6, :cond_12e

    .line 3516
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " in process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not same as in map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "curRec":Lcom/android/server/am/ServiceRecord;
    :cond_12e
    :goto_12e
    const/4 v12, 0x0

    goto/16 :goto_1e4

    .line 3524
    .restart local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v6    # "curRec":Lcom/android/server/am/ServiceRecord;
    :cond_131
    if-eqz p2, :cond_195

    iget v7, v5, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v7, v7

    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_195

    iget-object v7, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_195

    .line 3527
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service crashed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " times, stopping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    const/16 v7, 0x7552

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3530
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget v9, v5, Lcom/android/server/am/ServiceRecord;->crashCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x2

    iget-object v10, v5, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 3529
    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3531
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    goto :goto_12e

    .line 3532
    :cond_195
    if-eqz p2, :cond_1e0

    iget-object v7, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v8, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 3533
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v7

    if-nez v7, :cond_1a5

    goto :goto_1e0

    .line 3536
    :cond_1a5
    invoke-direct {v1, v5, v3}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    move-result v7

    .line 3541
    .local v7, "canceled":Z
    iget-boolean v8, v5, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v8, :cond_12e

    iget-boolean v8, v5, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    if-nez v8, :cond_1b3

    if-eqz v7, :cond_12e

    .line 3542
    :cond_1b3
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_12e

    .line 3543
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 3544
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v8, :cond_1d5

    .line 3545
    iget-object v8, v5, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v9, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v9

    .line 3546
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3545
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v9, v10, v11}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    goto :goto_1d6

    .line 3548
    :cond_1d5
    const/4 v12, 0x0

    :goto_1d6
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v8

    if-nez v8, :cond_1e4

    .line 3550
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "curRec":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "canceled":Z
    goto :goto_1e4

    .line 3534
    .restart local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v6    # "curRec":Lcom/android/server/am/ServiceRecord;
    :cond_1e0
    :goto_1e0
    const/4 v12, 0x0

    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3502
    .end local v5    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v6    # "curRec":Lcom/android/server/am/ServiceRecord;
    :cond_1e4
    :goto_1e4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_e7

    .line 3557
    .end local v4    # "i":I
    :cond_1e8
    if-nez p2, :cond_254

    .line 3558
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 3561
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_1f6
    if-ltz v4, :cond_224

    .line 3562
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 3563
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_221

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_221

    .line 3565
    iget-object v6, v1, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3567
    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 3568
    invoke-direct {v1, v5}, Lcom/android/server/am/ActiveServices;->clearRestartingIfNeededLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3561
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_221
    add-int/lit8 v4, v4, -0x1

    goto :goto_1f6

    .line 3571
    .end local v4    # "i":I
    :cond_224
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    .restart local v4    # "i":I
    :goto_22b
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    if-ltz v3, :cond_254

    .line 3572
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3573
    .local v4, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_251

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_251

    .line 3575
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3571
    .end local v4    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_251
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    goto :goto_22b

    .line 3581
    .end local v4    # "i":I
    :cond_254
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3582
    .restart local v3    # "i":I
    :goto_25a
    if-lez v3, :cond_273

    .line 3583
    add-int/lit8 v3, v3, -0x1

    .line 3584
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3585
    .local v4, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v2, :cond_272

    .line 3586
    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->forceClearTracker()V

    .line 3587
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3590
    .end local v4    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_272
    goto :goto_25a

    .line 3592
    :cond_273
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 3593
    return-void
.end method

.method makeRunningServiceInfoLocked(Lcom/android/server/am/ServiceRecord;)Landroid/app/ActivityManager$RunningServiceInfo;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3596
    new-instance v0, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningServiceInfo;-><init>()V

    .line 3598
    .local v0, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 3599
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_13

    .line 3600
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    .line 3602
    :cond_13
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    .line 3603
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 3604
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    .line 3605
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 3606
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    .line 3607
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    .line 3608
    iget v1, p1, Lcom/android/server/am/ServiceRecord;->crashCount:I

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->crashCount:I

    .line 3609
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iput-wide v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->lastActivityTime:J

    .line 3610
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v1, :cond_43

    .line 3611
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3613
    :cond_43
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v1, :cond_4d

    .line 3614
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3616
    :cond_4d
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5f

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_5f

    .line 3617
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3619
    :cond_5f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_6f

    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v1, :cond_6f

    .line 3620
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    .line 3623
    :cond_6f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "conni":I
    :goto_77
    if-ltz v1, :cond_a7

    .line 3624
    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3625
    .local v2, "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a4

    .line 3626
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 3627
    .local v4, "conn":Lcom/android/server/am/ConnectionRecord;
    iget v5, v4, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    if-eqz v5, :cond_a1

    .line 3628
    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    .line 3629
    iget v5, v4, Lcom/android/server/am/ConnectionRecord;->clientLabel:I

    iput v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    .line 3630
    return-object v0

    .line 3625
    .end local v4    # "conn":Lcom/android/server/am/ConnectionRecord;
    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 3623
    .end local v2    # "connl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v3    # "i":I
    :cond_a4
    add-int/lit8 v1, v1, -0x1

    goto :goto_77

    .line 3634
    .end local v1    # "conni":I
    :cond_a7
    return-object v0
.end method

.method newServiceDumperLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)Lcom/android/server/am/ActiveServices$ServiceDumper;
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "opti"    # I
    .param p5, "dumpAll"    # Z
    .param p6, "dumpPackage"    # Ljava/lang/String;

    .line 4249
    new-instance v8, Lcom/android/server/am/ActiveServices$ServiceDumper;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ActiveServices$ServiceDumper;-><init>(Lcom/android/server/am/ActiveServices;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V

    return-object v8
.end method

.method peekServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 15
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 828
    nop

    .line 829
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 830
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 828
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v0

    .line 832
    .local v0, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v1, 0x0

    .line 833
    .local v1, "ret":Landroid/os/IBinder;
    if-eqz v0, :cond_64

    .line 835
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v2, :cond_33

    .line 842
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iget-object v3, v3, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/IntentBindRecord;

    .line 843
    .local v2, "ib":Lcom/android/server/am/IntentBindRecord;
    if-eqz v2, :cond_64

    .line 844
    iget-object v1, v2, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .end local v2    # "ib":Lcom/android/server/am/IntentBindRecord;
    goto :goto_64

    .line 836
    :cond_33
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: Accessing service from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :cond_64
    :goto_64
    return-object v1
.end method

.method final performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 2317
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2318
    return-void

    .line 2320
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->isServiceNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2326
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting service that is not needed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    return-void

    .line 2330
    :cond_27
    :try_start_27
    sget-boolean v1, Lcom/android/server/am/ActiveServices;->SERVICE_RESCHEDULE:Z

    if-eqz v1, :cond_77

    .line 2331
    const/4 v1, 0x0

    .line 2332
    .local v1, "shouldDelay":Z
    const/4 v2, 0x0

    .line 2333
    .local v2, "top_rc":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 2334
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_3a

    .line 2335
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    move-object v2, v4

    .line 2338
    :cond_3a
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    if-eqz v4, :cond_47

    move v0, v5

    nop

    .line 2340
    .local v0, "isPersistent":Z
    :cond_47
    if-eqz v2, :cond_5a

    .line 2341
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->launching:Z

    if-eqz v4, :cond_5a

    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5a

    if-nez v0, :cond_5a

    .line 2343
    const/4 v1, 0x1

    .line 2346
    :cond_5a
    if-nez v1, :cond_70

    .line 2347
    iget-object v4, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v4}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v7

    iget-boolean v8, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    goto :goto_76

    .line 2353
    :cond_70
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->resetRestartCounter()V

    .line 2354
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActiveServices;->scheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;Z)Z

    .line 2356
    .end local v0    # "isPersistent":Z
    .end local v1    # "shouldDelay":Z
    .end local v2    # "top_rc":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_76
    goto :goto_8a

    .line 2357
    :cond_77
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-boolean v4, p1, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;
    :try_end_8a
    .catch Landroid/os/TransactionTooLargeException; {:try_start_27 .. :try_end_8a} :catch_8b

    .line 2361
    :goto_8a
    goto :goto_8c

    .line 2359
    :catch_8b
    move-exception v0

    .line 2362
    :goto_8c
    return-void
.end method

.method processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5d

    .line 3249
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    .line 3250
    .local v1, "sr":Lcom/android/server/am/ServiceRecord;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_23

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    .line 3251
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_23
    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_5a

    .line 3253
    :cond_27
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing bringing down service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ServiceRecord;->isolatedProc:Lcom/android/server/am/ProcessRecord;

    .line 3255
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3256
    add-int/lit8 v0, v0, -0x1

    .line 3258
    const-string v2, "com.android.systemui"

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 3259
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mRestartingServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3260
    goto :goto_5a

    .line 3263
    :cond_57
    invoke-direct {p0, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3248
    .end local v1    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3266
    .end local v0    # "i":I
    :cond_5d
    return-void
.end method

.method publishServiceLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Landroid/os/IBinder;)V
    .registers 21
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "service"    # Landroid/os/IBinder;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1743
    move-object/from16 v3, p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1747
    .local v4, "origId":J
    if-eqz v2, :cond_b7

    .line 1748
    :try_start_c
    new-instance v0, Landroid/content/Intent$FilterComparison;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_b0

    move-object/from16 v6, p2

    :try_start_10
    invoke-direct {v0, v6}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    move-object v7, v0

    .line 1750
    .local v7, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IntentBindRecord;

    move-object v8, v0

    .line 1751
    .local v8, "b":Lcom/android/server/am/IntentBindRecord;
    const/4 v9, 0x0

    if-eqz v8, :cond_a3

    iget-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->received:Z

    if-nez v0, :cond_a3

    .line 1752
    iput-object v3, v8, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    .line 1753
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->requested:Z

    .line 1754
    iput-boolean v0, v8, Lcom/android/server/am/IntentBindRecord;->received:Z

    .line 1755
    iget-object v10, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    sub-int/2addr v10, v0

    .local v10, "conni":I
    :goto_32
    if-ltz v10, :cond_a3

    .line 1756
    iget-object v0, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v11, v0

    .line 1757
    .local v11, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move v0, v9

    .local v0, "i":I
    :goto_3e
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_9f

    .line 1758
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    move-object v13, v0

    .line 1759
    .local v13, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v0, v0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7, v0}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_56
    .catchall {:try_start_10 .. :try_end_56} :catchall_ae

    if-nez v0, :cond_59

    .line 1766
    goto :goto_9b

    .line 1770
    :cond_59
    :try_start_59
    iget-object v0, v13, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    iget-object v14, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-interface {v0, v14, v3, v9}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_60} :catch_61
    .catchall {:try_start_59 .. :try_end_60} :catchall_ae

    .line 1775
    goto :goto_9b

    .line 1771
    :catch_61
    move-exception v0

    .line 1772
    .local v0, "e":Ljava/lang/Exception;
    :try_start_62
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure sending service "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to connection "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    .line 1773
    invoke-interface {v9}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (in "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v13, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1772
    invoke-static {v14, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "c":Lcom/android/server/am/ConnectionRecord;
    :goto_9b
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "i":I
    .local v0, "i":I
    const/4 v9, 0x0

    goto :goto_3e

    .line 1755
    .end local v0    # "i":I
    .end local v11    # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_9f
    add-int/lit8 v10, v10, -0x1

    const/4 v9, 0x0

    goto :goto_32

    .line 1780
    .end local v10    # "conni":I
    :cond_a3
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    invoke-direct {v1, v2, v0, v9}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_ad
    .catchall {:try_start_62 .. :try_end_ad} :catchall_ae

    .end local v7    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v8    # "b":Lcom/android/server/am/IntentBindRecord;
    goto :goto_b9

    .line 1783
    :catchall_ae
    move-exception v0

    goto :goto_b3

    :catchall_b0
    move-exception v0

    move-object/from16 v6, p2

    :goto_b3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_b7
    move-object/from16 v6, p2

    :goto_b9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1784
    nop

    .line 1785
    return-void
.end method

.method removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 15
    .param p1, "c"    # Lcom/android/server/am/ConnectionRecord;
    .param p2, "skipApp"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "skipAct"    # Lcom/android/server/am/ActivityRecord;

    .line 2957
    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->conn:Landroid/app/IServiceConnection;

    invoke-interface {v0}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2958
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    .line 2959
    .local v1, "b":Lcom/android/server/am/AppBindRecord;
    iget-object v2, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    .line 2960
    .local v2, "s":Lcom/android/server/am/ServiceRecord;
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2961
    .local v3, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    if-eqz v3, :cond_22

    .line 2962
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2963
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_22

    .line 2964
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    :cond_22
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2968
    iget-object v4, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_3c

    iget-object v4, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, p3, :cond_3c

    .line 2969
    iget-object v4, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v4, :cond_3c

    .line 2970
    iget-object v4, p1, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2973
    :cond_3c
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    if-eq v4, p2, :cond_73

    .line 2974
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2975
    iget v4, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_53

    .line 2976
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->updateHasAboveClientLocked()V

    .line 2980
    :cond_53
    iget v4, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_6a

    .line 2981
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->updateWhitelistManager()V

    .line 2982
    iget-boolean v4, v2, Lcom/android/server/am/ServiceRecord;->whitelistManager:Z

    if-nez v4, :cond_6a

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_6a

    .line 2983
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2986
    :cond_6a
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_73

    .line 2987
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 2990
    :cond_73
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/util/ArrayList;

    .line 2991
    if-eqz v3, :cond_8c

    .line 2992
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2993
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8c

    .line 2994
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2998
    :cond_8c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(ILjava/lang/String;ILandroid/content/ComponentName;)V

    .line 3000
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_b0

    .line 3001
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iget-object v6, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3004
    :cond_b0
    iget-boolean v4, p1, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v4, :cond_154

    .line 3007
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    if-eqz v4, :cond_12c

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_12c

    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v4, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_12c

    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-boolean v4, v4, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    if-eqz v4, :cond_12c

    .line 3010
    :try_start_cf
    const-string/jumbo v4, "unbind"

    invoke-direct {p0, v2, v6, v4}, Lcom/android/server/am/ActiveServices;->bumpServiceExecutingLocked(Lcom/android/server/am/ServiceRecord;ZLjava/lang/String;)V

    .line 3011
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v4, v7, :cond_f1

    iget v4, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_f1

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xc

    if-gt v4, v7, :cond_f1

    .line 3016
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v6, v8}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3018
    :cond_f1
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v7, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 3019
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v6, v4, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    .line 3022
    iget-object v4, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iput-boolean v6, v4, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 3023
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v1, Lcom/android/server/am/AppBindRecord;->intent:Lcom/android/server/am/IntentBindRecord;

    iget-object v7, v7, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v7}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v4, v2, v7}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_10f} :catch_110

    .line 3027
    goto :goto_12c

    .line 3024
    :catch_110
    move-exception v4

    .line 3025
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when unbinding service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3026
    invoke-direct {p0, v2}, Lcom/android/server/am/ActiveServices;->serviceProcessGoneLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3031
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_12c
    :goto_12c
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3033
    iget v4, p1, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_154

    .line 3034
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->hasAutoCreateConnections()Z

    move-result v4

    .line 3035
    .local v4, "hasAutoCreate":Z
    if-nez v4, :cond_151

    .line 3036
    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v7, :cond_151

    .line 3037
    iget-object v7, v2, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v8

    .line 3038
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 3037
    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/android/internal/app/procstats/ServiceState;->setBound(ZIJ)V

    .line 3041
    :cond_151
    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3044
    .end local v4    # "hasAutoCreate":Z
    :cond_154
    return-void
.end method

.method scheduleServiceForegroundTransitionTimeoutLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3818
    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_11

    goto :goto_2a

    .line 3821
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3823
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3824
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 3825
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3826
    return-void

    .line 3819
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2a
    :goto_2a
    return-void
.end method

.method scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3802
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_d

    goto :goto_3f

    .line 3805
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3807
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3809
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemMainLooperReady:Z

    if-nez v1, :cond_2d

    const-string/jumbo v1, "system"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3810
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3813
    :cond_2d
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 3814
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v2, :cond_38

    const-wide/16 v2, 0x4e20

    goto :goto_3b

    :cond_38
    const-wide/32 v2, 0x30d40

    .line 3813
    :goto_3b
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3815
    return-void

    .line 3803
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3f
    :goto_3f
    return-void
.end method

.method serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;III)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "type"    # I
    .param p3, "startId"    # I
    .param p4, "res"    # I

    .line 3047
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3048
    .local v0, "inDestroying":Z
    if-eqz p1, :cond_b2

    .line 3049
    const/4 v1, 0x1

    if-ne p2, v1, :cond_57

    .line 3052
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 3053
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-eq p4, v2, :cond_4e

    packed-switch p4, :pswitch_data_ce

    .line 3092
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown service start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3076
    :pswitch_2c
    invoke-virtual {p1, p3, v3, v3}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 3077
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_52

    .line 3078
    iput v3, v2, Lcom/android/server/am/ServiceRecord$StartItem;->deliveryCount:I

    .line 3079
    iget v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/android/server/am/ServiceRecord$StartItem;->doneExecutingCount:I

    .line 3081
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_52

    .line 3064
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :pswitch_3c
    invoke-virtual {p1, p3, v3, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3065
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v2

    if-ne v2, p3, :cond_52

    .line 3068
    iput-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    goto :goto_52

    .line 3057
    :pswitch_48
    invoke-virtual {p1, p3, v3, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3059
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->stopIfKilled:Z

    .line 3060
    goto :goto_52

    .line 3088
    :cond_4e
    invoke-virtual {p1, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    .line 3089
    nop

    .line 3095
    :cond_52
    :goto_52
    if-nez p4, :cond_a7

    .line 3096
    iput-boolean v3, p1, Lcom/android/server/am/ServiceRecord;->callStart:Z

    goto :goto_a7

    .line 3098
    :cond_57
    const/4 v2, 0x2

    if-ne p2, v2, :cond_a7

    .line 3102
    if-nez v0, :cond_81

    .line 3107
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_a7

    .line 3108
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service done with onDestroy, but not inDestroying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    .line 3111
    :cond_81
    iget v2, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    if-eq v2, v1, :cond_a7

    .line 3112
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service done with onDestroy, but executeNesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    iput v1, p1, Lcom/android/server/am/ServiceRecord;->executeNesting:I

    .line 3118
    :cond_a7
    :goto_a7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3119
    .local v1, "origId":J
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 3120
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3121
    .end local v1    # "origId":J
    goto :goto_cc

    .line 3122
    :cond_b2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done executing unknown service from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3122
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    :goto_cc
    return-void

    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_48
        :pswitch_48
        :pswitch_3c
        :pswitch_2c
    .end packed-switch
.end method

.method serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "serviceRecord"    # Ljava/lang/CharSequence;

    .line 3796
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;ILjava/lang/String;)V

    .line 3799
    return-void
.end method

.method serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .line 3755
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3756
    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v1, :cond_45

    iget-boolean v1, p1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-eqz v1, :cond_f

    goto :goto_45

    .line 3760
    :cond_f
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3761
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1c

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v2, :cond_1c

    .line 3763
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3769
    :cond_1c
    const/4 v2, 0x0

    :try_start_1d
    iput-boolean v2, p1, Lcom/android/server/am/ServiceRecord;->fgWaiting:Z

    .line 3770
    invoke-direct {p0, p1}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 3771
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3773
    if-eqz v1, :cond_44

    .line 3774
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context.startForegroundService() did not then call Service.startForeground(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 3778
    :cond_44
    return-void

    .line 3757
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3771
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method serviceTimeout(Lcom/android/server/am/ProcessRecord;)V
    .registers 19
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    move-object/from16 v1, p0

    .line 3707
    move-object/from16 v8, p1

    const/4 v2, 0x0

    .line 3709
    .local v2, "anrMessage":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3710
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_f6

    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_19

    goto/16 :goto_f6

    .line 3713
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3714
    .local v4, "now":J
    nop

    .line 3715
    iget-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v0, :cond_25

    const/16 v0, 0x4e20

    goto :goto_28

    :cond_25
    const v0, 0x30d40

    :goto_28
    int-to-long v6, v0

    sub-long v6, v4, v6

    .line 3716
    .local v6, "maxTime":J
    const/4 v0, 0x0

    .line 3717
    .local v0, "timeout":Lcom/android/server/am/ServiceRecord;
    const-wide/16 v9, 0x0

    .line 3718
    .local v9, "nextTime":J
    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "i":I
    :goto_36
    if-ltz v11, :cond_54

    .line 3719
    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ServiceRecord;

    .line 3720
    .local v12, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v13, v13, v6

    if-gez v13, :cond_48

    .line 3721
    move-object v0, v12

    .line 3722
    goto :goto_54

    .line 3724
    :cond_48
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    cmp-long v13, v13, v9

    if-lez v13, :cond_51

    .line 3725
    iget-wide v13, v12, Lcom/android/server/am/ServiceRecord;->executingStart:J

    move-wide v9, v13

    .line 3718
    .end local v12    # "sr":Lcom/android/server/am/ServiceRecord;
    :cond_51
    add-int/lit8 v11, v11, -0x1

    goto :goto_36

    .line 3728
    .end local v11    # "i":I
    :cond_54
    :goto_54
    if-eqz v0, :cond_bf

    iget-object v11, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 3729
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Timeout executing service: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 3731
    .local v11, "sw":Ljava/io/StringWriter;
    new-instance v12, Lcom/android/internal/util/FastPrintWriter;

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-direct {v12, v11, v13, v14}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 3732
    .local v12, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3733
    const-string v13, "    "

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/ServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3734
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V

    .line 3735
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDump:Ljava/lang/String;

    .line 3736
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3737
    iget-object v13, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mLastAnrDumpClearer:Ljava/lang/Runnable;

    move-wide v15, v4

    const-wide/32 v4, 0x6ddd00

    .end local v4    # "now":J
    .local v15, "now":J
    invoke-virtual {v13, v14, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 3739
    .end local v11    # "sw":Ljava/io/StringWriter;
    .end local v12    # "pw":Ljava/io/PrintWriter;
    goto :goto_df

    .line 3740
    .end local v15    # "now":J
    .restart local v4    # "now":J
    :cond_bf
    move-wide v15, v4

    .end local v4    # "now":J
    .restart local v15    # "now":J
    iget-object v4, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3742
    .local v4, "msg":Landroid/os/Message;
    iput-object v8, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3743
    iget-object v5, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-boolean v11, v8, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v11, :cond_d8

    .line 3744
    const-wide/16 v11, 0x4e20

    :goto_d6
    add-long/2addr v11, v9

    goto :goto_dc

    :cond_d8
    const-wide/32 v11, 0x30d40

    goto :goto_d6

    .line 3743
    :goto_dc
    invoke-virtual {v5, v4, v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_df
    .catchall {:try_start_8 .. :try_end_df} :catchall_fb

    .line 3746
    .end local v0    # "timeout":Lcom/android/server/am/ServiceRecord;
    .end local v2    # "anrMessage":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "maxTime":J
    .end local v15    # "now":J
    .local v9, "anrMessage":Ljava/lang/String;
    :goto_df
    move-object v9, v2

    :try_start_e0
    monitor-exit v3
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_f3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3748
    if-eqz v9, :cond_f2

    .line 3749
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v8

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 3751
    :cond_f2
    return-void

    .line 3746
    :catchall_f3
    move-exception v0

    move-object v2, v9

    goto :goto_fc

    .line 3711
    .end local v9    # "anrMessage":Ljava/lang/String;
    .restart local v2    # "anrMessage":Ljava/lang/String;
    :cond_f6
    :goto_f6
    :try_start_f6
    monitor-exit v3
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_fb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3746
    :catchall_fb
    move-exception v0

    :goto_fc
    :try_start_fc
    monitor-exit v3
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setServiceForegroundLocked(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "flags"    # I

    .line 902
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 903
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 905
    .local v1, "origId":J
    :try_start_8
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v3

    .line 906
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v3, :cond_11

    .line 907
    invoke-direct {p0, v3, p3, p4, p5}, Lcom/android/server/am/ActiveServices;->setServiceForegroundInnerLocked(Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;I)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_16

    .line 910
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 911
    nop

    .line 912
    return-void

    .line 910
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    .registers 18
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callerFg"    # Z
    .param p5, "addToStarting"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    .line 687
    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->getTracker()Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v10

    .line 688
    .local v10, "stracker":Lcom/android/internal/app/procstats/ServiceState;
    const/4 v0, 0x1

    if-eqz v10, :cond_17

    .line 689
    iget-object v1, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v1

    iget-wide v2, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 691
    :cond_17
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 692
    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1

    .line 693
    :try_start_21
    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked()V

    .line 694
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_74

    .line 695
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v9

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->bringUpServiceLocked(Lcom/android/server/am/ServiceRecord;IZZZ)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_3f

    .line 697
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "!!"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 700
    :cond_3f
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v2, :cond_68

    if-eqz p5, :cond_68

    .line 701
    iget-object v3, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4f

    move v11, v0

    nop

    :cond_4f
    move v0, v11

    .line 702
    .local v0, "first":Z
    iget-object v3, v8, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, v7, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    add-long/2addr v3, v5

    iput-wide v3, v9, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 711
    if-eqz v0, :cond_67

    .line 712
    invoke-virtual {v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 714
    .end local v0    # "first":Z
    :cond_67
    goto :goto_71

    :cond_68
    if-nez p4, :cond_6e

    iget-boolean v0, v9, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    if-eqz v0, :cond_71

    .line 715
    :cond_6e
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 718
    :cond_71
    :goto_71
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v0

    .line 694
    .end local v1    # "error":Ljava/lang/String;
    :catchall_74
    move-exception v0

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v0
.end method

.method startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;I)Landroid/content/ComponentName;
    .registers 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "fgRequired"    # Z
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v10, p7

    .line 413
    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v12, :cond_48

    .line 414
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 415
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_21

    .line 421
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eqz v1, :cond_1e

    move v1, v8

    goto :goto_1f

    :cond_1e
    move v1, v9

    .line 421
    .end local v0    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :goto_1f
    move v0, v1

    .line 422
    .local v0, "callerFg":Z
    goto :goto_49

    .line 416
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_21
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find app for caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") when starting service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    .end local v0    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_48
    move v0, v8

    .line 423
    .local v0, "callerFg":Z
    :goto_49
    move/from16 v16, v0

    .line 426
    .end local v0    # "callerFg":Z
    .local v16, "callerFg":Z
    const/4 v7, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 427
    move-object v0, v11

    move-object v1, v13

    move-object/from16 v2, p3

    move-object v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, p8

    move/from16 v8, v16

    move/from16 v9, v17

    move-object v12, v10

    move/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v9

    .line 429
    .local v9, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    const/4 v10, 0x0

    if-nez v9, :cond_68

    .line 430
    return-object v10

    .line 432
    :cond_68
    iget-object v0, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-nez v0, :cond_7e

    .line 433
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "!"

    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    if-eqz v2, :cond_77

    .line 434
    iget-object v2, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    goto :goto_7a

    :cond_77
    const-string/jumbo v2, "private to package"

    :goto_7a
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-object v0

    .line 437
    :cond_7e
    iget-object v8, v9, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    .line 439
    .local v8, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 440
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to start service with non-existent user! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-object v10

    .line 446
    :cond_a5
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getUidStateLocked(I)I

    move-result v17

    .line 453
    .local v17, "uidState":I
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLocked(I)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    move/from16 v18, v0

    .line 458
    .local v18, "bgLaunch":Z
    const/4 v0, 0x0

    .line 459
    .local v0, "forcedStandby":Z
    if-eqz v18, :cond_cd

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-direct {v11, v1, v2}, Lcom/android/server/am/ActiveServices;->appRestrictedAnyInBackground(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 464
    const/4 v0, 0x1

    .line 468
    .end local v0    # "forcedStandby":Z
    .local v19, "forcedStandby":Z
    :cond_cd
    move/from16 v19, v0

    const/4 v0, 0x0

    .line 469
    .local v0, "forceSilentAbort":Z
    if-eqz p6, :cond_137

    .line 470
    iget-object v2, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v3, 0x4c

    iget-object v4, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    .line 472
    .local v2, "mode":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_136

    packed-switch v2, :pswitch_data_2d6

    .line 488
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "!!"

    const-string v5, "foreground not allowed as per app op"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 480
    :pswitch_f2
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startForegroundService not allowed due to app op: service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 481
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v1, 0x0

    .line 485
    .end local p6    # "fgRequired":Z
    .local v1, "fgRequired":Z
    const/4 v0, 0x1

    .line 486
    nop

    .line 494
    move/from16 v20, v0

    move v6, v1

    goto :goto_13b

    .line 476
    .end local v1    # "fgRequired":Z
    .restart local p6    # "fgRequired":Z
    :cond_136
    :pswitch_136
    nop

    .line 494
    .end local v2    # "mode":I
    :cond_137
    move/from16 v6, p6

    move/from16 v20, v0

    .line 494
    .end local v0    # "forceSilentAbort":Z
    .end local p6    # "fgRequired":Z
    .local v6, "fgRequired":Z
    .local v20, "forceSilentAbort":Z
    :goto_13b
    if-nez v19, :cond_14a

    iget-boolean v0, v8, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-nez v0, :cond_144

    if-nez v6, :cond_144

    goto :goto_14a

    .line 533
    :cond_144
    move v10, v6

    move-object/from16 v22, v9

    move-object v9, v8

    goto/16 :goto_1e3

    .line 497
    :cond_14a
    :goto_14a
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v8, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v5, 0x0

    const/16 v21, 0x0

    move v4, v14

    move v10, v6

    move/from16 v6, v21

    .end local v6    # "fgRequired":Z
    .local v10, "fgRequired":Z
    move/from16 v7, v19

    move-object/from16 v22, v9

    move-object v9, v8

    move-object v8, v12

    .line 497
    .end local v8    # "r":Lcom/android/server/am/ServiceRecord;
    .local v9, "r":Lcom/android/server/am/ServiceRecord;
    .local v22, "res":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZLjava/lang/String;)I

    move-result v0

    .line 501
    .local v0, "allowed":I
    if-eqz v0, :cond_1e2

    .line 502
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background start not allowed: service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 503
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startFg?="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v7, 0x1

    if-eq v0, v7, :cond_1e0

    if-eqz v20, :cond_1b3

    goto :goto_1e0

    .line 511
    :cond_1b3
    if-eqz v19, :cond_1b9

    .line 515
    if-eqz v10, :cond_1b9

    .line 519
    const/4 v1, 0x0

    return-object v1

    .line 524
    :cond_1b9
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UidRecord;

    .line 525
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "?"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app is in background uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 509
    .end local v1    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_1e0
    :goto_1e0
    const/4 v1, 0x0

    return-object v1

    .line 533
    .end local v0    # "allowed":I
    :cond_1e2
    const/4 v7, 0x1

    :goto_1e3
    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1ef

    if-eqz v10, :cond_1ef

    .line 538
    const/4 v6, 0x0

    .line 541
    .end local v10    # "fgRequired":Z
    .restart local v6    # "fgRequired":Z
    move v10, v6

    .line 541
    .end local v6    # "fgRequired":Z
    .restart local v10    # "fgRequired":Z
    :cond_1ef
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/4 v5, 0x0

    iget v6, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 541
    move v1, v15

    move-object v3, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkGrantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/am/ActivityManagerService$NeededUriGrants;I)Lcom/android/server/am/ActivityManagerService$NeededUriGrants;

    move-result-object v8

    .line 548
    .local v8, "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v0, :cond_217

    .line 550
    move-object v0, v11

    move-object v1, v9

    move-object v2, v12

    move v3, v15

    move-object v4, v13

    move/from16 v5, v16

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/content/Intent;ZI)Z

    move-result v0

    if-nez v0, :cond_217

    .line 552
    const/4 v0, 0x0

    return-object v0

    .line 556
    :cond_217
    const/4 v6, 0x0

    invoke-direct {v11, v9, v15, v6}, Lcom/android/server/am/ActiveServices;->unscheduleServiceRestartLocked(Lcom/android/server/am/ServiceRecord;IZ)Z

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 560
    iput-boolean v7, v9, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 561
    iput-boolean v6, v9, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    .line 562
    iput-boolean v10, v9, Lcom/android/server/am/ServiceRecord;->fgRequired:Z

    .line 563
    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/am/ServiceRecord$StartItem;

    const/4 v2, 0x0

    invoke-virtual {v9}, Lcom/android/server/am/ServiceRecord;->makeNextStartId()I

    move-result v3

    move-object v0, v4

    move-object v1, v9

    move-object v7, v4

    move-object v4, v13

    move-object/from16 v23, v5

    move-object v5, v8

    move-object/from16 v24, v8

    move v8, v6

    move v6, v15

    .end local v8    # "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    .local v24, "neededGrants":Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ServiceRecord$StartItem;-><init>(Lcom/android/server/am/ServiceRecord;ZILandroid/content/Intent;Lcom/android/server/am/ActivityManagerService$NeededUriGrants;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    if-eqz v10, :cond_25d

    .line 568
    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v0, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-static {v0}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x4c

    iget-object v0, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Z)I

    .line 572
    :cond_25d
    iget v0, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v11, v0}, Lcom/android/server/am/ActiveServices;->getServiceMapLocked(I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v6

    .line 573
    .local v6, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v0, 0x0

    .line 574
    .local v0, "addToStarting":Z
    if-nez v16, :cond_2c8

    if-nez v10, :cond_2c8

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_2c8

    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, v9, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 575
    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v1

    if-eqz v1, :cond_2c8

    .line 576
    iget-object v1, v11, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3, v8}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 577
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_295

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_28d

    goto :goto_295

    .line 605
    :cond_28d
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2c8

    .line 609
    const/4 v0, 0x1

    .line 609
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    goto :goto_2c8

    .line 590
    .restart local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_295
    :goto_295
    iget-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    if-eqz v2, :cond_29c

    .line 594
    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v2

    .line 596
    :cond_29c
    iget-object v2, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, v11, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-lt v2, v3, :cond_2c7

    .line 598
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delaying start of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v2, v6, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 601
    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    return-object v2

    .line 604
    :cond_2c7
    const/4 v0, 0x1

    .line 637
    .end local v0    # "addToStarting":Z
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v7, "addToStarting":Z
    :cond_2c8
    :goto_2c8
    move v7, v0

    move-object v0, v11

    move-object v1, v6

    move-object v2, v13

    move-object v3, v9

    move/from16 v4, v16

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    move-result-object v0

    .line 638
    .local v0, "cmp":Landroid/content/ComponentName;
    return-object v0

    nop

    :pswitch_data_2d6
    .packed-switch 0x0
        :pswitch_136
        :pswitch_f2
    .end packed-switch
.end method

.method stopInBackgroundLocked(I)V
    .registers 16
    .param p1, "uid"    # I

    .line 787
    iget-object v0, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 788
    .local v0, "services":Lcom/android/server/am/ActiveServices$ServiceMap;
    const/4 v1, 0x0

    .line 789
    .local v1, "stopping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    if-eqz v0, :cond_ad

    .line 790
    iget-object v2, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_91

    .line 791
    iget-object v3, v0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 792
    .local v3, "service":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_8e

    iget-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v4, :cond_8e

    .line 793
    iget-object v5, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/server/am/ServiceRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/am/ActivityManagerService;->getAppStartModeLocked(ILjava/lang/String;IIZZZLjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8e

    .line 798
    if-nez v1, :cond_4b

    .line 799
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 801
    :cond_4b
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 802
    .local v4, "compName":Ljava/lang/String;
    iget-object v5, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v4}, Lcom/android/server/am/EventLogTags;->writeAmStopIdleService(ILjava/lang/String;)V

    .line 803
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 804
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "Stopping service due to app idle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 806
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    iget-wide v6, v3, Lcom/android/server/am/ServiceRecord;->createRealTime:J

    .line 808
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 807
    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 809
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    const-string v6, "ActivityManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    .end local v4    # "compName":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_8e
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 816
    .end local v2    # "i":I
    :cond_91
    if-eqz v1, :cond_ad

    .line 817
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_99
    if-ltz v2, :cond_ad

    .line 818
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 819
    .restart local v3    # "service":Lcom/android/server/am/ServiceRecord;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 820
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices$ServiceMap;->ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 821
    invoke-direct {p0, v3}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V

    .line 817
    .end local v3    # "service":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_99

    .line 825
    .end local v2    # "i":I
    :cond_ad
    return-void
.end method

.method stopServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 21
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "userId"    # I

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 757
    iget-object v0, v12, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 758
    .local v14, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v13, :cond_3c

    if-eqz v14, :cond_f

    goto :goto_3c

    .line 759
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when stopping service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_3c
    :goto_3c
    move-object/from16 v15, p2

    const/4 v4, 0x0

    .line 767
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 766
    move-object v1, v12

    move-object v2, v15

    move-object/from16 v3, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/ActiveServices;->retrieveServiceLocked(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIIZZZZ)Lcom/android/server/am/ActiveServices$ServiceLookupResult;

    move-result-object v1

    .line 768
    .local v1, "r":Lcom/android/server/am/ActiveServices$ServiceLookupResult;
    if-eqz v1, :cond_71

    .line 769
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_6f

    .line 770
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 772
    .local v2, "origId":J
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {v12, v0}, Lcom/android/server/am/ActiveServices;->stopServiceLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_6a

    .line 774
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    nop

    .line 776
    const/4 v0, 0x1

    return v0

    .line 774
    :catchall_6a
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 778
    .end local v2    # "origId":J
    :cond_6f
    const/4 v0, -0x1

    return v0

    .line 781
    :cond_71
    const/4 v0, 0x0

    return v0
.end method

.method stopServiceTokenLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .registers 10
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "startId"    # I

    .line 855
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActiveServices;->findServiceLocked(Landroid/content/ComponentName;Landroid/os/IBinder;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v0

    .line 856
    .local v0, "r":Lcom/android/server/am/ServiceRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_98

    .line 857
    if-ltz p3, :cond_63

    .line 861
    invoke-virtual {v0, p3, v1, v1}, Lcom/android/server/am/ServiceRecord;->findDeliveredStart(IZZ)Lcom/android/server/am/ServiceRecord$StartItem;

    move-result-object v2

    .line 862
    .local v2, "si":Lcom/android/server/am/ServiceRecord$StartItem;
    if-eqz v2, :cond_2a

    .line 863
    :goto_13
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 864
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    .line 865
    .local v3, "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    invoke-virtual {v3}, Lcom/android/server/am/ServiceRecord$StartItem;->removeUriPermissionsLocked()V

    .line 866
    if-ne v3, v2, :cond_29

    .line 867
    goto :goto_2a

    .line 869
    .end local v3    # "cur":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_29
    goto :goto_13

    .line 872
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getLastStartId()I

    move-result v3

    if-eq v3, p3, :cond_31

    .line 873
    return v1

    .line 876
    :cond_31
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_63

    .line 877
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopServiceToken startId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is last, but have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ServiceRecord;->deliveredStarts:Ljava/util/ArrayList;

    .line 878
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " remaining args"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 877
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v2    # "si":Lcom/android/server/am/ServiceRecord$StartItem;
    :cond_63
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2

    .line 884
    :try_start_6a
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->stats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked()V

    .line 885
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_95

    .line 886
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    .line 887
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v2, :cond_87

    .line 888
    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->tracker:Lcom/android/internal/app/procstats/ServiceState;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    .line 889
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 888
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ServiceState;->setStarted(ZIJ)V

    .line 891
    :cond_87
    iput-boolean v1, v0, Lcom/android/server/am/ServiceRecord;->callStart:Z

    .line 892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 893
    .local v2, "origId":J
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/am/ActiveServices;->bringDownServiceIfNeededLocked(Lcom/android/server/am/ServiceRecord;ZZ)V

    .line 894
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    const/4 v1, 0x1

    return v1

    .line 885
    .end local v2    # "origId":J
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v1

    .line 897
    :cond_98
    return v1
.end method

.method systemServicesReady()V
    .registers 3

    .line 371
    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 372
    .local v0, "ast":Lcom/android/server/AppStateTracker;
    new-instance v1, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;-><init>(Lcom/android/server/am/ActiveServices;)V

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 373
    return-void
.end method

.method unbindFinishedLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Z)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "doRebind"    # Z

    .line 1833
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1835
    .local v0, "origId":J
    if-eqz p1, :cond_57

    .line 1836
    :try_start_6
    new-instance v2, Landroid/content/Intent$FilterComparison;

    invoke-direct {v2, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 1838
    .local v2, "filter":Landroid/content/Intent$FilterComparison;
    iget-object v3, p1, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/IntentBindRecord;

    .line 1843
    .local v3, "b":Lcom/android/server/am/IntentBindRecord;
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mDestroyingServices:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1844
    .local v4, "inDestroying":Z
    if-eqz v3, :cond_4d

    .line 1845
    iget-object v5, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_4b

    if-nez v4, :cond_4b

    .line 1848
    const/4 v5, 0x0

    .line 1849
    .local v5, "inFg":Z
    iget-object v7, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "i":I
    :goto_2e
    if-ltz v7, :cond_45

    .line 1850
    iget-object v8, v3, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 1851
    .local v8, "client":Lcom/android/server/am/ProcessRecord;
    if-eqz v8, :cond_42

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_52

    if-eqz v9, :cond_42

    .line 1853
    const/4 v5, 0x1

    .line 1854
    goto :goto_45

    .line 1849
    .end local v8    # "client":Lcom/android/server/am/ProcessRecord;
    :cond_42
    add-int/lit8 v7, v7, -0x1

    goto :goto_2e

    .line 1858
    .end local v7    # "i":I
    :cond_45
    :goto_45
    :try_start_45
    invoke-direct {p0, p1, v3, v5, v6}, Lcom/android/server/am/ActiveServices;->requestServiceBindingLocked(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/IntentBindRecord;ZZ)Z
    :try_end_48
    .catch Landroid/os/TransactionTooLargeException; {:try_start_45 .. :try_end_48} :catch_49
    .catchall {:try_start_45 .. :try_end_48} :catchall_52

    .line 1861
    goto :goto_4a

    .line 1859
    :catch_49
    move-exception v6

    .line 1862
    .end local v5    # "inFg":Z
    :goto_4a
    goto :goto_4d

    .line 1865
    :cond_4b
    :try_start_4b
    iput-boolean v6, v3, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    .line 1869
    :cond_4d
    :goto_4d
    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActiveServices;->serviceDoneExecutingLocked(Lcom/android/server/am/ServiceRecord;ZZ)V
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_52

    .end local v2    # "filter":Landroid/content/Intent$FilterComparison;
    .end local v3    # "b":Lcom/android/server/am/IntentBindRecord;
    .end local v4    # "inDestroying":Z
    goto :goto_57

    .line 1872
    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_57
    :goto_57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1873
    nop

    .line 1874
    return-void
.end method

.method unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    .registers 13
    .param p1, "connection"    # Landroid/app/IServiceConnection;

    .line 1788
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1790
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceConnections:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1791
    .local v1, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 1792
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbind failed: could not find connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1792
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    return v2

    .line 1797
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1799
    .local v3, "origId":J
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_c5

    .line 1800
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 1801
    .local v5, "r":Lcom/android/server/am/ConnectionRecord;
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1802
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_6c

    .line 1804
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " not removed for binder "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1808
    :cond_6c
    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_c3

    .line 1809
    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v8, :cond_87

    .line 1810
    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v8}, Lcom/android/server/am/ActiveServices;->updateWhitelistManagerLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1813
    :cond_87
    iget v8, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v9, 0x8000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_b8

    .line 1814
    iget-object v8, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-boolean v6, v8, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    .line 1815
    iget-object v8, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v9, v9, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v9, v9, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v10, v10, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v10, :cond_b5

    iget-object v10, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v10, v10, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v10, v10, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v10, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v10, :cond_b3

    goto :goto_b5

    :cond_b3
    move v6, v2

    nop

    :cond_b5
    :goto_b5
    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1819
    :cond_b8
    iget-object v6, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 1821
    .end local v5    # "r":Lcom/android/server/am/ConnectionRecord;
    :cond_c3
    goto/16 :goto_2e

    .line 1823
    :cond_c5
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_ca
    .catchall {:try_start_2e .. :try_end_ca} :catchall_cf

    .line 1826
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    nop

    .line 1829
    return v6

    .line 1826
    :catchall_cf
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V
    .registers 15
    .param p1, "smap"    # Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActiveServices$ActiveForegroundApp;>;"
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 965
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 966
    .local v2, "now":J
    const-wide v4, 0x7fffffffffffffffL

    .line 967
    .local v4, "nextUpdateTime":J
    if-eqz p1, :cond_74

    .line 970
    iget-object v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_1a
    if-ltz v6, :cond_55

    .line 971
    iget-object v8, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 972
    .local v8, "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_43

    .line 973
    invoke-virtual {p0, v8, v2, v3}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    .line 974
    .local v9, "canRemove":Z
    if-eqz v9, :cond_3a

    .line 976
    iget-object v10, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 977
    iput-boolean v7, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 978
    goto :goto_52

    .line 980
    :cond_3a
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_43

    .line 981
    iget-wide v10, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    move-wide v4, v10

    .line 984
    .end local v9    # "canRemove":Z
    :cond_43
    iget-boolean v9, v8, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mAppOnTop:Z

    if-nez v9, :cond_52

    .line 985
    if-nez v0, :cond_4f

    .line 986
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v9

    .line 990
    :cond_4f
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    .end local v8    # "aa":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_52
    :goto_52
    add-int/lit8 v6, v6, -0x1

    goto :goto_1a

    .line 993
    .end local v6    # "i":I
    :cond_55
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 994
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v4, v7

    if-gez v7, :cond_74

    .line 997
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 998
    .local v6, "msg":Landroid/os/Message;
    nop

    .line 999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 998
    invoke-virtual {p1, v6, v7, v8}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1002
    .end local v6    # "msg":Landroid/os/Message;
    :cond_74
    iget-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    if-nez v6, :cond_7d

    .line 1003
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_4 .. :try_end_79} :catchall_85

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1005
    :cond_7d
    const/4 v6, 0x0

    :try_start_7e
    iput-boolean v6, p1, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1006
    .end local v2    # "now":J
    .end local v4    # "nextUpdateTime":J
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_85

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1009
    return-void

    .line 1006
    :catchall_85
    move-exception v2

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method updateScreenStateLocked(Z)V
    .registers 16
    .param p1, "screenOn"    # Z

    .line 1124
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    if-eq v0, p1, :cond_87

    .line 1125
    iput-boolean p1, p0, Lcom/android/server/am/ActiveServices;->mScreenOn:Z

    .line 1129
    if-eqz p1, :cond_87

    .line 1130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1132
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_87

    .line 1133
    iget-object v4, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 1134
    .local v4, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    const-wide v5, 0x7fffffffffffffffL

    .line 1135
    .local v5, "nextUpdateTime":J
    const/4 v7, 0x0

    .line 1136
    .local v7, "changed":Z
    iget-object v8, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .local v8, "j":I
    :goto_2b
    const-wide/16 v9, 0x0

    if-ltz v8, :cond_72

    .line 1137
    iget-object v11, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;

    .line 1138
    .local v11, "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    cmp-long v9, v12, v9

    if-nez v9, :cond_46

    .line 1139
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_6f

    .line 1140
    iput-boolean v3, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    .line 1141
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    goto :goto_6f

    .line 1144
    :cond_46
    iget-boolean v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mShownWhileScreenOn:Z

    if-nez v9, :cond_56

    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iget-wide v12, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartTime:J

    cmp-long v9, v9, v12

    if-nez v9, :cond_56

    .line 1149
    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mStartVisibleTime:J

    iput-wide v0, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mEndTime:J

    .line 1151
    :cond_56
    invoke-virtual {p0, v11, v0, v1}, Lcom/android/server/am/ActiveServices;->foregroundAppShownEnoughLocked(Lcom/android/server/am/ActiveServices$ActiveForegroundApp;J)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 1154
    iget-object v9, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    iget-object v10, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    iput-boolean v3, v4, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundAppsChanged:Z

    .line 1156
    const/4 v7, 0x1

    goto :goto_6f

    .line 1158
    :cond_67
    iget-wide v9, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    cmp-long v9, v9, v5

    if-gez v9, :cond_6f

    .line 1159
    iget-wide v5, v11, Lcom/android/server/am/ActiveServices$ActiveForegroundApp;->mHideTime:J

    .line 1136
    .end local v11    # "active":Lcom/android/server/am/ActiveServices$ActiveForegroundApp;
    :cond_6f
    :goto_6f
    add-int/lit8 v8, v8, -0x1

    goto :goto_2b

    .line 1164
    .end local v8    # "j":I
    :cond_72
    if-eqz v7, :cond_78

    .line 1166
    invoke-direct {p0, v4, v9, v10}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    goto :goto_84

    .line 1167
    :cond_78
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v5, v8

    if-gez v8, :cond_84

    .line 1168
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/ActiveServices;->requestUpdateActiveForegroundAppsLocked(Lcom/android/server/am/ActiveServices$ServiceMap;J)V

    .line 1132
    .end local v4    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v5    # "nextUpdateTime":J
    .end local v7    # "changed":Z
    :cond_84
    :goto_84
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1173
    .end local v0    # "nowElapsed":J
    .end local v2    # "i":I
    :cond_87
    return-void
.end method

.method public updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 3781
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3782
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 3783
    .local v1, "serviceMap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-eqz v1, :cond_35

    .line 3784
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 3785
    .local v2, "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_18
    if-ltz v3, :cond_35

    .line 3786
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    .line 3787
    .local v4, "serviceRecord":Lcom/android/server/am/ServiceRecord;
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 3788
    iput-object p1, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 3789
    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3785
    .end local v4    # "serviceRecord":Lcom/android/server/am/ServiceRecord;
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 3793
    .end local v2    # "servicesByName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    .end local v3    # "j":I
    :cond_35
    return-void
.end method

.method public updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "clientProc"    # Lcom/android/server/am/ProcessRecord;

    .line 1417
    const/4 v0, 0x0

    .line 1418
    .local v0, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "updatedProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    :goto_4
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_39

    .line 1419
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    .line 1420
    .local v3, "conn":Lcom/android/server/am/ConnectionRecord;
    iget-object v4, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1421
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_36

    if-ne v4, p1, :cond_1f

    .line 1422
    goto :goto_36

    .line 1423
    :cond_1f
    if-nez v2, :cond_28

    .line 1424
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v2, v5

    goto :goto_2f

    .line 1425
    :cond_28
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1426
    goto :goto_36

    .line 1428
    :cond_2f
    :goto_2f
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1429
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/am/ActiveServices;->updateServiceClientActivitiesLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ConnectionRecord;Z)Z

    .line 1418
    .end local v3    # "conn":Lcom/android/server/am/ConnectionRecord;
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1431
    .end local v0    # "i":I
    :cond_39
    return-void
.end method

.method protected writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4253
    iget-object v3, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4254
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 4255
    .local v4, "outterToken":J
    iget-object v0, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    .line 4256
    .local v0, "users":[I
    array-length v6, v0

    const/4 v8, 0x0

    :goto_18
    if-ge v8, v6, :cond_61

    aget v9, v0, v8

    .line 4257
    .local v9, "user":I
    iget-object v10, v1, Lcom/android/server/am/ActiveServices;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActiveServices$ServiceMap;

    .line 4258
    .local v10, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    if-nez v10, :cond_2a

    .line 4259
    nop

    .line 4256
    move/from16 v16, v8

    goto :goto_5e

    .line 4261
    :cond_2a
    const-wide v11, 0x20b00000001L

    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4262
    .local v11, "token":J
    const-wide v13, 0x10500000001L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4263
    iget-object v13, v10, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByName:Landroid/util/ArrayMap;

    .line 4264
    .local v13, "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3e
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_59

    .line 4265
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ServiceRecord;

    move/from16 v16, v8

    const-wide v7, 0x20b00000002L

    invoke-virtual {v15, v2, v7, v8}, Lcom/android/server/am/ServiceRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4264
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    goto :goto_3e

    .line 4268
    .end local v14    # "i":I
    :cond_59
    move/from16 v16, v8

    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4256
    .end local v9    # "user":I
    .end local v10    # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v11    # "token":J
    .end local v13    # "alls":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/am/ServiceRecord;>;"
    :goto_5e
    add-int/lit8 v8, v16, 0x1

    goto :goto_18

    .line 4270
    :cond_61
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4271
    .end local v0    # "users":[I
    .end local v4    # "outterToken":J
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4272
    return-void

    .line 4271
    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
