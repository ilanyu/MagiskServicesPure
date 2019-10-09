.class public Lcom/android/server/am/ActivityManagerServiceInjector;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;,
        Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;
    }
.end annotation


# static fields
.field public static final BOOST_DURATION:J = 0xbb8L

.field private static final BOOST_TAG:Ljava/lang/String; = "Boost"

.field private static final DEBUG:Z = true

.field private static final FLAG_GRANT_SYSTEM_APP_URI_PERMISSION:I = -0x80000000

.field public static final KEEP_FOREGROUND_DURATION:J = 0x4e20L

.field private static final PACKAGE_FORE_BUFFER_SIZE:I

.field public static final SET_TOP_APP:Ljava/lang/String; = "set_top_app"

.field private static final TAG:Ljava/lang/String; = "ActivityManagerServiceInjector"

.field private static enableAdjDowngrade:Z = false

.field protected static enableTaskIsolation:Z = false

.field private static isWeixinFirstStart:Z = false

.field private static lastForegroundPkg:Ljava/lang/String; = null

.field private static mFreeformBlackList:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastCheckProcessCpuUsageUptime:J = 0x0L

.field static mProtectedProcessList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResizeBlackList:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResizeWhiteList:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserSwitchObserver:Landroid/app/UserSwitchObserver; = null

.field private static final mipushCaller:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static final mipushServiceName:Ljava/lang/String; = "com.xiaomi.mipush.sdk.PushMessageHandler"

.field private static final sCachedForegroundPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sDialog:Lcom/android/server/am/BaseUserSwitchingDialog; = null

.field private static sFieldBinderCpuTime:Ljava/lang/reflect/Field; = null

.field private static sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field; = null

.field private static sFieldProcCpuTime:Ljava/lang/reflect/Field; = null

.field static sPackageHoldOn:Ljava/lang/String; = null

.field private static final sPackageList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sPackageList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver; = null

.field private static sSwitchUserCallingUid:I = 0x0

.field private static sSystemBootCompleted:Z = false

.field static sToken:Landroid/os/IBinder; = null

.field private static skipVerifyList:[Ljava/lang/String; = null

.field private static final weixinProcessName:Ljava/lang/String; = "com.tencent.mm"

.field private static final xiaomiVoiceServiceName:Ljava/lang/String; = "com.miui.voiceassist/com.xiaomi.voiceassistant.VoiceService"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 149
    const-string/jumbo v0, "persist.sys.task_isolation"

    .line 150
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableTaskIsolation:Z

    .line 151
    const-string/jumbo v0, "persist.sys.adj_downgrade"

    .line 152
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    .line 153
    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mobileqq"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mFreeformBlackList:Ljava/util/HashSet;

    .line 160
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mFreeformBlackList:Ljava/util/HashSet;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    .line 448
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$3;

    invoke-direct {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$3;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 1445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    .line 1449
    const-string/jumbo v0, "sys.proc.fore_pkg_buffer"

    .line 1450
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerServiceInjector;->PACKAGE_FORE_BUFFER_SIZE:I

    .line 1467
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->lastForegroundPkg:Ljava/lang/String;

    .line 1570
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->isWeixinFirstStart:Z

    .line 1812
    const-class v0, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v1, "lastCheckedCpuTime"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    .line 1813
    const-class v0, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v1, "procCpuTimeLastCheck"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    .line 1814
    const-class v0, Lcom/android/server/am/ProcessRecord;

    const-string v1, "binderCpuTimeLastCheck"

    invoke-static {v0, v1}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    .line 1816
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastCheckProcessCpuUsageUptime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .registers 1

    .line 144
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/am/BaseUserSwitchingDialog;
    .registers 1

    .line 144
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/BaseUserSwitchingDialog;)Lcom/android/server/am/BaseUserSwitchingDialog;
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/BaseUserSwitchingDialog;

    .line 144
    sput-object p0, Lcom/android/server/am/ActivityManagerServiceInjector;->sDialog:Lcom/android/server/am/BaseUserSwitchingDialog;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;II)Z
    .registers 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 144
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->isKidUserSwitch(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method static addCalledBinderPids(ILjava/util/List;)V
    .registers 6
    .param p0, "callerPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p1, "firstPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 236
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_11
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->collectCalledBinderPidsInChain(I)Ljava/util/List;

    move-result-object v0

    .line 241
    .local v0, "pidsInChain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 242
    .local v2, "calledPid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v2    # "calledPid":I
    :cond_3a
    goto :goto_19

    .line 246
    :cond_3b
    return-void
.end method

.method public static adjustThreadGroup(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "top"    # Lcom/android/server/am/ProcessRecord;

    .line 1208
    return-void
.end method

.method public static attachProcessStartReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingNameStr"    # Ljava/lang/String;

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1044
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    const-string v1, " #for# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    if-eqz p2, :cond_1a

    .line 1048
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static broadcastIntentLocked(Lcom/android/server/am/ActivityManagerService;ZZLcom/android/server/am/BroadcastRecord;)Z
    .registers 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "parallel"    # Z
    .param p2, "replacePending"    # Z
    .param p3, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 1337
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastIntentLocked(ZZLcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    return v0
.end method

.method static broadcastQueueByFlag(Lcom/android/server/am/ActivityManagerService;I)Lcom/android/server/am/BroadcastQueue;
    .registers 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "flags"    # I

    .line 1343
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->broadcastQueueByFlag(I)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    return-object v0
.end method

.method static broadcastVRAppFC(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.vr.apperror"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mi.dlabs.vr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    return-void
.end method

.method static checkBoostPriorityForLockTime(J)V
    .registers 8
    .param p0, "startBoostPriorityTime"    # J

    .line 1744
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1745
    .local v0, "endBoostPriorityTime":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_37

    .line 1746
    const-string v2, "ActivityManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow operation: holding ams lock in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_37
    return-void
.end method

.method public static checkGMSInstall(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)Z
    .registers 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 476
    if-eqz p1, :cond_29

    .line 477
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 478
    .local v0, "serviceProcess":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 479
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    .line 480
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 481
    .local v2, "topProcess":Ljava/lang/String;
    const-string v3, "com.google"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "com.android.provision"

    .line 482
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 483
    const-string v3, "ActivityManagerServiceInjector"

    const-string v4, "delay gms service timeout"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v3, 0x1

    return v3

    .line 488
    .end local v0    # "serviceProcess":Ljava/lang/String;
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "topProcess":Ljava/lang/String;
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public static checkMemForServiceRestart(Lcom/android/server/am/ServiceRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 5
    .param p0, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 1243
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/am/ServiceRecord;->createdFromFg:Z

    if-nez v0, :cond_25

    iget v0, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 1245
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t allow bg service restart under lowmem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v0, 0x0

    return v0

    .line 1248
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method static checkProcessCpuUsage(Ljava/util/ArrayList;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 1842
    .local p0, "lruProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_fe

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_fe

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    if-nez v0, :cond_e

    goto/16 :goto_fe

    .line 1846
    :cond_e
    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->updateBinderClientCpuUsages()V

    .line 1847
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1848
    .local v1, "curUptime":J
    sget-wide v3, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastCheckProcessCpuUsageUptime:J

    sub-long v3, v1, v3

    .line 1849
    .local v3, "uptimeSince":J
    sput-wide v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mLastCheckProcessCpuUsageUptime:J

    .line 1850
    const-wide/16 v13, 0x0

    cmp-long v0, v3, v13

    if-lez v0, :cond_f9

    .line 1851
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1852
    .local v0, "i":I
    :goto_25
    if-lez v0, :cond_f9

    .line 1853
    add-int/lit8 v15, v0, -0x1

    .line 1854
    .end local v0    # "i":I
    .local v15, "i":I
    move-object/from16 v11, p0

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v12, v0

    .line 1856
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    :try_start_32
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v5, 0x5

    if-lt v0, v5, :cond_c1

    .line 1857
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    move-wide/from16 v16, v5

    .line 1858
    .local v16, "lastCheckedCpuTime":J
    iget-wide v5, v12, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    sub-long v5, v5, v16

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    add-long v18, v5, v7

    .line 1859
    .local v18, "procCputime":J
    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->getBinderClientCpuUsages()Ljava/util/HashMap;

    move-result-object v0

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_5b} :catch_e7
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_5b} :catch_de

    .line 1860
    .local v0, "binderCputime":Ljava/lang/Long;
    if-nez v0, :cond_77

    .line 1861
    :try_start_5d
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_61} :catch_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5d .. :try_end_61} :catch_63

    move-object v0, v5

    goto :goto_77

    .line 1873
    .end local v0    # "binderCputime":Ljava/lang/Long;
    .end local v16    # "lastCheckedCpuTime":J
    .end local v18    # "procCputime":J
    :catch_63
    move-exception v0

    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    goto/16 :goto_e6

    .line 1872
    :catch_6d
    move-exception v0

    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    goto/16 :goto_ef

    .line 1863
    .restart local v0    # "binderCputime":Ljava/lang/Long;
    .restart local v16    # "lastCheckedCpuTime":J
    .restart local v18    # "procCputime":J
    :cond_77
    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, v5

    .line 1865
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long v5, v18, v5

    invoke-static {v3, v4, v5, v6}, Landroid/os/statistics/BinderServerMonitor;->computeCpuUsage(JJ)I

    move-result v5

    invoke-static {}, Landroid/os/statistics/BinderServerMonitor;->getExcessiveCpuUsageThreshold()I

    move-result v6

    if-lt v5, v6, :cond_c1

    .line 1866
    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->setProcState:I

    iget v7, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v8, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    iget v9, v12, Lcom/android/server/am/ProcessRecord;->setProcState:I
    :try_end_a5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_a5} :catch_e7
    .catch Ljava/lang/IllegalAccessException; {:try_start_77 .. :try_end_a5} :catch_de

    const/16 v10, 0xf

    if-lt v9, v10, :cond_ad

    const/4 v9, 0x1

    :goto_aa
    move/from16 v22, v9

    goto :goto_af

    :cond_ad
    const/4 v9, 0x0

    goto :goto_aa

    :goto_af
    move-wide v9, v3

    move-wide/from16 v23, v1

    move-object v1, v12

    move-wide/from16 v11, v18

    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .local v23, "curUptime":J
    move-wide/from16 v25, v3

    move-wide v2, v13

    move-wide/from16 v13, v20

    .end local v3    # "uptimeSince":J
    .local v25, "uptimeSince":J
    move v4, v15

    move/from16 v15, v22

    .end local v15    # "i":I
    .local v4, "i":I
    :try_start_bd
    invoke-static/range {v5 .. v15}, Landroid/os/statistics/BinderServerMonitor;->recordExcessiveCpuUsage(Ljava/lang/String;IIIJJJZ)V

    .end local v0    # "binderCputime":Ljava/lang/Long;
    .end local v16    # "lastCheckedCpuTime":J
    .end local v18    # "procCputime":J
    goto :goto_c8

    .line 1869
    .end local v4    # "i":I
    .end local v23    # "curUptime":J
    .end local v25    # "uptimeSince":J
    .local v1, "curUptime":J
    .restart local v3    # "uptimeSince":J
    .restart local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "i":I
    :cond_c1
    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    .end local v3    # "uptimeSince":J
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "i":I
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "i":I
    .restart local v23    # "curUptime":J
    .restart local v25    # "uptimeSince":J
    :goto_c8
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 1870
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 1871
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    iget-wide v5, v1, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    invoke-virtual {v0, v1, v5, v6}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd .. :try_end_d9} :catch_dc
    .catch Ljava/lang/IllegalAccessException; {:try_start_bd .. :try_end_d9} :catch_da

    goto :goto_ef

    .line 1873
    :catch_da
    move-exception v0

    goto :goto_e6

    .line 1872
    :catch_dc
    move-exception v0

    goto :goto_ef

    .line 1873
    .end local v4    # "i":I
    .end local v23    # "curUptime":J
    .end local v25    # "uptimeSince":J
    .local v1, "curUptime":J
    .restart local v3    # "uptimeSince":J
    .restart local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "i":I
    :catch_de
    move-exception v0

    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    .end local v1    # "curUptime":J
    .end local v3    # "uptimeSince":J
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "i":I
    .restart local v4    # "i":I
    .restart local v23    # "curUptime":J
    .restart local v25    # "uptimeSince":J
    :goto_e6
    goto :goto_f0

    .line 1872
    .end local v4    # "i":I
    .end local v23    # "curUptime":J
    .end local v25    # "uptimeSince":J
    .restart local v1    # "curUptime":J
    .restart local v3    # "uptimeSince":J
    .restart local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "i":I
    :catch_e7
    move-exception v0

    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    move-object v1, v12

    move-wide v2, v13

    move v4, v15

    .line 1874
    .end local v1    # "curUptime":J
    .end local v3    # "uptimeSince":J
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "i":I
    .restart local v4    # "i":I
    .restart local v23    # "curUptime":J
    .restart local v25    # "uptimeSince":J
    :goto_ef
    nop

    .line 1875
    :goto_f0
    nop

    .line 1851
    move-wide v13, v2

    move v0, v4

    move-wide/from16 v1, v23

    move-wide/from16 v3, v25

    goto/16 :goto_25

    .line 1877
    .end local v4    # "i":I
    .end local v23    # "curUptime":J
    .end local v25    # "uptimeSince":J
    .restart local v1    # "curUptime":J
    .restart local v3    # "uptimeSince":J
    :cond_f9
    move-wide/from16 v23, v1

    move-wide/from16 v25, v3

    .end local v1    # "curUptime":J
    .end local v3    # "uptimeSince":J
    .restart local v23    # "curUptime":J
    .restart local v25    # "uptimeSince":J
    return-void

    .line 1843
    .end local v23    # "curUptime":J
    .end local v25    # "uptimeSince":J
    :cond_fe
    :goto_fe
    return-void
