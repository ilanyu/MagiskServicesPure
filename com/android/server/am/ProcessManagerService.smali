.class public Lcom/android/server/am/ProcessManagerService;
.super Lmiui/process/ProcessManagerNative;
.source "ProcessManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessManagerService$LocalService;,
        Lcom/android/server/am/ProcessManagerService$MainHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final MAX_PROCESS_CONFIG_HISTORY:I = 0x1e

.field static final PACKAGE_NAME_CAMERA:Ljava/lang/String; = "com.android.camera"

.field static final PROCESS_RESTART_TIMEOUT:J = 0x7d0L

.field static final RESTORE_AI_PROCESSES_INFO_MSG:I = 0x1

.field static final SKIP_PRELOAD_COUNT_LIMIT:I = 0x2

.field static final SKIP_PRELOAD_FC_TIME_OUT:J = 0x124f80L

.field public static final SKIP_PRELOAD_KILLED:Z

.field static final SKIP_PRELOAD_KILLED_TIME_OUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "ProcessManager"

.field static final USER_OWNER:I = 0x0

.field static final USER_XSPACE:I = 0x3e7


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAdjBoostProcessMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

.field final mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

.field mHistoryNext:I

.field private mKilledProcessRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowMemoryKillerObserver:Lcom/android/server/am/LowMemoryKillerObserver;

.field private mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field final mProcessConfigHistory:[Lmiui/process/ProcessConfig;

.field private mProcessKiller:Lcom/android/server/am/ProcessKiller;

.field private mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

.field private mProcessStarter:Lcom/android/server/am/ProcessStarter;

.field final mServiceThread:Lcom/android/server/ServiceThread;

.field private mSystemSignatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 136
    const-string/jumbo v0, "ro.sys.proc.skip_pre_killed"

    .line 137
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessManagerService;->SKIP_PRELOAD_KILLED:Z

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    invoke-direct {p0}, Lmiui/process/ProcessManagerNative;-><init>()V

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    .line 132
    const/16 v0, 0x1e

    new-array v0, v0, [Lmiui/process/ProcessConfig;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    .line 140
    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    .line 141
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 142
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 143
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 144
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 146
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Lcom/android/server/am/ProcessKiller;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/ProcessKiller;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    .line 148
    new-instance v0, Lcom/android/server/am/ProcessStarter;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessStarter;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    .line 149
    new-instance v0, Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ProcessPolicy;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    .line 150
    new-instance v0, Lcom/android/server/am/MiuiApplicationThreadManager;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiApplicationThreadManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    .line 151
    new-instance v0, Lcom/android/server/am/ForegroundInfoManager;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ForegroundInfoManager;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    .line 152
    new-instance v0, Lcom/android/server/am/LowMemoryKillerObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/LowMemoryKillerObserver;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLowMemoryKillerObserver:Lcom/android/server/am/LowMemoryKillerObserver;

    .line 153
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLowMemoryKillerObserver:Lcom/android/server/am/LowMemoryKillerObserver;

    invoke-virtual {v0}, Lcom/android/server/am/LowMemoryKillerObserver;->start()V

    .line 155
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ProcessManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 157
    new-instance v0, Lcom/android/server/am/ProcessManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;-><init>(Lcom/android/server/am/ProcessManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->systemReady()V

    .line 161
    const-class v0, Lmiui/process/ProcessManagerInternal;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessManagerService$LocalService;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    .line 164
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/MiuiApplicationThreadManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessManagerService;->removeNotificationIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessManagerService;->restartProcessIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessStarter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/ProcessManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessKiller;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ProcessManagerService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ProcessManagerService;->reportCameraBoost(JII)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/ProcessManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/ProcessManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ForegroundInfoManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessManagerService;

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    return-object v0
.end method

.method private addConfigToHistory(Lmiui/process/ProcessConfig;)V
    .registers 5
    .param p1, "config"    # Lmiui/process/ProcessConfig;

    .line 1791
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/process/ProcessConfig;->setKillingClockTime(J)V

    .line 1792
    iget v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessManagerService;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    .line 1793
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    iget v1, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    aput-object p1, v0, v1

    .line 1794
    return-void
.end method

.method private allowPreload(Ljava/util/List;I)Z
    .registers 11
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;I)Z"
        }
    .end annotation

    .line 1227
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    sget-boolean v0, Lcom/android/server/am/ProcessManagerService;->SKIP_PRELOAD_KILLED:Z

    if-eqz v0, :cond_89

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_89

    .line 1228
    const/4 v0, 0x0

    move v1, v0

    .line 1228
    .local v1, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 1229
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/process/PreloadProcessData;

    .line 1230
    .local v2, "data":Lmiui/process/PreloadProcessData;
    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 1231
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1232
    .local v4, "killedProcess":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1233
    .local v5, "count":Ljava/lang/Integer;
    if-eqz v5, :cond_7f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_49

    .line 1234
    goto :goto_7f

    .line 1236
    :cond_49
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_7e

    .line 1237
    invoke-virtual {v2}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1238
    const-string v3, "ProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", because of errors or killed by user before"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1241
    goto :goto_7f

    .line 1243
    .end local v4    # "killedProcess":Ljava/lang/String;
    .end local v5    # "count":Ljava/lang/Integer;
    :cond_7e
    goto :goto_2c

    .line 1228
    .end local v2    # "data":Lmiui/process/PreloadProcessData;
    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1246
    .end local v1    # "i":I
    :cond_82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_89

    .line 1247
    return v0

    .line 1250
    :cond_89
    const/4 v0, 0x1

    return v0
.end method

.method private boostCameraIfNeeded(Z)V
    .registers 4
    .param p1, "isCallerSystem"    # Z

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessPolicy;->isCameraBoostEnable()Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p1, :cond_1b

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    .line 1275
    invoke-virtual {v1}, Lcom/android/server/am/ForegroundInfoManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    .line 1274
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_26

    .line 1279
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessManagerService$2;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1305
    return-void

    .line 1276
    :cond_26
    :goto_26
    return-void
.end method

.method private doAdjBoost(Ljava/lang/String;IJI)V
    .registers 13
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "targetAdj"    # I
    .param p3, "timeout"    # J
    .param p5, "userId"    # I

    .line 1373
    invoke-virtual {p0, p1, p5}, Lcom/android/server/am/ProcessManagerService;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1374
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_9c

    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v1, :cond_c

    goto/16 :goto_9c

    .line 1378
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    .line 1379
    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1380
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;>;"
    if-nez v1, :cond_21

    .line 1381
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v2

    .line 1382
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mAdjBoostProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1384
    :cond_21
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    .line 1385
    .local v2, "appInfo":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    if-nez v2, :cond_7f

    .line 1386
    new-instance v3, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    invoke-direct {v3}, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;-><init>()V

    .line 1387
    .end local v2    # "appInfo":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    .local v3, "appInfo":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_34
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1394
    iput-object v0, v3, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    .line 1395
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v2, v3, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    .line 1396
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    iput v2, v3, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    .line 1398
    iput p2, v0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 1399
    const/16 v2, 0xc

    iput v2, v0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 1401
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1404
    const-string v2, "ProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adj boost for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", timeout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_34 .. :try_end_6b} :catchall_79

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1408
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v4, Lcom/android/server/am/ProcessManagerService$5;

    invoke-direct {v4, p0, p5, p1}, Lcom/android/server/am/ProcessManagerService$5;-><init>(Lcom/android/server/am/ProcessManagerService;ILjava/lang/String;)V

    invoke-virtual {v2, v4, p3, p4}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1431
    return-void

    .line 1406
    :catchall_79
    move-exception v2

    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1389
    .end local v3    # "appInfo":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    .restart local v2    # "appInfo":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    :cond_7f
    const-string v3, "ProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is already boosted!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void

    .line 1375
    .end local v1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;>;"
    .end local v2    # "appInfo":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    :cond_9c
    :goto_9c
    return-void
.end method

.method private fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .line 1615
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/server/am/ProcessManagerService;->generateRunningProcessInfo(Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;

    move-result-object v0

    .line 1616
    .local v0, "info":Lmiui/process/RunningProcessInfo;
    if-eqz v0, :cond_f

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1617
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1619
    :cond_f
    return-void
.end method

.method private generateRunningProcessInfo(Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1622
    const/4 v0, 0x0

    .line 1623
    .local v0, "info":Lmiui/process/RunningProcessInfo;
    if-eqz p1, :cond_2f

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2f

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_2f

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v1, :cond_2f

    .line 1624
    new-instance v1, Lmiui/process/RunningProcessInfo;

    invoke-direct {v1}, Lmiui/process/RunningProcessInfo;-><init>()V

    move-object v0, v1

    .line 1625
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    .line 1626
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mPid:I

    .line 1627
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mUid:I

    .line 1628
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mAdj:I

    .line 1629
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mProcState:I

    .line 1630
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/process/RunningProcessInfo;->mPkgList:[Ljava/lang/String;

    .line 1632
    :cond_2f
    return-object v0
.end method

.method private getAppNotificationWithFlag(Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 1649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    .local v0, "notificationList":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 1652
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1653
    .local v1, "notificaionList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 1654
    .local v2, "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v2, :cond_42

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_42

    .line 1657
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 1658
    .local v4, "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 1659
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 1660
    .local v5, "notification":Landroid/app/Notification;
    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p3

    if-eqz v6, :cond_40

    .line 1661
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_40} :catch_43

    .line 1664
    .end local v4    # "statusBarNotification":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "notification":Landroid/app/Notification;
    :cond_40
    goto :goto_20

    .line 1667
    .end local v1    # "notificaionList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :cond_41
    goto :goto_44

    .line 1655
    .restart local v1    # "notificaionList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .restart local v2    # "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :cond_42
    :goto_42
    return-object v0

    .line 1665
    .end local v1    # "notificaionList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    :catch_43
    move-exception v1

    .line 1668
    :goto_44
    return-object v0
.end method

.method private getKillReason(I)Ljava/lang/String;
    .registers 3
    .param p1, "policy"    # I

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "reason":Ljava/lang/String;
    packed-switch p1, :pswitch_data_36

    .line 722
    :pswitch_4
    const-string v0, "Unknown"

    goto :goto_34

    .line 719
    :pswitch_7
    const-string v0, "AutoLockOffCleanByPriority"

    .line 720
    goto :goto_34

    .line 716
    :pswitch_a
    const-string v0, "AutoSystemAbnormalClean"

    .line 717
    goto :goto_34

    .line 713
    :pswitch_d
    const-string v0, "AutoLockOffClean"

    .line 714
    goto :goto_34

    .line 710
    :pswitch_10
    const-string v0, "AutoSleepClean"

    .line 711
    goto :goto_34

    .line 707
    :pswitch_13
    const-string v0, "AutoIdleKill"

    .line 708
    goto :goto_34

    .line 704
    :pswitch_16
    const-string v0, "AutoThermalKill"

    .line 705
    goto :goto_34

    .line 701
    :pswitch_19
    const-string v0, "AutoPowerKill"

    .line 702
    goto :goto_34

    .line 698
    :pswitch_1c
    const-string v0, "UserDefined"

    .line 699
    goto :goto_34

    .line 695
    :pswitch_1f
    const-string v0, "SwipeUpClean"

    .line 696
    goto :goto_34

    .line 683
    :pswitch_22
    const-string v0, "GarbageClean"

    .line 684
    goto :goto_34

    .line 692
    :pswitch_25
    const-string v0, "OptimizationClean"

    .line 693
    goto :goto_34

    .line 689
    :pswitch_28
    const-string v0, "GameClean"

    .line 690
    goto :goto_34

    .line 686
    :pswitch_2b
    const-string v0, "LockScreenClean"

    .line 687
    goto :goto_34

    .line 680
    :pswitch_2e
    const-string v0, "ForceClean"

    .line 681
    goto :goto_34

    .line 677
    :pswitch_31
    const-string v0, "OneKeyClean"

    .line 678
    nop

    .line 724
    :goto_34
    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_4
        :pswitch_4
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getPackageNameByPid(I)Ljava/lang/String;
    .registers 4
    .param p1, "pid"    # I

    .line 1045
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1046
    .local v0, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_b

    .line 1047
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v1

    .line 1049
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasSystemSignature(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1016
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1017
    return v0

    .line 1020
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    const/16 v2, 0x40

    if-nez v1, :cond_1c

    .line 1021
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "android"

    .line 1022
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1023
    .local v1, "systemPackage":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1c

    .line 1024
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    .line 1028
    .end local v1    # "systemPackage":Landroid/content/pm/PackageInfo;
    :cond_1c
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1029
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1030
    .local v1, "appPackage":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_43

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 1031
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mSystemSignatures:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 1034
    :cond_43
    return v0
.end method

.method private isAppHasActivityInOtherTask(Ljava/util/List;I)Z
    .registers 7
    .param p2, "curTaskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)Z"
        }
    .end annotation

    .line 1117
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1119
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    invoke-static {v2, p2}, Lcom/android/server/am/ProcessUtils;->isProcessHasActivityInOtherTaskLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1120
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1122
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_22
    goto :goto_a

    .line 1123
    :cond_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1124
    const/4 v0, 0x0

    return v0

    .line 1123
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isAppHasForegroundServices(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "processRecord"    # Lcom/android/server/am/ProcessRecord;

    .line 1129
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1130
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1131
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isForceStopEnable(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "policy"    # I

    .line 948
    const/4 v0, 0x1

    const/16 v1, 0xd

    if-ne p2, v1, :cond_6

    .line 949
    return v0

    .line 953
    :cond_6
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 954
    return v2

    .line 958
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 959
    return v2

    .line 963
    :cond_13
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ProcessManagerService;->isAllowAutoStart(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 964
    return v2

    .line 968
    :cond_22
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2a

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 970
    return v2

    .line 973
    :cond_2f
    return v0
.end method

.method private isPackageInList(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 986
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 987
    return v0

    .line 990
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v1

    .line 991
    .local v1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 992
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 993
    const/4 v0, 0x1

    return v0

    .line 995
    .end local v3    # "item":Ljava/lang/String;
    :cond_22
    goto :goto_e

    .line 996
    :cond_23
    return v0
.end method

.method private isSystemApp(I)Z
    .registers 4
    .param p1, "pid"    # I

    .line 1000
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1001
    .local v0, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_b

    .line 1002
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    return v1

    .line 1004
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1008
    const/4 v0, 0x0

    if-eqz p1, :cond_12

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_12

    .line 1009
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    nop

    :cond_11
    return v0

    .line 1012
    :cond_12
    return v0
.end method

.method private isTrimMemoryEnable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 977
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isUidSystem(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1039
    const v0, 0x186a0

    rem-int/2addr p1, v0

    .line 1041
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private killAll(ILjava/lang/String;)V
    .registers 7
    .param p1, "policy"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 792
    return-void

    .line 795
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 796
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 797
    .local v1, "processList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 798
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_52

    .line 801
    :cond_20
    const-string v0, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLruProcesses size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 802
    .local v0, "i":I
    :goto_43
    if-ltz v0, :cond_51

    .line 803
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v2, p2, p1}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 802
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    .line 805
    .end local v0    # "i":I
    :cond_51
    return-void

    .line 799
    :cond_52
    :goto_52
    return-void

    .line 797
    .end local v1    # "processList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_53
    move-exception v1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private killLevelToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "level"    # I

    .line 862
    const-string v0, ""

    .line 863
    .local v0, "killLevel":Ljava/lang/String;
    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    .line 877
    :pswitch_6
    const-string v0, "force-stop"

    .line 878
    goto :goto_19

    .line 873
    :pswitch_9
    const-string/jumbo v0, "kill"

    .line 874
    goto :goto_19

    .line 869
    :pswitch_d
    const-string/jumbo v0, "kill-background"

    .line 870
    goto :goto_19

    .line 865
    :pswitch_11
    const-string/jumbo v0, "trim-memory"

    .line 866
    goto :goto_19

    .line 881
    :pswitch_15
    const-string/jumbo v0, "none"

    .line 882
    nop

    .line 886
    :goto_19
    return-object v0

    :pswitch_data_1a
    .packed-switch 0x64
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "killLevel"    # I

    .line 839
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessManagerService;->killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    .line 840
    return-void
.end method

.method private killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "killLevel"    # I
    .param p4, "evenForeground"    # Z

    .line 843
    if-eqz p1, :cond_70

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_70

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v0, :cond_b

    goto :goto_70

    .line 846
    :cond_b
    const/16 v0, 0x66

    if-lt p3, v0, :cond_4a

    .line 847
    const-string v1, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/android/server/am/ProcessManagerService;->killLevelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Adj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " State="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_4a
    const/16 v1, 0x65

    if-ne p3, v1, :cond_54

    .line 851
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/am/ProcessKiller;->trimMemory(Lcom/android/server/am/ProcessRecord;Z)V

    goto :goto_6f

    .line 852
    :cond_54
    if-ne p3, v0, :cond_5c

    .line 853
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessKiller;->killBackgroundApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_6f

    .line 854
    :cond_5c
    const/16 v0, 0x67

    if-ne p3, v0, :cond_66

    .line 855
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/am/ProcessKiller;->killApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    goto :goto_6f

    .line 856
    :cond_66
    const/16 v0, 0x68

    if-ne p3, v0, :cond_6f

    .line 857
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/am/ProcessKiller;->forceStopPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    .line 859
    :cond_6f
    :goto_6f
    return-void

    .line 844
    :cond_70
    :goto_70
    return-void
.end method

.method private killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "policy"    # I

    .line 808
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    .line 809
    return-void
.end method

.method private killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "policy"    # I
    .param p4, "canForceStop"    # Z

    .line 813
    if-eqz p1, :cond_54

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_54

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v0, :cond_b

    goto :goto_54

    .line 817
    :cond_b
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ProcessManagerService;->skipCurrentProcess(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 818
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 817
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ProcessManagerService;->skipCurrentProcessInBackup(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_53

    .line 822
    :cond_20
    const/16 v0, 0x64

    .line 823
    .local v0, "killLevel":I
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_43

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/am/ProcessManagerService;->isInWhiteList(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_43

    .line 827
    :cond_2f
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/ProcessManagerService;->isForceStopEnable(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    if-eqz v1, :cond_3a

    if-eqz p4, :cond_3a

    .line 828
    const/16 v0, 0x68

    goto :goto_4f

    .line 829
    :cond_3a
    const/4 v1, 0x3

    if-ne p3, v1, :cond_40

    .line 830
    const/16 v0, 0x66

    goto :goto_4f

    .line 832
    :cond_40
    const/16 v0, 0x67

    goto :goto_4f

    .line 824
    :cond_43
    :goto_43
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessManagerService;->isTrimMemoryEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 825
    const/16 v0, 0x65

    .line 835
    :cond_4f
    :goto_4f
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ProcessManagerService;->killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 836
    return-void

    .line 819
    .end local v0    # "killLevel":I
    :cond_53
    :goto_53
    return-void

    .line 814
    :cond_54
    :goto_54
    return-void
.end method

.method private reduceKilledRecordCount(Ljava/lang/String;J)V
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .line 1165
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$1;-><init>(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1180
    return-void
.end method

.method private removeAllTasks(II)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "policy"    # I

    .line 551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 553
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, p1, p2, v2}, Lcom/android/server/am/ProcessUtils;->removeAllTasks(Lcom/android/server/am/ProcessManagerService;IILcom/android/server/am/ActivityManagerService;)V

    .line 554
    if-nez p1, :cond_12

    .line 555
    const/16 v2, 0x3e7

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p0, v2, p2, v3}, Lcom/android/server/am/ProcessUtils;->removeAllTasks(Lcom/android/server/am/ProcessManagerService;IILcom/android/server/am/ActivityManagerService;)V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 558
    :cond_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    nop

    .line 560
    return-void

    .line 558
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeNotificationIfNeeded(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1673
    const/16 v0, 0x22

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ProcessManagerService;->getAppNotificationWithFlag(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 1675
    .local v0, "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v0, :cond_4b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_4b

    .line 1679
    :cond_f
    :try_start_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 1680
    .local v2, "notification":Landroid/service/notification/StatusBarNotification;
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 1681
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1680
    invoke-interface {v3, p1, v4, v5, v6}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1682
    const-string v3, "ProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove no clear notification:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_47} :catch_49

    .line 1683
    .end local v2    # "notification":Landroid/service/notification/StatusBarNotification;
    goto :goto_13

    .line 1686
    :cond_48
    goto :goto_4a

    .line 1684
    :catch_49
    move-exception v1

    .line 1687
    :goto_4a
    return-void

    .line 1676
    :cond_4b
    :goto_4b
    return-void
.end method

.method private removeTask(I)V
    .registers 5
    .param p1, "taskId"    # I

    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 505
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, v2}, Lcom/android/server/am/ProcessUtils;->removeTask(ILcom/android/server/am/ActivityManagerService;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    nop

    .line 509
    return-void

    .line 507
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeTaskIfNeeded(ILjava/lang/String;I)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 499
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->removeTask(I)V

    .line 500
    return-void
.end method

.method private removeTasksIfNeeded(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 520
    .local p1, "taskIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "whiteTaskSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p3, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 522
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, p2, v2, v3, p3}, Lcom/android/server/am/ProcessUtils;->removeTasks(Ljava/util/List;Ljava/util/Set;Lcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 524
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeTasksInPackages(Ljava/util/List;I)V
    .registers 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 535
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 537
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1, p2, v2, v3}, Lcom/android/server/am/ProcessUtils;->removeTasksInPackages(Ljava/util/List;ILcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 541
    nop

    .line 542
    return-void

    .line 540
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private reportCameraBoost(JII)V
    .registers 17
    .param p1, "nowFree"    # J
    .param p3, "killNum"    # I
    .param p4, "willFree"    # I

    .line 1308
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1309
    .local v8, "time":J
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/am/ProcessManagerService$3;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move/from16 v5, p4

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ProcessManagerService$3;-><init>(Lcom/android/server/am/ProcessManagerService;JIIJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1326
    return-void
.end method

.method private restartProcessIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 1690
    const-string v0, "com.android.camera"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1691
    return-void

    .line 1693
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$8;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/am/ProcessManagerService$8;-><init>(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1712
    return-void
.end method

.method private final ringAdvance(III)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "increment"    # I
    .param p3, "ringSize"    # I

    .line 1784
    add-int/2addr p1, p2

    .line 1785
    if-gez p1, :cond_6

    add-int/lit8 v0, p3, -0x1

    return v0

    .line 1786
    :cond_6
    if-lt p1, p3, :cond_a

    const/4 v0, 0x0

    return v0

    .line 1787
    :cond_a
    return p1
.end method

.method private setTaskToAvailableIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "fgAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1636
    if-eqz p1, :cond_35

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1637
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->isInFastBootList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_35

    .line 1641
    :cond_15
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1642
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ProcessPolicy;->isAppTaskAvailable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1643
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/am/ProcessPolicy;->setAppTaskAvailable(Ljava/lang/String;IZ)V

    .line 1644
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ProcessUtils;->setTaskToAvailable(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)V

    .line 1646
    :cond_34
    return-void

    .line 1638
    .end local v0    # "userId":I
    :cond_35
    :goto_35
    return-void
.end method

.method private skipCurrentProcess(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "policy"    # I

    .line 890
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/4 v1, 0x1

    if-gez v0, :cond_6

    .line 891
    return v1

    .line 893
    :cond_6
    packed-switch p2, :pswitch_data_30

    goto :goto_2d

    .line 898
    :pswitch_a
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-gtz v0, :cond_2d

    .line 899
    const-string v0, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip kill:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for foreground app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return v1

    .line 907
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_30
    .packed-switch 0xe
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private skipCurrentProcessInBackup(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 919
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v0

    .line 920
    .local v0, "backupManager":Lmiui/app/backup/BackupManager;
    invoke-virtual {v0}, Lmiui/app/backup/BackupManager;->getState()I

    move-result v1

    if-eqz v1, :cond_52

    .line 921
    invoke-virtual {v0}, Lmiui/app/backup/BackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, "curRunningPkg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_1c
    if-eqz p1, :cond_52

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_52

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 923
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v2, p3, :cond_52

    .line 925
    :cond_2e
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip kill:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_40

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_41

    :cond_40
    move-object v4, p2

    :goto_41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for Backup app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v2, 0x1

    return v2

    .line 929
    .end local v1    # "curRunningPkg":Ljava/lang/String;
    :cond_52
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    .registers 5
    .param p1, "applicationThread"    # Lmiui/process/IMiuiApplicationThread;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1512
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    if-ne v0, p2, :cond_c

    .line 1518
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MiuiApplicationThreadManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    .line 1519
    return-void

    .line 1513
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.addMiuiApplicationThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public adjBoost(Ljava/lang/String;IJI)V
    .registers 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "targetAdj"    # I
    .param p3, "timeout"    # J
    .param p5, "userId"    # I

    .line 1353
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1360
    if-gez p2, :cond_9

    .line 1361
    const/4 p2, 0x0

    .line 1364
    :cond_9
    const-wide/32 v0, 0x493e0

    cmp-long v0, p3, v0

    if-lez v0, :cond_13

    .line 1365
    const-wide/32 p3, 0x493e0

    .line 1368
    :cond_13
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessManagerService;->doAdjBoost(Ljava/lang/String;IJI)V

    .line 1369
    return-void

    .line 1354
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.adjBoost() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected autoKillApp(Lmiui/process/ProcessConfig;)Z
    .registers 10
    .param p1, "config"    # Lmiui/process/ProcessConfig;

    .line 568
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isUidInvalid()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 574
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackage()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUid()I

    move-result v1

    .line 576
    .local v1, "uid":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_98

    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessManagerService;->isUidSystem(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_98

    .line 582
    :cond_1d
    const-string v2, "ProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start autoKillApp: packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v2}, Lcom/android/server/am/ForegroundInfoManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v2

    .line 586
    .local v2, "foregroundInfo":Lmiui/process/ForegroundInfo;
    iget-object v4, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget v4, v2, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    if-eq v4, v1, :cond_5a

    :cond_4e
    iget-object v4, v2, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundPackageName:Ljava/lang/String;

    .line 588
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_76

    iget v4, v2, Lmiui/process/ForegroundInfo;->mMultiWindowForegroundUid:I

    if-ne v4, v1, :cond_76

    .line 590
    :cond_5a
    const-string v4, "ProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoKillApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed, app with foreground activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v3

    .line 594
    :cond_76
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 595
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 596
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 597
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_7e

    .line 598
    :cond_96
    const/4 v4, 0x1

    return v4

    .line 577
    .end local v2    # "foregroundInfo":Lmiui/process/ForegroundInfo;
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_98
    :goto_98
    const-string v2, "ProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot kill packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return v3

    .line 569
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "uid":I
    :cond_b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public boostCameraIfNeeded()V
    .registers 2

    .line 1268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->boostCameraIfNeeded(Z)V

    .line 1269
    return-void
.end method

.method checkPermission()Z
    .registers 6

    .line 728
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 729
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 730
    .local v1, "callingUid":I
    const/4 v2, 0x1

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_e

    .line 731
    return v2

    .line 734
    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 735
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v3}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-direct {p0, v3}, Lcom/android/server/am/ProcessManagerService;->hasSystemSignature(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_21

    .line 739
    :cond_1f
    const/4 v2, 0x0

    return v2

    .line 736
    :cond_21
    :goto_21
    return v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ProcessManager from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1799
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    return-void

    .line 1805
    :cond_2b
    const-string v0, "Process Config:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    iget v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    .line 1807
    .local v0, "lastIndex":I
    iget v1, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    .line 1808
    .local v1, "ringIndex":I
    const/4 v2, 0x0

    .line 1810
    .local v2, "i":I
    :cond_35
    const/4 v3, -0x1

    if-ne v1, v3, :cond_39

    goto :goto_5e

    .line 1811
    :cond_39
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    aget-object v4, v4, v1

    .line 1812
    .local v4, "config":Lmiui/process/ProcessConfig;
    if-nez v4, :cond_40

    .end local v4    # "config":Lmiui/process/ProcessConfig;
    goto :goto_5e

    .line 1813
    .restart local v4    # "config":Lmiui/process/ProcessConfig;
    :cond_40
    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1815
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {v4}, Lmiui/process/ProcessConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    const/16 v5, 0x1e

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/am/ProcessManagerService;->ringAdvance(III)I

    move-result v1

    .line 1818
    add-int/lit8 v2, v2, 0x1

    .line 1819
    .end local v4    # "config":Lmiui/process/ProcessConfig;
    if-ne v1, v0, :cond_35

    .line 1821
    :goto_5e
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    const-string v4, "    "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/am/ForegroundInfoManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1822
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    const-string v4, "    "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/am/ProcessPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1823
    return-void
.end method

.method public foregroundInfoChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "foregroundPackageName"    # Ljava/lang/String;

    .line 1257
    const-string v0, "com.android.camera"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1258
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->boostCameraIfNeeded(Z)V

    .line 1260
    :cond_c
    return-void
.end method

.method public getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1529
    const/4 v0, 0x0

    .line 1530
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1531
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getTopRunningPidLocked(Lcom/android/server/am/ActivityManagerService;)I

    move-result v2

    move v0, v2

    .line 1532
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1533
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MiuiApplicationThreadManager;->getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;

    move-result-object v1

    return-object v1

    .line 1532
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1524
    .end local v0    # "pid":I
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.getForegroundApplicationThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1501
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1507
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v0}, Lcom/android/server/am/ForegroundInfoManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    return-object v0

    .line 1502
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.unregisterForegroundInfoListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;
    .registers 4
    .param p1, "config"    # Lmiui/process/ProcessConfig;

    .line 665
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v0

    .line 666
    .local v0, "policy":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 667
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 669
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getKillReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLockedApplication(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->getLockedApplication(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcessPolicy()Lcom/android/server/am/ProcessPolicy;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    return-object v0
.end method

.method public getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1060
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1061
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_30

    .line 1062
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1063
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2d

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_2d

    .line 1065
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1061
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1068
    .end local v1    # "i":I
    :cond_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1069
    const/4 v0, 0x0

    return-object v0

    .line 1068
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;
    .registers 4
    .param p1, "pid"    # I

    .line 1053
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1054
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    monitor-exit v0

    return-object v1

    .line 1055
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getProcessRecordByUid(I)Ljava/util/List;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1105
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2d

    .line 1106
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1107
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_2a

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_2a

    .line 1108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1111
    .end local v2    # "i":I
    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1112
    return-object v0

    .line 1111
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1076
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_33

    .line 1077
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1078
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_30

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p2, :cond_30

    .line 1080
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1083
    .end local v2    # "i":I
    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1084
    return-object v0

    .line 1083
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1091
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_35

    .line 1092
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1093
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_32

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_32

    .line 1095
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 1098
    .end local v2    # "i":I
    :cond_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1099
    return-object v0

    .line 1098
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .line 1559
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1567
    if-gtz p5, :cond_c

    .line 1568
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p5

    .line 1571
    .end local p5    # "userId":I
    .local v0, "userId":I
    :cond_c
    move v0, p5

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p5

    .line 1572
    .local v1, "processInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_16
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1574
    if-lez p1, :cond_27

    .line 1575
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p5

    .line 1576
    .local p5, "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v1, p5}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    .line 1577
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_9b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 1581
    .end local p5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_27
    :try_start_27
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_39

    .line 1582
    invoke-virtual {p0, p4, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p5

    .line 1583
    .restart local p5    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v1, p5}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    .line 1584
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_9b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 1588
    .end local p5    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_39
    :try_start_39
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5e

    if-lez p2, :cond_5e

    .line 1589
    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p5

    .line 1590
    .local p5, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1591
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v1, v4}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    .line 1592
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_49

    .line 1593
    :cond_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_39 .. :try_end_5a} :catchall_9b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 1596
    .end local p5    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_5e
    :try_start_5e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_7c

    .line 1597
    invoke-virtual {p0, p3, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p5

    .line 1598
    .restart local p5    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1599
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v1, v4}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    .line 1600
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_6c

    .line 1603
    .end local p5    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_7c
    if-lez p2, :cond_96

    .line 1604
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByUid(I)Ljava/util/List;

    move-result-object p5

    .line 1605
    .restart local p5    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1606
    .restart local v4    # "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v1, v4}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    .line 1607
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_86

    .line 1609
    .end local p5    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_5e .. :try_end_97} :catchall_9b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1611
    return-object v1

    .line 1609
    :catchall_9b
    move-exception p5

    :try_start_9c
    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p5

    .line 1560
    .end local v0    # "userId":I
    .end local v1    # "processInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/RunningProcessInfo;>;"
    .local p5, "userId":I
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.getRunningProcessInfo() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isAllowAutoStart(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 981
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x2718

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 982
    .local v0, "mode":I
    if-nez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isInWhiteList(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "userId"    # I
    .param p3, "policy"    # I

    .line 604
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x3ea

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 605
    return v2

    .line 609
    :cond_c
    packed-switch p3, :pswitch_data_94

    packed-switch p3, :pswitch_data_a6

    goto/16 :goto_90

    .line 611
    :pswitch_14
    const/16 v0, 0xd

    .line 613
    .local v0, "flags":I
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_1c

    .line 614
    or-int/lit16 v0, v0, 0x1000

    .line 617
    :cond_1c
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    .line 618
    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 619
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 620
    :cond_3e
    return v2

    .line 648
    .end local v0    # "flags":I
    :pswitch_3f
    const/4 v0, 0x5

    .line 650
    .restart local v0    # "flags":I
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_46

    .line 651
    or-int/lit16 v0, v0, 0x1000

    .line 654
    :cond_46
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_58

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    .line 655
    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 656
    :cond_58
    return v2

    .line 633
    .end local v0    # "flags":I
    :pswitch_59
    const/16 v0, 0xd

    .line 635
    .restart local v0    # "flags":I
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_61

    .line 636
    or-int/lit16 v0, v0, 0x1000

    .line 639
    :cond_61
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 640
    invoke-virtual {v1, v3, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    .line 641
    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 642
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_90

    goto :goto_92

    .line 661
    .end local v0    # "flags":I
    :cond_90
    :goto_90
    const/4 v0, 0x0

    return v0

    .line 643
    .restart local v0    # "flags":I
    :cond_92
    :goto_92
    return v2

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_59
        :pswitch_3f
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_14
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0xe
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method public isLockedApplication(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public kill(Lmiui/process/ProcessConfig;)Z
    .registers 7
    .param p1, "config"    # Lmiui/process/ProcessConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 218
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 219
    .local v0, "callingPid":I
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v1

    .line 220
    .local v1, "policy":I
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Kill reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->addConfigToHistory(Lmiui/process/ProcessConfig;)V

    .line 224
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessPolicy;->resetWhiteList(Landroid/content/Context;I)V

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "success":Z
    packed-switch v1, :pswitch_data_92

    .line 259
    :pswitch_42
    const-string v3, "ProcessManager"

    const-string/jumbo v4, "unKnown policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 255
    :pswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->killByPriority(Lmiui/process/ProcessConfig;)Z

    move-result v2

    .line 256
    goto :goto_64

    .line 245
    :pswitch_50
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->autoKillApp(Lmiui/process/ProcessConfig;)Z

    move-result v2

    .line 246
    goto :goto_64

    .line 239
    :pswitch_55
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->swipeToKillApp(Lmiui/process/ProcessConfig;)Z

    move-result v2

    .line 240
    goto :goto_64

    .line 251
    :pswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->killAny(Lmiui/process/ProcessConfig;)Z

    move-result v2

    .line 252
    goto :goto_64

    .line 235
    :pswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->killAll(Lmiui/process/ProcessConfig;)Z

    move-result v2

    .line 236
    nop

    .line 261
    :goto_64
    return v2

    .line 212
    .end local v0    # "callingPid":I
    .end local v1    # "policy":I
    .end local v2    # "success":Z
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.kill() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_5f
        :pswitch_5a
        :pswitch_5f
        :pswitch_5f
        :pswitch_5a
        :pswitch_55
        :pswitch_42
        :pswitch_42
        :pswitch_5a
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_4b
    .end packed-switch
.end method

.method protected killAll(Lmiui/process/ProcessConfig;)Z
    .registers 12
    .param p1, "config"    # Lmiui/process/ProcessConfig;

    .line 271
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v0

    .line 272
    .local v0, "policy":I
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "reason":Ljava/lang/String;
    const/4 v2, 0x0

    .line 275
    .local v2, "fgTaskPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 276
    .local v3, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4c

    .line 278
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getWhiteList()Ljava/util/List;

    move-result-object v3

    .line 279
    const/4 v6, 0x3

    if-ne v0, v6, :cond_22

    .line 280
    if-nez v3, :cond_1d

    .line 281
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 283
    :cond_1d
    const-string v6, "com.mfashiongallery.emag"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_22
    const/16 v6, 0x10

    const/16 v7, 0xe

    const/16 v8, 0xf

    if-eq v0, v4, :cond_33

    if-eq v0, v8, :cond_33

    const/4 v9, 0x4

    if-eq v0, v9, :cond_33

    if-eq v0, v7, :cond_33

    if-ne v0, v6, :cond_4c

    .line 288
    :cond_33
    if-nez v3, :cond_3b

    .line 289
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v9

    .line 291
    :cond_3b
    if-eq v0, v8, :cond_41

    if-eq v0, v7, :cond_41

    if-ne v0, v6, :cond_46

    .line 293
    :cond_41
    const-string v6, "com.android.deskclock"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_46
    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v6}, Lcom/android/server/am/ProcessUtils;->getPerceptibleRecentAppList(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;

    move-result-object v2

    .line 299
    :cond_4c
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v6

    if-eqz v6, :cond_68

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getRemovingTaskIdList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_68

    .line 302
    if-eqz v2, :cond_5f

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    goto :goto_60

    :cond_5f
    const/4 v5, 0x0

    .line 303
    .local v5, "fgTaskIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_60
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getRemovingTaskIdList()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6, v5, v3}, Lcom/android/server/am/ProcessManagerService;->removeTasksIfNeeded(Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    .line 304
    .end local v5    # "fgTaskIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_71

    :cond_68
    if-ne v0, v5, :cond_71

    .line 306
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 307
    .local v5, "userId":I
    invoke-direct {p0, v5, v0}, Lcom/android/server/am/ProcessManagerService;->removeAllTasks(II)V

    .line 310
    .end local v5    # "userId":I
    :cond_71
    :goto_71
    if-eqz v3, :cond_84

    .line 311
    if-eqz v2, :cond_7c

    .line 312
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    :cond_7c
    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/server/am/ProcessPolicy;->addWhiteList(ILjava/util/List;Z)V

    .line 317
    :cond_84
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ProcessManagerService;->killAll(ILjava/lang/String;)V

    .line 319
    return v4
.end method

.method protected killAny(Lmiui/process/ProcessConfig;)Z
    .registers 14
    .param p1, "config"    # Lmiui/process/ProcessConfig;

    .line 390
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isUserIdInvalid()Z

    move-result v0

    if-nez v0, :cond_e4

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackageMaps()Landroid/util/ArrayMap;

    move-result-object v1

    .line 398
    .local v1, "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 399
    return v2

    .line 403
    :cond_12
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v3

    const/16 v4, 0x64

    if-eqz v3, :cond_7d

    .line 404
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v3, "removedTasksInPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v5, v2

    .line 405
    .local v5, "i":I
    :goto_20
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_56

    .line 406
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 407
    .local v6, "killLevel":I
    if-eq v6, v4, :cond_3e

    const/16 v7, 0x67

    if-eq v6, v7, :cond_3e

    const/16 v7, 0x66

    if-eq v6, v7, :cond_3e

    const/16 v7, 0x68

    if-ne v6, v7, :cond_53

    .line 410
    :cond_3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 411
    .local v7, "killedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_53

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_53

    .line 412
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 405
    .end local v6    # "killLevel":I
    .end local v7    # "killedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 418
    .end local v5    # "i":I
    :cond_56
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 419
    .local v5, "pkgIterator":Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 420
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 421
    .local v6, "pkg":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_75

    invoke-direct {p0, v6}, Lcom/android/server/am/ProcessManagerService;->isTrimMemoryEnable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 422
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 424
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_75
    goto :goto_5a

    .line 425
    :cond_76
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/android/server/am/ProcessManagerService;->removeTasksInPackages(Ljava/util/List;I)V

    .line 428
    .end local v3    # "removedTasksInPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pkgIterator":Ljava/util/Iterator;
    :cond_7d
    nop

    .line 428
    .local v2, "i":I
    :goto_7e
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_e2

    .line 429
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 430
    .local v3, "killLevel":I
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 431
    .local v5, "killingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_df

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_df

    .line 432
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 433
    .local v7, "pkg":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v9

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/am/ProcessManagerService;->skipCurrentProcessInBackup(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 433
    .end local v7    # "pkg":Ljava/lang/String;
    goto :goto_a0

    .line 434
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_b8
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 435
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_de

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 436
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    if-eq v3, v4, :cond_d6

    .line 437
    invoke-direct {p0, v10, v0, v3}, Lcom/android/server/am/ProcessManagerService;->killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    goto :goto_dd

    .line 439
    :cond_d6
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v11

    invoke-direct {p0, v10, v0, v11}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 441
    .end local v10    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_dd
    goto :goto_c4

    .line 442
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_de
    goto :goto_a0

    .line 428
    .end local v3    # "killLevel":I
    .end local v5    # "killingPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_df
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 445
    .end local v2    # "i":I
    :cond_e2
    const/4 v2, 0x1

    return v2

    .line 391
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "killingPackageMaps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected killByPriority(Lmiui/process/ProcessConfig;)Z
    .registers 13
    .param p1, "config"    # Lmiui/process/ProcessConfig;

    .line 453
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isPriorityInvalid()Z

    move-result v0

    if-nez v0, :cond_be

    .line 459
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPriority()I

    move-result v0

    .line 460
    .local v0, "minOomAdj":I
    const/16 v1, 0xc8

    if-gt v0, v1, :cond_2a

    .line 461
    const-string v1, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "minOomAdj:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", may kill perceptible app!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_2a
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 465
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "killReason":Ljava/lang/String;
    :goto_41
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/android/server/am/ProcessUtils;->getProcessListByAdj(Lcom/android/server/am/ActivityManagerService;ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 469
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_a6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_a6

    .line 474
    :cond_52
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getWhiteList()Ljava/util/List;

    move-result-object v4

    .line 475
    .local v4, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_65

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_65

    .line 476
    iget-object v5, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v4, v3}, Lcom/android/server/am/ProcessPolicy;->addWhiteList(ILjava/util/List;Z)V

    .line 481
    :cond_65
    move v5, v3

    .line 481
    .local v5, "i":I
    :goto_66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_a5

    .line 482
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 483
    .local v6, "process":Lcom/android/server/am/ProcessRecord;
    iget-object v8, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_76
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 484
    iget-object v9, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    iget v10, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/UidRecord;

    .line 485
    .local v9, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v9, :cond_90

    iget v10, v9, Lcom/android/server/am/UidRecord;->curProcState:I

    invoke-static {v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->isProcStateBackground(I)Z

    move-result v10

    if-eqz v10, :cond_90

    goto :goto_91

    :cond_90
    move v7, v3

    .line 486
    .end local v9    # "uidRec":Lcom/android/server/am/UidRecord;
    .local v7, "canForceStop":Z
    :goto_91
    monitor-exit v8
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_9f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 487
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v8

    invoke-direct {p0, v6, v1, v8, v7}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    .line 481
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 486
    .end local v7    # "canForceStop":Z
    :catchall_9f
    move-exception v3

    :try_start_a0
    monitor-exit v8
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 489
    .end local v5    # "i":I
    .end local v6    # "process":Lcom/android/server/am/ProcessRecord;
    :cond_a5
    return v7

    .line 470
    .end local v4    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a6
    :goto_a6
    const-string v4, "ProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no process found for adj:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v3

    .line 454
    .end local v0    # "minOomAdj":I
    .end local v1    # "killReason":Ljava/lang/String;
    .end local v2    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_be
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyActivityChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "curActivityComponent"    # Landroid/content/ComponentName;

    .line 1549
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$7;-><init>(Lcom/android/server/am/ProcessManagerService;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1555
    return-void
.end method

.method public notifyForegroundInfoChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 13
    .param p1, "foregroundRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p3, "pid"    # I
    .param p4, "multiWindowAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1539
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v7, Lcom/android/server/am/ProcessManagerService$6;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ProcessManagerService$6;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, v7}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1546
    return-void
.end method

.method public protectCurrentProcess(ZI)Z
    .registers 9
    .param p1, "isProtected"    # Z
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1331
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessPolicy;->isInAppProtectList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1338
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/ProcessPolicy;->protectCurrentProcess(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v1

    .line 1339
    .local v1, "success":Z
    if-eqz p1, :cond_2b

    if-lez p2, :cond_2b

    .line 1340
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ProcessManagerService$4;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/ProcessManagerService$4;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)V

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1348
    :cond_2b
    return v1

    .line 1332
    .end local v1    # "success":Z
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: ProcessManager.protectCurrentProcess() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1334
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ProcessManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 1139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_63

    .line 1143
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v0, "reasons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1146
    .local v2, "expReason":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 1147
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1148
    .local v3, "expCount":Ljava/lang/Integer;
    if-nez v3, :cond_3e

    .line 1149
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1151
    :cond_3e
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mKilledProcessRecordMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v5

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-wide/32 v4, 0x493e0

    .line 1153
    .local v4, "delay":J
    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1155
    const-wide/32 v4, 0x124f80

    .line 1159
    :cond_5e
    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/am/ProcessManagerService;->reduceKilledRecordCount(Ljava/lang/String;J)V

    .line 1161
    .end local v2    # "expReason":Ljava/lang/String;
    .end local v3    # "expCount":Ljava/lang/Integer;
    .end local v4    # "delay":J
    :cond_61
    goto :goto_1d

    .line 1162
    :cond_62
    return-void

    .line 1140
    .end local v0    # "reasons":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_63
    :goto_63
    return-void
.end method

.method public registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 6
    .param p3, "listener"    # Lmiui/process/IActivityChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1478
    .local p1, "targetPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "targetActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1484
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    .line 1485
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ForegroundInfoManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    .line 1486
    return-void

    .line 1479
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.registerActivityChangeListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 5
    .param p1, "listener"    # Lmiui/process/IForegroundInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1457
    const-string v0, "ProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForegroundInfoListener, caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ForegroundInfoManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 1461
    return-void

    .line 1451
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.registerForegroundInfoListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public shutdown()V
    .registers 1

    .line 197
    return-void
.end method

.method public startProcesses(Ljava/util/List;IZII)I
    .registers 14
    .param p2, "startProcessCount"    # I
    .param p3, "ignoreMemory"    # Z
    .param p4, "userId"    # I
    .param p5, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1202
    if-eqz p1, :cond_4c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 1205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_44

    .line 1208
    const/4 v0, 0x0

    if-nez p3, :cond_26

    invoke-static {}, Lcom/android/server/am/ProcessUtils;->isLowMemory()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1209
    const-string v1, "ProcessManager"

    const-string/jumbo v2, "low memory! skip start process!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return v0

    .line 1212
    :cond_26
    if-gtz p2, :cond_31

    .line 1213
    const-string v1, "ProcessManager"

    const-string/jumbo v2, "startProcessCount <= 0, skip start process!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return v0

    .line 1217
    :cond_31
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessManagerService;->allowPreload(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1218
    return v0

    .line 1221
    :cond_38
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessStarter;->startProcesses(Ljava/util/List;IZII)I

    move-result v0

    return v0

    .line 1206
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal start number!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageNames cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.startMutiProcesses() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected swipeToKillApp(Lmiui/process/ProcessConfig;)Z
    .registers 11
    .param p1, "config"    # Lmiui/process/ProcessConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isUserIdInvalid()Z

    move-result v0

    if-nez v0, :cond_a4

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isTaskIdInvalid()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 336
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackage()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 338
    return v2

    .line 341
    :cond_18
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getTaskId()I

    move-result v1

    .line 342
    .local v1, "taskId":I
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 343
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ProcessManagerService;->isAppHasActivityInOtherTask(Ljava/util/List;I)Z

    move-result v4

    .line 345
    .local v4, "appHasOtherTask":Z
    const/4 v5, 0x0

    .line 346
    .local v5, "taskTopApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_31

    .line 347
    iget-object v6, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v6}, Lcom/android/server/am/ProcessUtils;->getTaskTopApp(ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 350
    :cond_31
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 351
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 352
    const/4 v6, -0x1

    invoke-direct {p0, v1, v0, v6}, Lcom/android/server/am/ProcessManagerService;->removeTaskIfNeeded(ILjava/lang/String;I)V

    goto :goto_4f

    .line 354
    :cond_42
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v0, v6}, Lcom/android/server/am/ProcessManagerService;->removeTaskIfNeeded(ILjava/lang/String;I)V

    .line 359
    :cond_4f
    :goto_4f
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "killReason":Ljava/lang/String;
    if-eqz v4, :cond_80

    .line 361
    if-eqz v5, :cond_a2

    .line 363
    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_5a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 364
    nop

    .line 365
    invoke-static {v5, v1}, Lcom/android/server/am/ProcessUtils;->isProcessHasActivityInOtherTaskLocked(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v8

    .line 366
    .local v8, "processHasOtherTask":Z
    monitor-exit v7
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_7a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 368
    if-nez v8, :cond_79

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v7, :cond_72

    .line 369
    invoke-direct {p0, v5}, Lcom/android/server/am/ProcessManagerService;->isAppHasForegroundServices(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 370
    :cond_72
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v7

    invoke-direct {p0, v5, v6, v7, v2}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZ)V

    .line 372
    .end local v8    # "processHasOtherTask":Z
    :cond_79
    goto :goto_a2

    .line 366
    :catchall_7a
    move-exception v2

    :try_start_7b
    monitor-exit v7
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 374
    :cond_80
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 375
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v8, :cond_9a

    invoke-direct {p0, v7}, Lcom/android/server/am/ProcessManagerService;->isAppHasForegroundServices(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_a1

    .line 376
    :cond_9a
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v8

    invoke-direct {p0, v7, v6, v8}, Lcom/android/server/am/ProcessManagerService;->killOnceByPolicy(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    .line 378
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_a1
    goto :goto_84

    .line 380
    :cond_a2
    :goto_a2
    const/4 v2, 0x1

    return v2

    .line 330
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "taskId":I
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "appHasOtherTask":Z
    .end local v5    # "taskTopApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "killReason":Ljava/lang/String;
    :cond_a4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " or taskId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected systemReady()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->systemReady(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/process/IActivityChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1490
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1496
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ForegroundInfoManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    .line 1497
    return-void

    .line 1491
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.unregisterActivityChangeListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/process/IForegroundInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1466
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1472
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/am/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ForegroundInfoManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    .line 1473
    return-void

    .line 1467
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.unregisterForegroundInfoListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isLocked"    # Z

    .line 751
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 757
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 758
    return-void

    .line 752
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.updateApplicationLockedState() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 4
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1441
    if-eqz p1, :cond_e

    .line 1444
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    .line 1445
    return-void

    .line 1442
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cloudData cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.updateCloudWhiteList() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateConfig(Lmiui/process/ProcessConfig;)V
    .registers 4
    .param p1, "config"    # Lmiui/process/ProcessConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1191
    return-void

    .line 1185
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.updateConfig() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