.end method

.method static checkSystemUidHoldingPermissionsLocked(II)Z
    .registers 3
    .param p0, "modeFlags"    # I
    .param p1, "callingAppId"    # I

    .line 1399
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_6

    if-nez p1, :cond_e

    .line 1400
    :cond_6
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->ignoreSystemUidAppCheck(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1399
    :goto_f
    return v0
.end method

.method public static clearDeadAppFromNative(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/Thread;Lcom/android/internal/os/ProcessCpuTracker;)V
    .registers 4
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processCpuThread"    # Ljava/lang/Thread;
    .param p3, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/Thread;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            ")V"
        }
    .end annotation

    .line 472
    .local p1, "lruProcess":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    return-void
.end method

.method static collectCalledBinderPidsInChain(I)Ljava/util/List;
    .registers 2
    .param p0, "callerPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {p0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->collectCalledBinderPidsInChain(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static collectCalledBinderPidsInChain(II)Ljava/util/List;
    .registers 7
    .param p0, "callerPid"    # I
    .param p1, "callerTid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, "pidsResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_5
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->getCalledBinderPidAndTid(II)[I

    move-result-object v1

    .line 257
    .local v1, "pidAndTid":[I
    if-eqz v1, :cond_28

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    const/4 v2, 0x0

    aget v3, v1, v2

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    aget v4, v1, v3

    if-nez v4, :cond_1a

    .line 259
    goto :goto_28

    .line 261
    :cond_1a
    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    aget p0, v1, v2

    .line 264
    aget p1, v1, v3

    goto :goto_5

    .line 266
    :cond_28
    :goto_28
    return-object v0
.end method

.method public static computeAdjForLowmem(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityManagerService;JI)I
    .registers 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "leastServiceIdle"    # J
    .param p4, "adj"    # I

    .line 1225
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    if-eqz v0, :cond_5a

    iget v0, p1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5a

    .line 1227
    const-string v0, "fg-service"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1228
    return p4

    .line 1230
    :cond_14
    const/16 v0, 0x1f4

    if-ge p4, v0, :cond_5a

    .line 1231
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_28

    const-wide/32 v0, 0x927c0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_33

    :cond_28
    const-string/jumbo v0, "provider"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1233
    :cond_33
    const/16 p4, 0x1f4

    .line 1234
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to A service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    :cond_5a
    return p4
.end method

.method static computeGids(I[ILcom/android/server/am/ProcessRecord;)[I
    .registers 7
    .param p0, "userId"    # I
    .param p1, "gids"    # [I
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 609
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/miui/server/SecSpaceManagerService;->isDataTransferProcess(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 610
    invoke-static {v0}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .line 611
    return-object p1

    .line 613
    :cond_16
    sget-boolean v1, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v1, :cond_4c

    if-nez p1, :cond_1d

    goto :goto_4c

    .line 616
    :cond_1d
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 617
    array-length v1, p1

    :goto_24
    if-ge v0, v1, :cond_4b

    aget v2, p1, v0

    .line 618
    .local v2, "gid":I
    sget v3, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    if-ne v2, v3, :cond_33

    .line 619
    sget v0, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .line 620
    goto :goto_4b

    .line 617
    .end local v2    # "gid":I
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 623
    :cond_36
    if-nez p0, :cond_4b

    .line 624
    array-length v1, p1

    :goto_39
    if-ge v0, v1, :cond_4b

    aget v2, p1, v0

    .line 625
    .restart local v2    # "gid":I
    sget v3, Lmiui/securityspace/XSpaceUserHandle;->OWNER_SHARED_USER_GID:I

    if-ne v2, v3, :cond_48

    .line 626
    sget v0, Lmiui/securityspace/XSpaceUserHandle;->XSPACE_SHARED_USER_GID:I

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    .line 627
    goto :goto_4b

    .line 624
    .end local v2    # "gid":I
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 631
    :cond_4b
    :goto_4b
    return-object p1

    .line 614
    :cond_4c
    :goto_4c
    return-object p1
.end method

.method static doBoost(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1596
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 1597
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 1598
    const-string v0, "Boost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process is boosted to top app, processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_24
    return-void
.end method

.method static doBoostEx(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 6
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "beginTime"    # J

    .line 1609
    const/4 v0, 0x0

    .line 1611
    .local v0, "boostNeededNext":Z
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->doTopAppBoost(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1613
    const-string v1, "com.tencent.mm"

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1614
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->doForegroundBoost(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1616
    :cond_15
    return v0
.end method

.method private static doForegroundBoost(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 7
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "beginTime"    # J

    .line 1633
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 1634
    const/4 v0, 0x0

    return v0

    .line 1636
    :cond_d
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_14

    .line 1637
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 1639
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private static doTopAppBoost(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 7
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "beginTime"    # J

    .line 1620
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_36

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    goto :goto_36

    .line 1624
    :cond_11
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    if-ge v0, v1, :cond_34

    .line 1625
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    .line 1626
    const-string v0, "Boost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process is boosted to top app, processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 1622
    :cond_36
    :goto_36
    const/4 v0, 0x0

    return v0
.end method

.method static dumpAllLoopers(Landroid/os/BaseLooper;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "looper"    # Landroid/os/BaseLooper;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1880
    const-string v0, "ACTIVITY MANAGER LOOPERS (dumpsys activity loopers)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    if-eqz p0, :cond_c

    .line 1882
    const-string v0, "  "

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseLooper;->dumpAllLoopers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1884
    :cond_c
    return-void
.end method

.method static dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "appPid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 1110
    const-string v0, "dalvik.vm.stack-trace-file"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1111
    .local v3, "tracesPath":Ljava/lang/String;
    if-eqz v3, :cond_188

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_188

    .line 1114
    :cond_15
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 1115
    .local v4, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 1117
    :try_start_1c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 1118
    .local v5, "tracesFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v6, v0

    .line 1119
    .local v6, "tracesDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v7, "_tmp_"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_17f

    move-object v7, v0

    .line 1121
    .local v7, "tracesTmp":Ljava/io/File;
    :try_start_2f
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1122
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1123
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/lang/String;)Z

    move-result v0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_40} :catch_160
    .catchall {:try_start_2f .. :try_end_40} :catchall_17f

    if-nez v0, :cond_46

    .line 1188
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1124
    return-void

    .line 1127
    :cond_46
    :try_start_46
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x1fd

    const/4 v9, -0x1

    invoke-static {v0, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1129
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1130
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1131
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1133
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1134
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/os/AnrMonitor;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pid : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgName : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processName : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_bc} :catch_160
    .catchall {:try_start_46 .. :try_end_bc} :catchall_17f

    move-object/from16 v10, p2

    :try_start_be
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_cd} :catch_15e
    .catchall {:try_start_be .. :try_end_cd} :catchall_15c

    .line 1138
    move-object/from16 v8, p4

    :try_start_cf
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1140
    .local v11, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 1141
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 1142
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x1b6

    invoke-static {v12, v13, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_ee} :catch_15a
    .catchall {:try_start_cf .. :try_end_ee} :catchall_17d

    .line 1146
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 1148
    if-eqz v1, :cond_115

    .line 1149
    :try_start_f1
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$4;

    const/16 v9, 0x8

    invoke-direct {v0, v3, v9}, Lcom/android/server/am/ActivityManagerServiceInjector$4;-><init>(Ljava/lang/String;I)V
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_17d

    move-object v9, v0

    .line 1156
    .local v9, "observer":Landroid/os/FileObserver;
    :try_start_f9
    invoke-virtual {v9}, Landroid/os/FileObserver;->startWatching()V
    :try_end_fc
    .catchall {:try_start_f9 .. :try_end_fc} :catchall_110

    .line 1158
    :try_start_fc
    monitor-enter v9
    :try_end_fd
    .catch Ljava/lang/InterruptedException; {:try_start_fc .. :try_end_fd} :catch_10b
    .catchall {:try_start_fc .. :try_end_fd} :catchall_110

    .line 1159
    const/4 v0, 0x3

    :try_start_fe
    invoke-static {v1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1160
    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v11, v12}, Ljava/lang/Object;->wait(J)V

    .line 1161
    monitor-exit v9

    .line 1163
    goto :goto_10c

    .line 1161
    :catchall_108
    move-exception v0

    monitor-exit v9
    :try_end_10a
    .catchall {:try_start_fe .. :try_end_10a} :catchall_108

    :try_start_10a
    throw v0
    :try_end_10b
    .catch Ljava/lang/InterruptedException; {:try_start_10a .. :try_end_10b} :catch_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_110

    .line 1162
    :catch_10b
    move-exception v0

    .line 1165
    :goto_10c
    :try_start_10c
    invoke-virtual {v9}, Landroid/os/FileObserver;->stopWatching()V

    .line 1166
    goto :goto_115

    .line 1165
    :catchall_110
    move-exception v0

    invoke-virtual {v9}, Landroid/os/FileObserver;->stopWatching()V

    throw v0

    .line 1169
    .end local v9    # "observer":Landroid/os/FileObserver;
    :cond_115
    :goto_115
    const/4 v0, 0x0

    .line 1170
    .local v0, "lastTracesFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 1171
    .local v9, "curTracesFile":Ljava/io/File;
    const/4 v11, 0x5

    .line 1171
    .local v11, "i":I
    :goto_118
    if-ltz v11, :cond_149

    .line 1172
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v13, "slow_app_%s_%02d.txt"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v2, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1173
    .local v12, "name":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v13

    .line 1174
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_145

    .line 1175
    if-eqz v0, :cond_142

    .line 1176
    invoke-virtual {v9, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_145

    .line 1178
    :cond_142
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1181
    :cond_145
    :goto_145
    move-object v0, v9

    .line 1171
    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v11, v11, -0x1

    goto :goto_118

    .line 1183
    .end local v11    # "i":I
    :cond_149
    invoke-virtual {v5, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1184
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_155

    .line 1185
    invoke-virtual {v7, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_155
    .catchall {:try_start_10c .. :try_end_155} :catchall_17d

    .line 1188
    .end local v0    # "lastTracesFile":Ljava/io/File;
    .end local v5    # "tracesFile":Ljava/io/File;
    .end local v6    # "tracesDir":Ljava/io/File;
    .end local v7    # "tracesTmp":Ljava/io/File;
    .end local v9    # "curTracesFile":Ljava/io/File;
    :cond_155
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1189
    nop

    .line 1190
    return-void

    .line 1143
    .restart local v5    # "tracesFile":Ljava/io/File;
    .restart local v6    # "tracesDir":Ljava/io/File;
    .restart local v7    # "tracesTmp":Ljava/io/File;
    :catch_15a
    move-exception v0

    goto :goto_165

    .line 1188
    .end local v5    # "tracesFile":Ljava/io/File;
    .end local v6    # "tracesDir":Ljava/io/File;
    .end local v7    # "tracesTmp":Ljava/io/File;
    :catchall_15c
    move-exception v0

    goto :goto_182

    .line 1143
    .restart local v5    # "tracesFile":Ljava/io/File;
    .restart local v6    # "tracesDir":Ljava/io/File;
    .restart local v7    # "tracesTmp":Ljava/io/File;
    :catch_15e
    move-exception v0

    goto :goto_163

    :catch_160
    move-exception v0

    move-object/from16 v10, p2

    :goto_163
    move-object/from16 v8, p4

    .line 1144
    .local v0, "e":Ljava/io/IOException;
    :goto_165
    :try_start_165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to dump app traces file: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_179
    .catchall {:try_start_165 .. :try_end_179} :catchall_17d

    .line 1188
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1145
    return-void

    .line 1188
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "tracesFile":Ljava/io/File;
    .end local v6    # "tracesDir":Ljava/io/File;
    .end local v7    # "tracesTmp":Ljava/io/File;
    :catchall_17d
    move-exception v0

    goto :goto_184

    :catchall_17f
    move-exception v0

    move-object/from16 v10, p2

    :goto_182
    move-object/from16 v8, p4

    :goto_184
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0

    .line 1112
    .end local v4    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_188
    :goto_188
    move-object/from16 v10, p2

    move-object/from16 v8, p4

    return-void
.end method

.method static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 409
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 398
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->finishBooting(Lcom/android/server/am/ActivityManagerService;)V

    .line 399
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->sendFinishBootingBroadcast(Landroid/content/Context;)V

    .line 400
    return-void
.end method

.method public static finishSilentAnr(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)Z
    .registers 22
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "report"    # Ljava/lang/String;
    .param p6, "logFile"    # Ljava/io/File;
    .param p7, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "headline"    # Ljava/lang/String;

    move-object v11, p1

    .line 1285
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_46

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_46

    iget v0, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_46

    .line 1287
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish silent ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1289
    const-string v0, "bg anr"

    invoke-virtual {v11, v0, v12}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1291
    const-string v1, "anr"

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p0

    move-object v2, v11

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    .line 1293
    return v12

    .line 1295
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method public static finishSilentAnr(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1270
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_2f

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_2f

    .line 1272
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish silent ANR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1274
    const-string v1, "bg anr"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1275
    return v0

    .line 1277
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .registers 2
    .param p0, "userId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 597
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->forceStopUserLocked(ILjava/lang/String;)V

    .line 598
    return-void
.end method

.method public static getAppStartMode(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p0, "uid"    # I
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defMode"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 493
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 494
    return v1

    .line 497
    :cond_a
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v0

    if-nez v0, :cond_11

    .line 498
    return p2

    .line 502
    :cond_11
    if-eqz p3, :cond_1a

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 503
    return v1

    .line 506
    :cond_1a
    if-nez p2, :cond_1d

    .line 507
    return v1

    .line 509
    :cond_1d
    invoke-static {p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getAppBGIdleLevel(I)I

    move-result v0

    return v0
.end method

.method public static getAppStartMode(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;ILjava/lang/String;)I
    .registers 9
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "defMode"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 515
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 516
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidRecord;

    .line 517
    .local v0, "record":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_19

    iget-boolean v2, v0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v2, :cond_19

    .line 518
    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->idle:Z

    .line 520
    :cond_19
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3, p1, p2, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 521
    return v1

    .line 523
    .end local v0    # "record":Lcom/android/server/am/UidRecord;
    :cond_21
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v0

    if-nez v0, :cond_28

    .line 524
    return p3

    .line 527
    :cond_28
    if-eqz p4, :cond_31

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 528
    return v1

    .line 530
    :cond_31
    if-nez p3, :cond_34

    .line 531
    return v1

    .line 533
    :cond_34
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getAppBGIdleLevel(I)I

    move-result v0

    return v0
.end method

.method static getCalledBinderPidAndTid(I)[I
    .registers 2
    .param p0, "callerPid"    # I

    .line 270
    invoke-static {p0, p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getCalledBinderPidAndTid(II)[I

    move-result-object v0

    return-object v0
.end method

.method static getCalledBinderPidAndTid(II)[I
    .registers 13
    .param p0, "callerPid"    # I
    .param p1, "callerTid"    # I

    .line 274
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 275
    .local v1, "result":[I
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/d/binder/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 277
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v4, 0x0

    move-object v5, v4

    .line 280
    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1c
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 281
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v6

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\\sto\\s(\\d+):(\\d+)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 284
    .local v6, "pattern":Ljava/util/regex/Pattern;
    nop

    .line 285
    .local v4, "line":Ljava/lang/String;
    :goto_46
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    if-eqz v7, :cond_9c

    .line 286
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 287
    const-string/jumbo v7, "outgoing"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6e

    const-string/jumbo v7, "pending"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6e

    const-string/jumbo v7, "to"

    .line 288
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6e

    .line 289
    goto :goto_46

    .line 291
    :cond_6e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 292
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 293
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v1, v8

    .line 294
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v9
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_9a} :catch_b0
    .catchall {:try_start_1c .. :try_end_9a} :catchall_ae

    .line 295
    goto :goto_9c

    .line 297
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_9b
    goto :goto_46

    .line 302
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    :cond_9c
    :goto_9c
    nop

    .line 303
    :try_start_9d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_a3

    .line 308
    :catch_a1
    move-exception v0

    goto :goto_a8

    .line 305
    :goto_a3
    nop

    .line 306
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_a1

    goto :goto_ad

    .line 308
    :goto_a8
    nop

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_bf

    .line 310
    :cond_ad
    :goto_ad
    goto :goto_bf

    .line 301
    :catchall_ae
    move-exception v0

    goto :goto_c0

    .line 298
    :catch_b0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/io/IOException;
    :try_start_b1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_ae

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_b9

    .line 303
    :try_start_b6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 305
    :cond_b9
    if-eqz v3, :cond_ad

    .line 306
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_be} :catch_a1

    goto :goto_ad

    .line 313
    :goto_bf
    return-object v1

    .line 301
    :goto_c0
    nop

    .line 302
    if-eqz v5, :cond_c9

    .line 303
    :try_start_c3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_c9

    .line 308
    :catch_c7
    move-exception v4

    goto :goto_cf

    .line 305
    :cond_c9
    :goto_c9
    if-eqz v3, :cond_d4

    .line 306
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_ce} :catch_c7

    goto :goto_d4

    .line 308
    :goto_cf
    nop

    .line 309
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    .end local v4    # "e":Ljava/lang/Exception;
    nop

    .line 310
    :cond_d4
    :goto_d4
    throw v0
.end method

.method static getCallingUidPackage(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;)Ljava/lang/String;
    .registers 7
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;

    .line 376
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 377
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 378
    :cond_c
    iget v2, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 381
    .local v2, "callingUid":I
    if-lez v2, :cond_23

    .line 383
    :try_start_10
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_21

    array-length v4, v3

    if-lez v4, :cond_21

    .line 385
    const/4 v4, 0x0

    aget-object v4, v3, v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_20} :catch_22

    return-object v4

    .line 388
    .end local v3    # "packages":[Ljava/lang/String;
    :cond_21
    goto :goto_23

    .line 387
    :catch_22
    move-exception v3

    .line 390
    :cond_23
    :goto_23
    return-object v1
.end method

.method static getExtraQueueSize()I
    .registers 1

    .line 1322
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->getExtraQueueSize()I

    move-result v0

    return v0
.end method

.method static getMiuiActivityController()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .registers 1

    .line 745
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    move-result-object v0

    return-object v0
.end method

.method static getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;
    .registers 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 1327
    invoke-static {p0}, Lcom/android/server/am/MiuiBroadcastManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    return-object v0
.end method

.method static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 2
    .param p0, "changes"    # I
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 394
    invoke-static {p0, p1}, Lcom/android/server/am/ExtraActivityManagerService;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 395
    return-void
.end method

.method public static handleFreeformModeRequst(Landroid/os/IBinder;ILandroid/content/Context;)I
    .registers 10
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "cmd"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .line 1679
    const/4 v0, -0x1

    .line 1680
    .local v0, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1682
    .local v1, "ident":J
    :try_start_5
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 1683
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_6e

    goto :goto_64

    .line 1697
    :pswitch_e
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gamebox_stick"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1698
    .local v5, "component":Ljava/lang/String;
    if-nez v3, :cond_1b

    :cond_1a
    goto :goto_32

    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v4, 0x1

    :goto_32
    move v0, v4

    .line 1699
    goto :goto_64

    .line 1694
    .end local v5    # "component":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gamebox_stick"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1695
    goto :goto_64

    .line 1688
    :pswitch_40
    nop

    .line 1689
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gamebox_stick"

    .line 1691
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 1688
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1692
    goto :goto_64

    .line 1685
    :pswitch_5b
    if-nez v3, :cond_5e

    goto :goto_62

    :cond_5e
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v4
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_69

    :goto_62
    move v0, v4

    .line 1686
    nop

    .line 1703
    :goto_64
    nop

    .line 1705
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1703
    return v0

    .line 1705
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_69
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_40
        :pswitch_34
        :pswitch_e
    .end packed-switch
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "userIdOrig"    # I
    .param p3, "oldUserId"    # I
    .param p4, "mWindowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "mCurrentProfileIds"    # [I

    .line 605
    sget v6, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/ExtraActivityManagerService;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V

    .line 606
    return-void
.end method

.method public static hookGetCallingPkg(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "originCallingPkg"    # Ljava/lang/String;

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "hostApp":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/miui/hybrid/hook/HookClient;->hookGetCallingPkg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static ignoreSystemUidAppCheck(I)Z
    .registers 2
    .param p0, "modeFlags"    # I

    .line 1404
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method static inFreeFormBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1439
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mFreeformBlackList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1440
    :try_start_3
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mFreeformBlackList:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1441
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method static inResizeBlackList(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1433
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1434
    :try_start_3
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1435
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method static inResizeWhiteList(Ljava/lang/String;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1389
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1390
    :try_start_3
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1391
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method static final init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 334
    sget v0, Lmiui/R$style;->Theme_DayNight:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 335
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->init()V

    .line 336
    invoke-static {}, Lcom/android/server/am/MiuiWarnings;->getInstance()Lcom/android/server/am/MiuiWarnings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiWarnings;->init(Landroid/content/Context;)V

    .line 337
    return-void
.end method

.method static initExtraQuqueIfNeed(Lcom/android/server/am/ActivityManagerService;I)Z
    .registers 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "startIndex"    # I

    .line 1332
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->initExtraQuqueIfNeed(I)Z

    move-result v0

    return v0
.end method

.method static initSettingObserver(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 230
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    .line 231
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;->observe()V

    .line 232
    return-void
.end method

.method static isBoostNeeded(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "hostingType"    # Ljava/lang/String;
    .param p2, "hostingName"    # Ljava/lang/String;

    .line 1574
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    .line 1576
    .local v0, "callerPackage":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    .line 1577
    .local v2, "isSystem":Z
    const-string/jumbo v3, "service"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_25

    const-string v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    .line 1578
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "com.xiaomi.xmsf"

    .line 1579
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-eqz v2, :cond_25

    move v3, v4

    goto :goto_26

    :cond_25
    move v3, v1

    .line 1580
    .local v3, "isNeeded":Z
    :goto_26
    const-string v5, "com.miui.voiceassist/com.xiaomi.voiceassistant.VoiceService"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    if-eqz v3, :cond_31

    goto :goto_33

    :cond_31
    move v4, v1

    nop

    :cond_33
    :goto_33
    move v3, v4

    .line 1581
    const-string v4, "com.tencent.mm"

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1582
    const/4 v3, 0x1

    .line 1583
    sget-boolean v4, Lcom/android/server/am/ActivityManagerServiceInjector;->isWeixinFirstStart:Z

    if-eqz v4, :cond_4a

    .line 1584
    sput-boolean v1, Lcom/android/server/am/ActivityManagerServiceInjector;->isWeixinFirstStart:Z

    .line 1585
    const-string v1, "com.tencent.mm"

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->handlePackageFirstStart(Ljava/lang/String;)V

    .line 1588
    :cond_4a
    const-string v1, "Boost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hostingType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", hostingName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callerPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isSystem="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isBoostNeeded="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    return v3
.end method

.method static isExtraQueueEnabled()Z
    .registers 1

    .line 1318
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastManager;->isExtraQueueEnabled()Z

    move-result v0

    return v0
.end method

.method static isFgBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Landroid/util/ArraySet;)Z
    .registers 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    .line 1352
    .local p1, "queues":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastQueue;>;"
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->isFgBroadcastQueue(Landroid/util/ArraySet;)Z

    move-result v0

    return v0
.end method

.method static isFgBroadcastQueue(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)Z
    .registers 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;

    .line 1348
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceInjector;->getMiuiBroadcastManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/MiuiBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/MiuiBroadcastManager;->isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z

    move-result v0

    return v0
.end method

.method static isGetTasksOpAllowed(Lcom/android/server/AppOpsService;Ljava/lang/String;II)Z
    .registers 7
    .param p0, "opsService"    # Lcom/android/server/AppOpsService;
    .param p1, "caller"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 727
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 728
    return v1

    .line 730
    :cond_8
    const-string v0, "getRunningAppProcesses"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 731
    return v1

    .line 733
    :cond_11
    invoke-static {p2}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_18

    .line 735
    return v1

    .line 737
    :cond_18
    const/16 v2, 0x2723

    invoke-virtual {p0, v2, p3, v0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    const/4 v1, 0x1

    nop

    :cond_22
    return v1
.end method

.method private static isKidUserSwitch(Landroid/content/Context;II)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUserId"    # I
    .param p2, "targetUserId"    # I

    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kid_user_id"

    const/4 v2, 0x0

    const/16 v3, -0x2710

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 678
    .local v0, "kidSpaceUserId":I
    if-ne p2, v0, :cond_12

    if-eqz p1, :cond_16

    :cond_12
    if-ne p1, v0, :cond_18

    if-nez p2, :cond_18

    :cond_16
    const/4 v2, 0x1

    nop

    :cond_18
    return v2
.end method

.method public static isKillProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 6
    .param p0, "cpr"    # Lcom/android/server/am/ContentProviderRecord;
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "capp"    # Lcom/android/server/am/ProcessRecord;

    .line 1409
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_e

    invoke-static {p2}, Lcom/android/server/am/ProcessUtils;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    .line 1411
    :cond_e
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "visible app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " depends on provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 1412
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in dying proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    if-eqz p1, :cond_38

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    const-string v2, "??"

    :goto_3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    if-eqz p1, :cond_4b

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4d

    :cond_4b
    const-string v2, "??"

    :goto_4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1411
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v0, 0x0

    return v0
.end method

.method static isProcStateBackground(I)Z
    .registers 4
    .param p0, "procState"    # I

    .line 1193
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->AppBGIdleFeatureIsEnable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 1194
    const/16 v0, 0x8

    if-lt p0, v0, :cond_e

    move v1, v2

    nop

    :cond_e
    return v1

    .line 1196
    :cond_f
    const/4 v0, 0x3

    if-le p0, v0, :cond_14

    move v1, v2

    nop

    :cond_14
    return v1
.end method

.method static isProcessNameInList(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 5
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 317
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSettingObserver:Lcom/android/server/am/ActivityManagerServiceInjector$SettingObserver;

    if-nez v0, :cond_7

    .line 318
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->initSettingObserver(Landroid/content/Context;)V

    .line 322
    :cond_7
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    monitor-enter v0

    .line 323
    :try_start_a
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 324
    .local v1, "inList":Z
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_1c

    .line 326
    if-eqz v1, :cond_1b

    .line 327
    const-string v0, "ActivityManagerServiceInjector"

    const-string/jumbo v2, "processName in list"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1b
    return v1

    .line 324
    .end local v1    # "inList":Z
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method static isSpecialBroadcast(ILjava/lang/String;)Z
    .registers 4
    .param p0, "callingUid"    # I
    .param p1, "action"    # Ljava/lang/String;

    .line 984
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_25

    .line 985
    const-string/jumbo v0, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    .line 986
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo v0, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    .line 987
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 988
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 991
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method static isStartWithBackupRestriction(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupPkgName"    # Ljava/lang/String;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 442
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    iget-object v0, v0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_b

    :cond_9
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 443
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_b
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    .line 1544
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSystemBootCompleted:Z

    if-nez v0, :cond_13

    .line 1545
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSystemBootCompleted:Z

    .line 1547
    :cond_13
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSystemBootCompleted:Z

    return v0
.end method

.method public static isSystemPackage(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1553
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1554
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_d

    return v0

    .line 1555
    :cond_d
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_1b

    .line 1556
    .local v3, "flags":I
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_1a

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v2

    nop

    :cond_1a
    :goto_1a
    return v0

    .line 1558
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "flags":I
    :catch_1b
    move-exception v1

    .line 1559
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1561
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method static isUserSwitchable(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 601
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isUserSwitchable(I)Z

    move-result v0

    return v0
.end method

.method static isVRMode(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 414
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "vr_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    move v2, v3

    nop

    :cond_11
    return v2
.end method

.method static final killNativePackageProcesses(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 341
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 342
    .local v0, "uid":I
    const-string/jumbo v1, "security"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    .line 343
    .local v1, "sm":Lmiui/security/SecurityManager;
    if-eqz v1, :cond_1b

    if-eqz p1, :cond_1b

    .line 344
    invoke-virtual {v1, v0, p1}, Lmiui/security/SecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 346
    .end local v0    # "uid":I
    .end local v1    # "sm":Lmiui/security/SecurityManager;
    :cond_1b
    goto :goto_1d

    .line 345
    :catch_1c
    move-exception v0

    .line 347
    :goto_1d
    return-void
.end method

.method static markAmsReady()V
    .registers 3

    .line 1299
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->setAmsReady(J)V

    .line 1300
    return-void
.end method

.method static markPrebootAppCount(I)V
    .registers 2
    .param p0, "count"    # I

    .line 1313
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/BootEventManager;->setPrebootAppCount(I)V

    .line 1314
    return-void
.end method

.method static markUIReady()V
    .registers 3

    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1304
    .local v0, "bootCompleteTime":J
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setUIReady(J)V

    .line 1305
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setBootComplete(J)V

    .line 1306
    return-void
.end method

.method public static needSetWindowMode(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;ZI)Z
    .registers 10
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "windowingMode"    # I

    .line 1645
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1646
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2a

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2a

    .line 1648
    if-eqz p2, :cond_1f

    .line 1650
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1653
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->setMiuiConfigFlag(Lcom/android/server/wm/StackWindowController;IZ)Z

    goto :goto_2a

    .line 1657
    :cond_1f
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const-string/jumbo v5, "setTaskWindowingMode"

    invoke-virtual {v3, v4, v2, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 1658
    return v1

    .line 1661
    :cond_2a
    :goto_2a
    return v2
.end method

.method public static onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .registers 21
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "report"    # Ljava/lang/String;
    .param p6, "logFile"    # Ljava/io/File;
    .param p7, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "headline"    # Ljava/lang/String;

    .line 1000
    const-string v1, "anr"

    move-object v11, p1

    iget-object v3, v11, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v0, p0

    move-object v2, v11

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    .line 1003
    invoke-static/range {p0 .. p8}, Lcom/android/server/am/ANRManager;->onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    .line 1005
    return-void
.end method

.method static onForegroundActivityChanged(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "state"    # Lcom/android/server/am/ActivityStack$ActivityState;
    .param p2, "pid"    # I
    .param p3, "multiWindowAppInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 1492
    if-eqz p0, :cond_39

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_39

    .line 1497
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->lastForegroundPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1498
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->lastForegroundPkg:Ljava/lang/String;

    .line 1501
    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    .line 1502
    invoke-virtual {v0, p0, p1, p2, p3}, Lmiui/process/ProcessManagerInternal;->notifyForegroundInfoChanged(Ljava/lang/Object;Ljava/lang/Object;ILandroid/content/pm/ApplicationInfo;)V

    .line 1504
    invoke-static {p0, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportPackageForeground(Lcom/android/server/am/ActivityRecord;I)V

    .line 1508
    :cond_2b
    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerInternal;->notifyActivityChanged(Landroid/content/ComponentName;)V

    .line 1509
    return-void

    .line 1493
    :cond_39
    :goto_39
    const-string v0, "ActivityManagerServiceInjector"

    const-string/jumbo v1, "next or next process is null, skip report!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void
.end method

.method public static onForegroundActivityChangedLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p0, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1470
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_3f

    .line 1473
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    .line 1474
    const-string v0, "ActivityManagerServiceInjector"

    const-string v1, "do not report freeform event"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    return-void

    .line 1477
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    .line 1478
    .local v0, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1479
    .local v1, "pid":I
    const-class v2, Lmiui/process/ProcessManagerInternal;

    .line 1480
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/process/ProcessManagerInternal;

    invoke-virtual {v2}, Lmiui/process/ProcessManagerInternal;->getMultiWindowForegroundAppInfoLocked()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1482
    .local v2, "multiWindowAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ActivityManagerServiceInjector$6;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerServiceInjector$6;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;ILandroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1488
    return-void

    .line 1471
    .end local v0    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v1    # "pid":I
    .end local v2    # "multiWindowAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static onFreeFormToFullScreen(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p0, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 1454
    if-eqz p0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_7

    goto :goto_1c

    .line 1457
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getState()Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    .line 1458
    .local v0, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1459
    .local v1, "pid":I
    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ActivityManagerServiceInjector$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector$5;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack$ActivityState;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1465
    return-void

    .line 1455
    .end local v0    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v1    # "pid":I
    :cond_1c
    :goto_1c
    return-void
.end method

.method static onTransact(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 1753
    const v0, 0xfffffe

    if-ne p1, v0, :cond_a

    .line 1754
    invoke-static {p0, p2, p3}, Lcom/android/server/am/ActivityManagerServiceInjector;->setPackageHoldOn(Lcom/android/server/am/ActivityManagerService;Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 1756
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static otaPreload()V
    .registers 2

    .line 569
    new-instance v0, Lcom/android/server/am/ActivityManagerServiceInjector$1;

    const-string/jumbo v1, "ota_preload_processes"

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerServiceInjector$1;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerServiceInjector$1;->start()V

    .line 575
    return-void
.end method

.method private static otaPreloadProcesses()V
    .registers 10

    .line 578
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 579
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, -0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 581
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 583
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 584
    .local v1, "am":Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSecondaryDexOptPackages(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v2

    .line 586
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 587
    .local v4, "packageName":Ljava/lang/String;
    const/16 v5, 0x400

    .line 588
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 587
    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 589
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "ota-preload.stub"

    invoke-direct {v6, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    .local v6, "component":Landroid/content/ComponentName;
    const-string/jumbo v7, "ota-preload"

    const-string v8, "android"

    invoke-static {v1, v5, v7, v6, v8}, Lcom/android/server/am/ActivityManagerServiceInjector;->startProcess(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 591
    const-string v7, "ActivityManagerServiceInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Process "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is started by ota-preload, applicationInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "component":Landroid/content/ComponentName;
    goto :goto_29

    .line 594
    :cond_6e
    return-void
.end method

.method static declared-synchronized parseDumpArgs(Lcom/android/server/am/ActivityManagerService;[Ljava/lang/String;I)Z
    .registers 21
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "startIndex"    # I

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Lcom/android/server/am/ActivityManagerServiceInjector;

    monitor-enter v3

    .line 1070
    :try_start_7
    aget-object v0, v1, v2

    move-object v4, v0

    .line 1071
    .local v4, "cmd":Ljava/lang/String;
    const-string v0, "dump-app-trace"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_106

    const/4 v5, 0x0

    if-eqz v0, :cond_102

    .line 1073
    const/4 v6, 0x1

    :try_start_14
    sget-boolean v0, Landroid/os/AnrMonitor;->DBG:Z

    const/4 v7, 0x0

    if-eqz v0, :cond_5b

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startIndex "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cmd : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1075
    move v0, v5

    .line 1075
    .local v0, "i":I
    :goto_37
    array-length v8, v1

    if-ge v0, v8, :cond_5b

    .line 1076
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "args["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1075
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1079
    .end local v0    # "i":I
    :cond_5b
    array-length v0, v1

    if-ge v2, v0, :cond_f3

    .line 1080
    add-int/lit8 v2, v2, 0x1

    .line 1081
    .end local p2    # "startIndex":I
    .local v2, "startIndex":I
    aget-object v0, v1, v2

    move-object v4, v0

    .line 1082
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, "arr":[Ljava/lang/String;
    sget-boolean v8, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v8, :cond_a6

    .line 1084
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dump-app-trace cmd : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1085
    move v8, v5

    .line 1085
    .local v8, "i":I
    :goto_82
    array-length v9, v0

    if-ge v8, v9, :cond_a6

    .line 1086
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arr["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1085
    add-int/lit8 v8, v8, 0x1

    goto :goto_82

    .line 1089
    .end local v8    # "i":I
    :cond_a6
    if-eqz v0, :cond_f3

    array-length v8, v0

    const/4 v9, 0x4

    if-ne v8, v9, :cond_f3

    .line 1090
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1091
    .local v5, "appPid":I
    aget-object v8, v0, v6

    .line 1092
    .local v8, "processName":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v0, v9

    .line 1093
    .local v9, "appName":Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v10, v0, v10

    .line 1094
    .local v10, "msg":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_c2} :catch_f6
    .catchall {:try_start_14 .. :try_end_c2} :catchall_106

    .line 1095
    .local v11, "start":J
    move-object/from16 v13, p0

    :try_start_c4
    invoke-static {v13, v5, v8, v9, v10}, Lcom/android/server/am/ActivityManagerServiceInjector;->dumpAppTrace(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dump "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " trace took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v6, v15, v11

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1096
    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_f0} :catch_f1
    .catchall {:try_start_c4 .. :try_end_f0} :catchall_106

    .line 1096
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v5    # "appPid":I
    .end local v8    # "processName":Ljava/lang/String;
    .end local v9    # "appName":Ljava/lang/String;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v11    # "start":J
    goto :goto_f5

    .line 1101
    :catch_f1
    move-exception v0

    goto :goto_f9

    .line 1103
    .end local v2    # "startIndex":I
    .restart local p2    # "startIndex":I
    :cond_f3
    move-object/from16 v13, p0

    .line 1103
    .end local p2    # "startIndex":I
    .restart local v2    # "startIndex":I
    :goto_f5
    goto :goto_ff

    .line 1101
    .end local v2    # "startIndex":I
    .restart local p2    # "startIndex":I
    :catch_f6
    move-exception v0

    move-object/from16 v13, p0

    .line 1102
    .end local p2    # "startIndex":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "startIndex":I
    :goto_f9
    :try_start_f9
    const-string/jumbo v5, "parseDumpArgs failed!"

    invoke-static {v5, v0}, Landroid/os/AnrMonitor;->logDumpTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ff
    .catchall {:try_start_f9 .. :try_end_ff} :catchall_106

    .line 1104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ff
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 1106
    .end local v2    # "startIndex":I
    .restart local p2    # "startIndex":I
    :cond_102
    move-object/from16 v13, p0

    monitor-exit v3

    return v5

    .line 1069
    .end local v4    # "cmd":Ljava/lang/String;
    .end local p0    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local p1    # "args":[Ljava/lang/String;
    .end local p2    # "startIndex":I
    :catchall_106
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static processInitBefore(Ljava/lang/String;)Z
    .registers 3
    .param p0, "processName"    # Ljava/lang/String;

    .line 452
    const/4 v0, 0x1

    .line 453
    .local v0, "hasInit":Z
    if-eqz p0, :cond_c

    .line 454
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 456
    :cond_c
    return v0
.end method

.method public static reportANR(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .registers 14
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "report"    # Ljava/lang/String;
    .param p8, "logFile"    # Ljava/io/File;
    .param p9, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p10, "headline"    # Ljava/lang/String;

    .line 1012
    new-instance v0, Lmiui/mqsas/sdk/event/AnrEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/AnrEvent;-><init>()V

    .line 1013
    .local v0, "event":Lmiui/mqsas/sdk/event/AnrEvent;
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setPid(I)V

    .line 1014
    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_14

    const-string/jumbo v1, "system_server"

    goto :goto_15

    :cond_14
    move-object v1, p3

    :goto_15
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setProcessName(Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v1, "system"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_2c

    .line 1016
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/AnrEvent;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 1015
    :goto_30
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setPackageName(Ljava/lang/String;)V

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/AnrEvent;->setTimeStamp(J)V

    .line 1018
    invoke-virtual {v0, p7}, Lmiui/mqsas/sdk/event/AnrEvent;->setReason(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0, p6}, Lmiui/mqsas/sdk/event/AnrEvent;->setCpuInfo(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setBgAnr(Z)V

    .line 1021
    if-eqz p8, :cond_58

    invoke-virtual {p8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1022
    invoke-virtual {p8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setLogName(Ljava/lang/String;)V

    .line 1024
    :cond_58
    if-eqz p4, :cond_5f

    .line 1025
    iget-object v1, p4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setTargetActivity(Ljava/lang/String;)V

    .line 1027
    :cond_5f
    if-eqz p5, :cond_68

    .line 1028
    invoke-virtual {p5}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/AnrEvent;->setParent(Ljava/lang/String;)V

    .line 1031
    :cond_68
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    .line 1032
    return-void
.end method

.method static reportBootEvent()V
    .registers 0

    .line 1309
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->reportBootEvent()V

    .line 1310
    return-void
.end method

.method private static reportPackageForeground(Lcom/android/server/am/ActivityRecord;I)V
    .registers 5
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "pid"    # I

    .line 1512
    new-instance v0, Lmiui/mqsas/sdk/event/PackageForegroundEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;-><init>()V

    .line 1513
    .local v0, "event":Lmiui/mqsas/sdk/event/PackageForegroundEvent;
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setPackageName(Ljava/lang/String;)V

    .line 1514
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setComponentName(Ljava/lang/String;)V

    .line 1515
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setIdentity(I)V

    .line 1516
    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setPid(I)V

    .line 1517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setForegroundTime(J)V

    .line 1518
    iget-boolean v1, p0, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageForegroundEvent;->setColdStart(Z)V

    .line 1519
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerServiceInjector;->PACKAGE_FORE_BUFFER_SIZE:I

    if-lt v1, v2, :cond_53

    .line 1522
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->isSystemBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1523
    const-string v1, "ActivityManagerServiceInjector"

    const-string v2, "Begin to report package foreground events..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1525
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lmiui/mqsas/sdk/event/PackageForegroundEvent;>;"
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1526
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sCachedForegroundPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1528
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportPackageForegroundEvents(Ljava/util/List;)V

    .line 1530
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<Lmiui/mqsas/sdk/event/PackageForegroundEvent;>;"
    :cond_53
    return-void
.end method

.method private static reportPackageForegroundEvents(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/mqsas/sdk/event/PackageForegroundEvent;",
            ">;)V"
        }
    .end annotation

    .line 1533
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Lmiui/mqsas/sdk/event/PackageForegroundEvent;>;"
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 1535
    .local v0, "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/PackageForegroundEvent;>;"
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ActivityManagerServiceInjector$7;

    invoke-direct {v2, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$7;-><init>(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1541
    return-void
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 10
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeApp"    # Z
    .param p2, "allowRestart"    # Z

    .line 700
    invoke-static {}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isServiceControlEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 702
    return p2

    .line 704
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    sub-long/2addr v0, v2

    .line 705
    .local v0, "oldTime":J
    const/4 v2, 0x1

    if-nez p1, :cond_9e

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/whetstone/process/WtServiceControlEntry;->isAppInServiceControlWhitelist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto/16 :goto_9e

    .line 708
    :cond_1c
    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    const/4 v4, 0x0

    if-nez v3, :cond_65

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v5, 0x9

    if-le v3, v5, :cond_65

    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    cmp-long v3, v5, v0

    if-gez v3, :cond_65

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x1f4

    if-le v3, v5, :cond_65

    .line 713
    const-string v2, "ActivityManagerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is a long inactive service(millionsecond) "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " with adj "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",do not allow restart"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    return v4

    .line 715
    :cond_65
    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v3, :cond_9d

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x38a

    if-lt v3, v5, :cond_9d

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/16 v5, 0xf

    if-lt v3, v5, :cond_9d

    .line 717
    const-string v2, "ActivityManagerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is killed by AMS with adj "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,do not allow restart"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v4

    .line 721
    :cond_9d
    return v2

    .line 707
    :cond_9e
    :goto_9e
    return v2
.end method

.method public static restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .registers 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "isHomeApp"    # Z
    .param p2, "allowRestart"    # Z
    .param p3, "fromBinderDied"    # Z

    .line 692
    if-eqz p3, :cond_7

    .line 693
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->restartDiedAppOrNot(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v0

    return v0

    .line 695
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public static saveAnrInfoBeforeDumpTrace(Lcom/android/server/am/ActivityManagerService;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;IZLjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;)V
    .registers 24
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "oriInfo"    # Ljava/lang/StringBuilder;
    .param p2, "extraInfo"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "interestingToUser"    # Z
    .param p8, "nativeProcs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1058
    .local p6, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p7, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 1059
    .local v0, "bgAnr":Z
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v4, 0x1

    nop

    :cond_13
    move v2, v4

    .line 1061
    .local v2, "showBackground":Z
    if-nez v2, :cond_20

    if-nez p5, :cond_20

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v14, p4

    if-eq v14, v4, :cond_22

    .line 1062
    const/4 v0, 0x1

    goto :goto_22

    .line 1064
    :cond_20
    move/from16 v14, p4

    .line 1065
    :cond_22
    :goto_22
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isUserAMonkey()Z

    move-result v12

    .line 1064
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move v8, v14

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move v13, v0

    invoke-static/range {v5 .. v13}, Landroid/os/AnrMonitor;->dumpAnrInfo(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;ZZ)Ljava/io/File;

    .line 1066
    return-void
.end method

.method public static sendFinishBootingBroadcast(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.FINISH_BOOTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 406
    return-void
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 4
    .param p0, "puid"    # I
    .param p1, "ppid"    # I
    .param p2, "pgroup"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 1221
    return-void
.end method

.method private static setMiuiConfigFlag(Lcom/android/server/wm/StackWindowController;IZ)Z
    .registers 10
    .param p0, "object"    # Lcom/android/server/wm/StackWindowController;
    .param p1, "miuiConfigFlag"    # I
    .param p2, "isSetToStack"    # Z

    .line 1667
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/android/server/wm/StackWindowController;

    .line 1668
    .local v1, "clazz":Ljava/lang/Class;
    const-string/jumbo v2, "setMiuiConfigFlag"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1669
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1670
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2c

    .line 1674
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    nop

    .line 1675
    return v6

    .line 1671
    :catch_2c
    move-exception v1

    .line 1672
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMiuiConfigFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return v0
.end method

.method static setPackageHoldOn(Lcom/android/server/am/ActivityManagerService;Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .line 1760
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1762
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1764
    .local v1, "ident":J
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_1b

    .line 1765
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->setPackageHoldOnInternal(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    goto :goto_31

    .line 1771
    :catchall_19
    move-exception v3

    goto :goto_3a

    .line 1767
    :cond_1b
    const-string v3, "ActivityManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: setPackageHoldOn() not from system uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_19

    .line 1771
    :goto_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1772
    nop

    .line 1773
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    const/4 v3, 0x1

    return v3

    .line 1771
    :goto_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method static setPackageHoldOnInternal(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V
    .registers 10
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1782
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1783
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 1784
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getAllStackInfosLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1785
    .local v0, "stackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 1786
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 1787
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1788
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_80

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_80

    .line 1789
    sput-object p1, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageHoldOn:Ljava/lang/String;

    .line 1790
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    sput-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sToken:Landroid/os/IBinder;

    .line 1791
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 1792
    .local v1, "wm":Ljava/lang/Object;
    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/MiuiWindowManagerInternal;

    sget-object v5, Lcom/android/server/am/ActivityManagerServiceInjector;->sToken:Landroid/os/IBinder;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/MiuiWindowManagerInternal;->setHoldOn(Landroid/os/IBinder;Z)V

    .line 1793
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "power"

    .line 1794
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1795
    .local v4, "powerManger":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1796
    const-string v5, "ActivityManagerServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Go to sleep and hold on - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageHoldOn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    goto :goto_81

    .line 1800
    .end local v1    # "wm":Ljava/lang/Object;
    .end local v2    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "powerManger":Landroid/os/PowerManager;
    :cond_80
    goto :goto_14

    .line 1801
    .end local v0    # "stackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    :cond_81
    :goto_81
    goto :goto_9a

    .line 1802
    :cond_82
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageHoldOn:Ljava/lang/String;

    if-eqz v0, :cond_9a

    .line 1803
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1804
    .local v0, "wm":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/MiuiWindowManagerInternal;

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/MiuiWindowManagerInternal;->setHoldOn(Landroid/os/IBinder;Z)V

    .line 1805
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sPackageHoldOn:Ljava/lang/String;

    .line 1806
    sput-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->sToken:Landroid/os/IBinder;

    .line 1809
    .end local v0    # "wm":Ljava/lang/Object;
    :cond_9a
    :goto_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_9f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1810
    return-void

    .line 1809
    :catchall_9f
    move-exception v0

    :try_start_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public static setProcessInitState(Ljava/lang/String;)Z
    .registers 4
    .param p0, "processName"    # Ljava/lang/String;

    .line 460
    if-eqz p0, :cond_2c

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 461
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mProtectedProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 462
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in mProtectedProcessList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x1

    return v0

    .line 466
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method static setResizeBlackList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1424
    .local p0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_14

    .line 1425
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1426
    :try_start_5
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1427
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeBlackList:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1428
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1

    .line 1430
    :cond_14
    :goto_14
    return-void
.end method

.method static setResizeWhiteList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1380
    .local p0, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_14

    .line 1381
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    monitor-enter v0

    .line 1382
    :try_start_5
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1383
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceInjector;->mResizeWhiteList:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1384
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1

    .line 1386
    :cond_14
    :goto_14
    return-void
.end method

.method static setSwitchUserCallingUid(I)V
    .registers 1
    .param p0, "uid"    # I

    .line 741
    sput p0, Lcom/android/server/am/ActivityManagerServiceInjector;->sSwitchUserCallingUid:I

    .line 742
    return-void
.end method

.method public static setTopAppUIThread(IC)V
    .registers 4
    .param p0, "pid"    # I
    .param p1, "value"    # C

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/top_app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "node":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->writeToNode(Ljava/lang/String;C)V

    .line 1713
    return-void
.end method

.method public static setTopAppUIThread(IIC)V
    .registers 5
    .param p0, "pid"    # I
    .param p1, "tid"    # I
    .param p2, "value"    # C

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/task/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/top_app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, "node":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->writeToNode(Ljava/lang/String;C)V

    .line 1718
    return-void
.end method

.method static shouldAddPersistApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 976
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.miui.greenguard"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_2f

    .line 977
    const-string v0, "ActivityManagerServiceInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "should not add to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v0, 0x0

    return v0

    .line 980
    :cond_2f
    const/4 v0, 0x1

    return v0
.end method

.method static shouldCrossXSpace(Ljava/lang/String;I)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1364
    const/4 v0, 0x0

    const/16 v1, 0x3e7

    if-ne p1, v1, :cond_22

    .line 1365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1367
    .local v1, "origId":J
    :try_start_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, p0, v0, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_11} :catch_1d
    .catchall {:try_start_9 .. :try_end_11} :catchall_18

    if-nez v3, :cond_1e

    .line 1368
    const/4 v0, 0x1

    .line 1373
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1368
    return v0

    .line 1373
    :catchall_18
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1370
    :catch_1d
    move-exception v3

    .line 1373
    .end local v1    # "origId":J
    :cond_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1374
    nop

    .line 1376
    :cond_22
    return v0
.end method

.method static showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 8
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 355
    iget-object v0, p1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 356
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 357
    .local v1, "res":Lcom/android/server/am/AppErrorResult;
    iget-object v2, p1, Lcom/android/server/am/AppErrorDialog$Data;->crash:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 359
    .local v2, "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lmiui/util/ErrorReport;->sendExceptionReport(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;I)V

    .line 362
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MiuiSettings$Secure;->isForceCloseDialogEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 363
    new-instance v3, Lcom/android/server/am/AppErrorDialog;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 365
    .local v3, "d":Landroid/app/Dialog;
    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 366
    .end local v3    # "d":Landroid/app/Dialog;
    goto :goto_26

    .line 370
    :cond_22
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 372
    :goto_26
    return v5
.end method

.method static showMiuiAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V
    .registers 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "data"    # Lcom/android/server/am/AppErrorDialog$Data;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "res"    # Lcom/android/server/am/AppErrorResult;

    .line 426
    invoke-static {p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->isVRMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 427
    invoke-static {p2}, Lcom/android/server/am/ActivityManagerServiceInjector;->broadcastVRAppFC(Landroid/content/Context;)V

    .line 428
    return-void

    .line 431
    :cond_a
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->showAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 432
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 433
    .local v0, "Dialogdata":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object p4, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 434
    iput-object p3, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 435
    new-instance v1, Lcom/android/server/am/AppErrorDialog;

    invoke-direct {v1, p2, p0, v0}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 437
    .local v1, "d":Landroid/app/Dialog;
    iput-object v1, p3, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 439
    .end local v0    # "Dialogdata":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v1    # "d":Landroid/app/Dialog;
    :cond_20
    return-void
.end method

.method static showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
    .registers 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "mTargetUserId"    # I
    .param p2, "handler"    # Landroid/os/Handler;

    .line 635
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->setSwitchUserCallingUid(I)V

    .line 636
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_23

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 638
    :cond_21
    const/4 v1, 0x0

    return v1

    .line 640
    :cond_23
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceInjector$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceInjector$2;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 661
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    const-string v3, "ActivityManagerServiceInjector"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/UserController;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 662
    const/4 v1, 0x1

    return v1
.end method

.method public static startProcess(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 16
    .param p0, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "hostingName"    # Landroid/content/ComponentName;
    .param p4, "callerPackage"    # Ljava/lang/String;

    .line 552
    if-nez p1, :cond_3

    .line 553
    return-void

    .line 555
    :cond_3
    monitor-enter p0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 557
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 559
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v0, :cond_3c

    .line 560
    const-string v1, "ActivityManagerServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_64

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 563
    :cond_3c
    :try_start_3c
    const-string v1, "ActivityManagerServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 565
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_3c .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 566
    return-void

    .line 565
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public static startProcessLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "hostingNameStr"    # Ljava/lang/String;

    .line 539
    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 540
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mActiveUids:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UidRecord;

    .line 541
    .local v0, "record":Lcom/android/server/am/UidRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-boolean v2, v0, Lcom/android/server/am/UidRecord;->idle:Z

    if-eqz v2, :cond_1d

    .line 542
    iput-boolean v1, v0, Lcom/android/server/am/UidRecord;->idle:Z

    .line 545
    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v3, 0x3f

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 548
    .end local v0    # "record":Lcom/android/server/am/UidRecord;
    :cond_2a
    return-void
.end method

.method static updateProcessCpuTime(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 1819
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    if-nez v0, :cond_d

    goto :goto_69

    .line 1823
    :cond_d
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ge v0, v3, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 1824
    .local v0, "setImportant":Z
    :goto_17
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    if-ge v4, v3, :cond_1d

    move v1, v2

    nop

    .line 1827
    .local v1, "curImportant":Z
    :cond_1d
    if-eqz v0, :cond_32

    if-nez v1, :cond_32

    .line 1828
    :try_start_21
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/statistics/BinderServerMonitor;->clearBinderClientCpuTimeUsed(I)J

    .line 1829
    sget-object v2, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    iget-wide v3, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    invoke-virtual {v2, p0, v3, v4}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_67

    .line 1837
    :catch_2e
    move-exception v2

    goto :goto_65

    .line 1836
    :catch_30
    move-exception v2

    goto :goto_66

    .line 1830
    :cond_32
    if-nez v0, :cond_67

    if-eqz v1, :cond_67

    .line 1831
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/os/statistics/BinderServerMonitor;->clearBinderClientCpuTimeUsed(I)J

    move-result-wide v2

    .line 1832
    .local v2, "binderCpuTime":J
    sget-object v4, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    sget-object v5, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldProcCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    add-long/2addr v5, v7

    sget-object v7, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, p0, v5, v6}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 1833
    sget-object v4, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    sget-object v5, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldBinderCpuTime:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    add-long/2addr v5, v2

    invoke-virtual {v4, p0, v5, v6}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 1834
    sget-object v4, Lcom/android/server/am/ActivityManagerServiceInjector;->sFieldLastCheckedCpuTime:Ljava/lang/reflect/Field;

    iget-wide v5, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    invoke-virtual {v4, p0, v5, v6}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_64} :catch_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_64} :catch_2e

    .end local v2    # "binderCpuTime":J
    goto :goto_67

    .line 1837
    :goto_65
    goto :goto_68

    .line 1836
    :goto_66
    nop

    .line 1838
    :cond_67
    :goto_67
    nop

    .line 1839
    :goto_68
    return-void

    .line 1820
    .end local v0    # "setImportant":Z
    .end local v1    # "curImportant":Z
    :cond_69
    :goto_69
    return-void
.end method

.method public static verifyForegroundService(Lcom/android/server/am/ServiceRecord;Landroid/app/Notification;)V
    .registers 7
    .param p0, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p1, "notification"    # Landroid/app/Notification;

    .line 1253
    sget-boolean v0, Lcom/android/server/am/ActivityManagerServiceInjector;->enableAdjDowngrade:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 1254
    const/4 v0, 0x1

    .line 1255
    .local v0, "shouldVerify":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    sget-object v3, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_21

    .line 1256
    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/ActivityManagerServiceInjector;->skipVerifyList:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1257
    const/4 v0, 0x0

    .line 1258
    goto :goto_21

    .line 1255
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1261
    .end local v2    # "i":I
    :cond_21
    :goto_21
    iget-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v2, :cond_27

    if-nez v0, :cond_29

    .line 1262
    :cond_27
    iput-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1265
    .end local v0    # "shouldVerify":Z
    :cond_29
    goto :goto_2c

    .line 1266
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    .line 1268
    :goto_2c
    return-void
.end method

.method public static writeToNode(Ljava/lang/String;C)V
    .registers 8
    .param p0, "node"    # Ljava/lang/String;
    .param p1, "value"    # C

    .line 1721
    const/4 v0, 0x0

    .line 1722
    .local v0, "writer":Ljava/io/FileWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, "commMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, "errMsg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1727
    .local v3, "succMsg":Ljava/lang/String;
    :try_start_3d
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 1728
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 1729
    const-string/jumbo v4, "set_top_app"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_5c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_53

    .line 1733
    nop

    .line 1735
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 1738
    :goto_50
    goto :goto_63

    .line 1736
    :catch_51
    move-exception v4

    goto :goto_50

    .line 1733
    :catchall_53
    move-exception v4

    if-eqz v0, :cond_5b

    .line 1735
    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 1738
    goto :goto_5b

    .line 1736
    :catch_5a
    move-exception v5

    .line 1738
    :cond_5b
    :goto_5b
    throw v4

    .line 1730
    :catch_5c
    move-exception v4

    .line 1733
    if-eqz v0, :cond_63

    .line 1735
    :try_start_5f
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_51

    goto :goto_50

    .line 1741
    :cond_63
    :goto_63
    return-void
.end method
