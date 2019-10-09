.class public Lcom/android/server/am/ProcessPolicy;
.super Ljava/lang/Object;
.source "ProcessPolicy.java"


# static fields
.field private static final CAMERA_BOOST_THRESHOLD_PERCENT:D

.field static final DEBUG:Z = true

.field private static final DEVICE:Ljava/lang/String;

.field public static final FLAG_CAMERA_BOOST_PROTECT_LIST:I = 0x2000

.field public static final FLAG_CLOUD_WHITE_LIST:I = 0x4

.field public static final FLAG_DISABLE_FORCE_STOP:I = 0x20

.field public static final FLAG_DISABLE_TRIM_MEMORY:I = 0x10

.field public static final FLAG_DYNAMIC_WHITE_LIST:I = 0x2

.field public static final FLAG_ENABLE_CALL_PROTECT:I = 0x40

.field public static final FLAG_ENTERPRISE_APP_LIST:I = 0x1000

.field public static final FLAG_FAST_BOOT_APP_LIST:I = 0x800

.field public static final FLAG_NEED_TRACE_LIST:I = 0x80

.field public static final FLAG_SECRETLY_PROTECT_APP_LIST:I = 0x400

.field public static final FLAG_STATIC_WHILTE_LIST:I = 0x1

.field public static final FLAG_USER_DEFINED_LIST:I = 0x8

.field private static final JSON_KEY_PACKAGE_NAMES:Ljava/lang/String; = "pkgs"

.field private static final JSON_KEY_USER_ID:Ljava/lang/String; = "u"

.field private static final PERCEPTIBLE_APP_ADJ:I

.field private static final PREFS_LOCKED_APPS:Ljava/lang/String; = "Locked_apps"

.field private static final PRIORITY_LEVEL_HEAVY_WEIGHT:I = 0x3

.field private static final PRIORITY_LEVEL_PERCEPTIBLE:I = 0x2

.field private static final PRIORITY_LEVEL_UNKNOWN:I = -0x1

.field private static final PRIORITY_LEVEL_VISIBLE:I = 0x1

.field private static final RAM_SIZE_1GB:J = 0x40000000L

.field public static final REASON_ANR:Ljava/lang/String; = "anr"

.field public static final REASON_AUTO_IDLE_KILL:Ljava/lang/String; = "AutoIdleKill"

.field public static final REASON_AUTO_LOCK_OFF_CLEAN:Ljava/lang/String; = "AutoLockOffClean"

.field public static final REASON_AUTO_LOCK_OFF_CLEAN_BY_PRIORITY:Ljava/lang/String; = "AutoLockOffCleanByPriority"

.field public static final REASON_AUTO_POWER_KILL:Ljava/lang/String; = "AutoPowerKill"

.field public static final REASON_AUTO_SLEEP_CLEAN:Ljava/lang/String; = "AutoSleepClean"

.field public static final REASON_AUTO_SYSTEM_ABNORMAL_CLEAN:Ljava/lang/String; = "AutoSystemAbnormalClean"

.field public static final REASON_AUTO_THERMAL_KILL:Ljava/lang/String; = "AutoThermalKill"

.field public static final REASON_CRASH:Ljava/lang/String; = "crash"

.field public static final REASON_FORCE_CLEAN:Ljava/lang/String; = "ForceClean"

.field public static final REASON_GAME_CLEAN:Ljava/lang/String; = "GameClean"

.field public static final REASON_GARBAGE_CLEAN:Ljava/lang/String; = "GarbageClean"

.field public static final REASON_LOCK_SCREEN_CLEAN:Ljava/lang/String; = "LockScreenClean"

.field public static final REASON_ONE_KEY_CLEAN:Ljava/lang/String; = "OneKeyClean"

.field public static final REASON_OPTIMIZATION_CLEAN:Ljava/lang/String; = "OptimizationClean"

.field public static final REASON_SWIPE_UP_CLEAN:Ljava/lang/String; = "SwipeUpClean"

.field public static final REASON_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final REASON_USER_DEFINED:Ljava/lang/String; = "UserDefined"

.field static final TAG:Ljava/lang/String; = "ProcessManager"

.field static final TAG_PM:Ljava/lang/String; = "ProcessManager"

.field static final TAG_WITH_CLASS_NAME:Z = false

.field public static final USER_ALL:I = -0x64

.field private static sAppProtectMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraBoostProtectList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraMemThresholdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCloudWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableForceStopList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableTrimList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDynamicWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableCallProtectList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnterpriseAppList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sExpKillProcReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFastBootAppMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private static sFgServiceCheckList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFgServiceProtectMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sLockedApplicationList:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNeedTraceList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sProcessPriorityMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSecretlyProtectAppList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStaticWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUserDefinedWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sUserKillProcReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sEnableCallProtectList:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sNeedTraceList:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sFgServiceCheckList:Ljava/util/List;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraBoostProtectList:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    .line 202
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->DEVICE:Ljava/lang/String;

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/16 v2, 0x17

    if-le v0, v2, :cond_a5

    const/16 v0, 0xc8

    goto :goto_a6

    :cond_a5
    move v0, v1

    :goto_a6
    sput v0, Lcom/android/server/am/ProcessPolicy;->PERCEPTIBLE_APP_ADJ:I

    .line 242
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3

    cmp-long v0, v2, v4

    if-gez v0, :cond_b9

    const-wide/high16 v2, 0x3fd8000000000000L    # 0.375

    goto :goto_bb

    :cond_b9
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    :goto_bb
    sput-wide v2, Lcom/android/server/am/ProcessPolicy;->CAMERA_BOOST_THRESHOLD_PERCENT:D

    .line 246
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string v2, "OneKeyClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string v2, "ForceClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string v2, "GarbageClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string v2, "GameClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string v2, "OptimizationClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string v2, "SwipeUpClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string v2, "UserDefined"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    const-string v2, "anr"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    const-string v2, "crash"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    const-string v2, "com.tencent.mm"

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    const-string v2, "com.tencent.mobileqq"

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    const/4 v2, -0x1

    sget-object v3, Lcom/android/server/am/ProcessUtils;->PRIORITY_UNKNOW:Landroid/util/Pair;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/am/ProcessUtils;->PRIORITY_VISIBLE:Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/am/ProcessUtils;->PRIORITY_PERCEPTIBLE:Landroid/util/Pair;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    sget-object v2, Lcom/android/server/am/ProcessUtils;->PRIORITY_HEAVY:Landroid/util/Pair;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string v1, "com.miui.voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string v1, "com.miui.bugreport"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string v1, "com.xiaomi.miplay"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string v1, "com.miui.virtualsim"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string v1, "com.miui.touchassistant"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string v1, "com.xiaomi.joyose"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string v1, "com.miui.tsmclient"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    const-string v1, "com.miui.voiceassist"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "polaris"

    const/high16 v2, 0x180000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "sirius"

    const/high16 v3, 0x100000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string v1, "dipper"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "ursa"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "perseus"

    const v3, 0x1ccc00

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string v1, "equuleus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string v1, "cactus"

    const v2, 0xbb800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 4
    .param p1, "processManagerService"    # Lcom/android/server/am/ProcessManagerService;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    .line 293
    iput-object p2, p0, Lcom/android/server/am/ProcessPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 294
    iput-object p3, p0, Lcom/android/server/am/ProcessPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ProcessPolicy;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ProcessPolicy;
    .param p1, "x1"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->saveLockedAppIntoSettings(Landroid/content/Context;)V

    return-void
.end method

.method private isLockedApplicationForUserId(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 619
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 620
    return v0

    .line 622
    :cond_4
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 623
    .local v1, "lockedApplication":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2b

    .line 624
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 625
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 626
    const/4 v0, 0x1

    return v0

    .line 628
    .end local v3    # "item":Ljava/lang/String;
    :cond_2a
    goto :goto_16

    .line 630
    :cond_2b
    return v0
.end method

.method private loadLockedAppFromSettings(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .line 571
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "locked_apps"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "jsonFormatText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_a2

    return-void

    .line 578
    :cond_16
    :try_start_16
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 579
    .local v2, "userSpaceArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    move v4, v3

    .line 579
    .local v4, "spaceIndex":I
    :goto_1d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_80

    .line 580
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 582
    .local v5, "userSpaceObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 583
    .local v6, "userId":I
    const-string/jumbo v7, "pkgs"

    .line 584
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 585
    .local v7, "packageNameArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 586
    .local v8, "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move v9, v3

    .line 586
    .local v9, "pkgIndex":I
    :goto_3d
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_4d

    .line 587
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 589
    .end local v9    # "pkgIndex":I
    :cond_4d
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v9, "ProcessManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadLockedAppFromSettings userId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-pkgNames:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 591
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_7d} :catch_81
    .catchall {:try_start_16 .. :try_end_7d} :catchall_a2

    .line 579
    .end local v5    # "userSpaceObject":Lorg/json/JSONObject;
    .end local v6    # "userId":I
    .end local v7    # "packageNameArray":Lorg/json/JSONArray;
    .end local v8    # "packageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 597
    .end local v2    # "userSpaceArray":Lorg/json/JSONArray;
    .end local v4    # "spaceIndex":I
    :cond_80
    goto :goto_a0

    .line 594
    :catch_81
    move-exception v2

    .line 595
    .local v2, "e":Ljava/lang/Exception;
    :try_start_82
    const-string v3, "ProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadLockedApp failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 598
    .end local v1    # "jsonFormatText":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_a0
    monitor-exit v0

    .line 599
    return-void

    .line 598
    :catchall_a2
    move-exception v1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_82 .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method private removeDefaultLockedAppIfExists(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 516
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 517
    .local v0, "defaultLockedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 518
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 520
    :cond_19
    return-void
.end method

.method private resetTaskAvailableIfNeeded(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 770
    .local p1, "newFastBootList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 771
    .local v0, "oldFastBootEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_4
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    move-object v0, v2

    .line 773
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_6b

    .line 775
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 776
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 777
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_2b

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 778
    goto :goto_10

    .line 782
    :cond_2b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    .line 783
    .local v4, "booleanArray":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x0

    .line 783
    .local v5, "i":I
    :goto_32
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_69

    .line 784
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_66

    .line 785
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 786
    .local v6, "userId":I
    const-string v7, "ProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reset Task packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v7, p0, Lcom/android/server/am/ProcessPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v3, v6, v7}, Lcom/android/server/am/ProcessUtils;->setTaskToAvailable(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)V

    .line 783
    .end local v6    # "userId":I
    :cond_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 790
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseBooleanArray;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "booleanArray":Landroid/util/SparseBooleanArray;
    .end local v5    # "i":I
    :cond_69
    goto :goto_10

    .line 791
    :cond_6a
    return-void

    .line 773
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method private saveLockedAppIntoSettings(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 546
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_8b

    .line 549
    .local v1, "userSpaceArray":Lorg/json/JSONArray;
    :try_start_8
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 550
    .local v3, "userId":Ljava/lang/Integer;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 551
    .local v4, "userSpaceObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "u"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string/jumbo v5, "pkgs"

    new-instance v6, Lorg/json/JSONArray;

    sget-object v7, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    .line 553
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 552
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 555
    .end local v3    # "userId":Ljava/lang/Integer;
    .end local v4    # "userSpaceObject":Lorg/json/JSONObject;
    goto :goto_12

    .line 558
    :cond_40
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveLockedAppIntoSettings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5b} :catch_5c
    .catchall {:try_start_8 .. :try_end_5b} :catchall_8b

    .line 563
    goto :goto_7b

    .line 560
    :catch_5c
    move-exception v2

    .line 561
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v3, "ProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveLockedAppIntoSettings failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "locked_apps"

    .line 566
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 567
    .end local v1    # "userSpaceArray":Lorg/json/JSONArray;
    monitor-exit v0

    .line 568
    return-void

    .line 567
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_5d .. :try_end_8d} :catchall_8b

    throw v1
.end method

.method private updateAppProtectMap(Lmiui/process/ProcessCloudData;)V
    .registers 7
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 680
    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getAppProtectMap()Ljava/util/Map;

    move-result-object v0

    .line 681
    .local v0, "appProtectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    if-eqz v0, :cond_49

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    .line 683
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 684
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 685
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 686
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update AP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 692
    :catchall_47
    move-exception v2

    goto :goto_85

    .line 687
    :cond_49
    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_83

    :cond_51
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    .line 688
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_83

    .line 689
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 690
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update AP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_83
    :goto_83
    monitor-exit v1

    .line 693
    return-void

    .line 692
    :goto_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_9 .. :try_end_86} :catchall_47

    throw v2
.end method

.method private updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isLocked"    # Z

    .line 500
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 502
    .local v1, "lockedApplication":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_20

    .line 503
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 504
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :cond_20
    if-eqz p3, :cond_26

    .line 507
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 509
    :cond_26
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 510
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->removeDefaultLockedAppIfExists(Ljava/lang/String;)V

    .line 512
    .end local v1    # "lockedApplication":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2c
    monitor-exit v0

    .line 513
    return-void

    .line 512
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private updateCameraMemThresholdMap(Lmiui/process/ProcessCloudData;)V
    .registers 7
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 737
    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getCameraMemThresholdMap()Ljava/util/Map;

    move-result-object v0

    .line 738
    .local v0, "thresholdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    if-eqz v0, :cond_49

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    .line 740
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 741
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 742
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 743
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 749
    :catchall_47
    move-exception v2

    goto :goto_85

    .line 744
    :cond_49
    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_83

    :cond_51
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    .line 745
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_83

    .line 746
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 747
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_83
    :goto_83
    monitor-exit v1

    .line 750
    return-void

    .line 749
    :goto_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_9 .. :try_end_86} :catchall_47

    throw v2
.end method

.method private updateCloudWhiteList(Lmiui/process/ProcessCloudData;)V
    .registers 7
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 664
    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getCloudWhiteList()Ljava/util/List;

    move-result-object v0

    .line 665
    .local v0, "cloudWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    if-eqz v0, :cond_45

    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    .line 667
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 668
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 669
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 670
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 676
    :catchall_43
    move-exception v2

    goto :goto_7d

    .line 671
    :cond_45
    if-eqz v0, :cond_4d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_4d
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    .line 672
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7b

    .line 673
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 674
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_7b
    :goto_7b
    monitor-exit v1

    .line 677
    return-void

    .line 676
    :goto_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_43

    throw v2
.end method

.method private updateFastBootList(Lmiui/process/ProcessCloudData;)V
    .registers 9
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 712
    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getFastBootList()Ljava/util/List;

    move-result-object v0

    .line 714
    .local v0, "fastBootList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_7
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 716
    .local v2, "oldFastBootSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_b7

    .line 717
    if-eqz v0, :cond_71

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 718
    invoke-interface {v2, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 719
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessPolicy;->resetTaskAvailableIfNeeded(Ljava/util/List;)V

    .line 720
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_27
    sget-object v3, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 722
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 723
    .local v4, "packageName":Ljava/lang/String;
    sget-object v5, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_30

    .line 725
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_27 .. :try_end_48} :catchall_6e

    .line 726
    const-string v1, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update FA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 725
    :catchall_6e
    move-exception v3

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v3

    .line 727
    :cond_71
    if-eqz v0, :cond_79

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b6

    :cond_79
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b6

    .line 728
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessPolicy;->resetTaskAvailableIfNeeded(Ljava/util/List;)V

    .line 729
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_87
    sget-object v3, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 731
    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_b3

    .line 732
    const-string v1, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update FA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 731
    :catchall_b3
    move-exception v3

    :try_start_b4
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v3

    .line 734
    :cond_b6
    :goto_b6
    return-void

    .line 716
    .end local v2    # "oldFastBootSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_b7
    move-exception v2

    :try_start_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v2
.end method

.method private updateFgProtectMap(Lmiui/process/ProcessCloudData;)V
    .registers 7
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 696
    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getFgProtectMap()Ljava/util/Map;

    move-result-object v0

    .line 697
    .local v0, "fgProtectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    if-eqz v0, :cond_49

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    .line 699
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 700
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 701
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 702
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update FG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 708
    :catchall_47
    move-exception v2

    goto :goto_85

    .line 703
    :cond_49
    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_83

    :cond_51
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    .line 704
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_83

    .line 705
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 706
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update FG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_83
    :goto_83
    monitor-exit v1

    .line 709
    return-void

    .line 708
    :goto_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_9 .. :try_end_86} :catchall_47

    throw v2
.end method

.method private updateMaxAdjLocked(Lcom/android/server/am/ProcessRecord;IZ)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "targetMaxAdj"    # I
    .param p3, "protect"    # Z

    .line 911
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_5

    .line 912
    return-void

    .line 915
    :cond_5
    if-eqz p3, :cond_e

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v0, p2, :cond_e

    .line 916
    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    goto :goto_16

    .line 917
    :cond_e
    if-nez p3, :cond_16

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-ge v0, p2, :cond_16

    .line 918
    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 920
    :cond_16
    :goto_16
    return-void
.end method

.method private updateMaxProcStateLocked(Lcom/android/server/am/ProcessRecord;IZ)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "targetMaxProcState"    # I
    .param p3, "protect"    # Z

    .line 927
    if-eqz p3, :cond_9

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    if-le v0, p2, :cond_9

    .line 928
    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    goto :goto_11

    .line 929
    :cond_9
    if-nez p3, :cond_11

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    if-ge v0, p2, :cond_11

    .line 930
    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 932
    :cond_11
    :goto_11
    return-void
.end method

.method private updateProcessPriority(Lcom/android/server/am/ProcessRecord;IZ)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "priorityLevel"    # I
    .param p3, "protect"    # Z

    .line 896
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 897
    .local v0, "priorityPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2a

    .line 898
    if-eqz p3, :cond_15

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_17

    :cond_15
    const/16 v1, 0x3e9

    .line 899
    .local v1, "targetMaxAdj":I
    :goto_17
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/ProcessPolicy;->updateMaxAdjLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 901
    if-eqz p3, :cond_25

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_27

    :cond_25
    const/16 v2, 0x13

    .line 902
    .local v2, "targetMaxProcState":I
    :goto_27
    invoke-direct {p0, p1, v2, p3}, Lcom/android/server/am/ProcessPolicy;->updateMaxProcStateLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 904
    .end local v1    # "targetMaxAdj":I
    .end local v2    # "targetMaxProcState":I
    :cond_2a
    return-void
.end method

.method private updateSecretlyProtectAppList(Lmiui/process/ProcessCloudData;)V
    .registers 7
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 753
    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getSecretlyProtectAppList()Ljava/util/List;

    move-result-object v0

    .line 754
    .local v0, "secretlyProtectAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    if-eqz v0, :cond_45

    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    .line 756
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 757
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 758
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 759
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update SPAL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 765
    :catchall_43
    move-exception v2

    goto :goto_7d

    .line 760
    :cond_45
    if-eqz v0, :cond_4d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    :cond_4d
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    .line 761
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7b

    .line 762
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 763
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update SPAL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_7b
    :goto_7b
    monitor-exit v1

    .line 766
    return-void

    .line 765
    :goto_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_43

    throw v2
.end method


# virtual methods
.method public addWhiteList(ILjava/util/List;Z)V
    .registers 9
    .param p1, "flag"    # I
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 374
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_c

    .line 376
    :try_start_7
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    .local v1, "targetWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_9
    goto :goto_55

    .line 401
    .end local v1    # "targetWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_a
    move-exception v1

    goto :goto_60

    .line 377
    :cond_c
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_13

    .line 378
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    goto :goto_9

    .line 379
    :cond_13
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1a

    .line 380
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    goto :goto_9

    .line 381
    :cond_1a
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_21

    .line 382
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    goto :goto_9

    .line 383
    :cond_21
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_28

    .line 384
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    goto :goto_9

    .line 385
    :cond_28
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_2f

    .line 386
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    goto :goto_9

    .line 388
    :cond_2f
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_3a

    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_3a

    .line 390
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    goto :goto_9

    .line 393
    :cond_3a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .restart local v1    # "targetWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWhiteList with unknown flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_55
    if-nez p3, :cond_5a

    .line 398
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 400
    :cond_5a
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    monitor-exit v0

    move-object v0, v1

    .line 402
    .end local v1    # "targetWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "targetWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void

    .line 401
    .end local v0    # "targetWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_a

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 945
    const-string v0, "Process Policy:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2d

    .line 948
    const-string v0, "DY:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    move v0, v1

    .line 949
    .local v0, "i":I
    :goto_14
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 950
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 955
    .end local v0    # "i":I
    :cond_2d
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 956
    const-string v0, "CL:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    move v0, v1

    .line 957
    .restart local v0    # "i":I
    :goto_3b
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_54

    .line 958
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 959
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 963
    .end local v0    # "i":I
    :cond_54
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7b

    .line 964
    const-string v0, "US:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    move v0, v1

    .line 965
    .restart local v0    # "i":I
    :goto_62
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7b

    .line 966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 971
    .end local v0    # "i":I
    :cond_7b
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d6

    .line 972
    const-string v0, "LO:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 974
    .local v0, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 975
    .local v3, "userId":Ljava/lang/Integer;
    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 976
    .local v4, "lockedApplication":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 977
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 979
    .local v6, "app":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    .end local v6    # "app":Ljava/lang/String;
    goto :goto_c2

    .line 982
    .end local v3    # "userId":Ljava/lang/Integer;
    .end local v4    # "lockedApplication":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d5
    goto :goto_92

    .line 985
    .end local v0    # "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_d6
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_100

    .line 986
    const-string v0, "FA:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ed
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 988
    .local v2, "protectedPackage":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    .end local v2    # "protectedPackage":Ljava/lang/String;
    goto :goto_ed

    .line 993
    :cond_100
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v0, :cond_12b

    .line 994
    const-string v0, "EP Activated: true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12b

    .line 996
    move v0, v1

    .line 996
    .local v0, "i":I
    :goto_112
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_12b

    .line 997
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_112

    .line 1004
    .end local v0    # "i":I
    :cond_12b
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_153

    .line 1005
    const-string v0, "SPAL:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    nop

    .line 1006
    .local v1, "i":I
    :goto_139
    move v0, v1

    .line 1006
    .end local v1    # "i":I
    .restart local v0    # "i":I
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_153

    .line 1007
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    add-int/lit8 v1, v0, 0x1

    .line 1006
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_139

    .line 1011
    .end local v1    # "i":I
    :cond_153
    return-void
.end method

.method public getCameraMemThreshold()J
    .registers 5

    .line 841
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_13

    .line 842
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-double v0, v0

    sget-wide v2, Lcom/android/server/am/ProcessPolicy;->CAMERA_BOOST_THRESHOLD_PERCENT:D

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 843
    :cond_13
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 844
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 846
    :cond_2d
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLockedApplication(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v0, "lockedApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 636
    .local v1, "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1c

    .line 637
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 639
    :cond_1c
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 640
    return-object v0
.end method

.method public getWhiteList(I)Ljava/util/List;
    .registers 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v0, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_14

    .line 330
    :try_start_c
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_14

    .line 368
    :catchall_12
    move-exception v2

    goto :goto_81

    .line 332
    :cond_14
    :goto_14
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1d

    .line 333
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 335
    :cond_1d
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_26

    .line 336
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    :cond_26
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_2f

    .line 339
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 341
    :cond_2f
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_38

    .line 342
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    :cond_38
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_41

    .line 345
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    :cond_41
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_4a

    .line 348
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sEnableCallProtectList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    :cond_4a
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_53

    .line 351
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sNeedTraceList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    :cond_53
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_5c

    .line 354
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_5c
    and-int/lit16 v2, p1, 0x800

    if-eqz v2, :cond_69

    .line 357
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    :cond_69
    sget-boolean v2, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v2, :cond_76

    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_76

    .line 362
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    :cond_76
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_7f

    .line 366
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sCameraBoostProtectList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    :cond_7f
    monitor-exit v1

    .line 369
    return-object v0

    .line 368
    :goto_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_c .. :try_end_82} :catchall_12

    throw v2
.end method

.method public isAppTaskAvailable(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 935
    const/4 v0, 0x1

    .line 936
    .local v0, "isAvailable":Z
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 937
    :try_start_4
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 938
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    move v0, v2

    .line 940
    :cond_1a
    monitor-exit v1

    .line 941
    return v0

    .line 940
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public isCameraBoostEnable()Z
    .registers 3

    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_17

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public isFastBootEnable(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 817
    if-lez p2, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessPolicy;->isInFastBootList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    .line 818
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessManagerService;->isAllowAutoStart(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 817
    :goto_13
    return v0
.end method

.method public isInAppProtectList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 828
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 830
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isInDynamicList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 811
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 813
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isInFastBootList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 822
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 824
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isInSecretlyProtectList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "processName"    # Ljava/lang/String;

    .line 834
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 836
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isLockedApplication(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 609
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplicationForUserId(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, -0x64

    .line 611
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ProcessPolicy;->isLockedApplicationForUserId(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_15

    .line 614
    :cond_12
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 612
    :cond_15
    :goto_15
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 615
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 806
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessPolicy;->isInDynamicList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-nez v0, :cond_16

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v1, Lcom/android/server/am/ProcessPolicy;->PERCEPTIBLE_APP_ADJ:I

    if-gt v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method protected promoteLockedApp(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 524
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_1d

    .line 526
    const-string v0, "ProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do not promote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return-void

    .line 531
    :cond_1d
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    .line 533
    .local v0, "isLocked":Z
    if-eqz v0, :cond_2a

    const/16 v1, 0x190

    goto :goto_2c

    :cond_2a
    const/16 v1, 0x3e9

    .line 534
    .local v1, "targetMaxAdj":I
    :goto_2c
    if-eqz v0, :cond_31

    .line 535
    const/16 v2, 0xc

    goto :goto_33

    :cond_31
    const/16 v2, 0x13

    .line 537
    .local v2, "targetMaxProcState":I
    :goto_33
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/ProcessPolicy;->updateMaxAdjLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 538
    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/am/ProcessPolicy;->updateMaxProcStateLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 540
    const-string v3, "ProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "promoteLockedApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " maxAdj to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 541
    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", maxProcState to + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 542
    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void
.end method

.method public protectCurrentProcess(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "isProtected"    # Z

    .line 854
    const/4 v0, 0x0

    if-eqz p1, :cond_66

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    goto :goto_66

    .line 858
    :cond_8
    const/4 v1, 0x0

    .line 859
    .local v1, "priorityLevel":Ljava/lang/Integer;
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 860
    :try_start_c
    sget-object v3, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v1, v3

    .line 861
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_63

    .line 863
    if-nez v1, :cond_1d

    .line 864
    return v0

    .line 867
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ProcessPolicy;->updateProcessPriority(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 868
    const-string v0, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protectCurrentProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " maxAdj to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 869
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", maxProcState to + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 870
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 868
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x1

    return v0

    .line 861
    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0

    .line 855
    .end local v1    # "priorityLevel":Ljava/lang/Integer;
    :cond_66
    :goto_66
    return v0
.end method

.method public resetWhiteList(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 475
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->updateDynamicWhiteList(Landroid/content/Context;I)V

    .line 477
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_6
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 479
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setAppTaskAvailable(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isAvailable"    # Z

    .line 794
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 796
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 797
    .local v1, "availableArray":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 798
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v2, "ProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " available:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v1    # "availableArray":Landroid/util/SparseBooleanArray;
    :cond_42
    monitor-exit v0

    .line 802
    return-void

    .line 801
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 303
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    nop

    .line 305
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x11090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    .line 306
    nop

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    .line 308
    nop

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    .line 310
    nop

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessPolicy;->sNeedTraceList:Ljava/util/List;

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    .line 314
    nop

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessPolicy;->sFgServiceCheckList:Ljava/util/List;

    .line 316
    nop

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessPolicy;->sCameraBoostProtectList:Ljava/util/List;

    .line 318
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_4 .. :try_end_85} :catchall_91

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->loadLockedAppFromSettings(Landroid/content/Context;)V

    .line 322
    const-string v0, "com.jeejen.family.miui"

    const/16 v1, -0x64

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 323
    return-void

    .line 318
    :catchall_91
    move-exception v1

    :try_start_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v1
.end method

.method public updateApplicationLockedState(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isLocked"    # Z

    .line 484
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 485
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessPolicy$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessPolicy$1;-><init>(Lcom/android/server/am/ProcessPolicy;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    iget-object v0, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 493
    .local v0, "targetApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1a

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessPolicy;->promoteLockedApp(Lcom/android/server/am/ProcessRecord;)V

    .line 496
    :cond_1a
    return-void
.end method

.method public updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 2
    .param p1, "cloudData"    # Lmiui/process/ProcessCloudData;

    .line 645
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateCloudWhiteList(Lmiui/process/ProcessCloudData;)V

    .line 648
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateAppProtectMap(Lmiui/process/ProcessCloudData;)V

    .line 651
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateFgProtectMap(Lmiui/process/ProcessCloudData;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateFastBootList(Lmiui/process/ProcessCloudData;)V

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateCameraMemThresholdMap(Lmiui/process/ProcessCloudData;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateSecretlyProtectAppList(Lmiui/process/ProcessCloudData;)V

    .line 661
    return-void
.end method

.method public updateDynamicWhiteList(Landroid/content/Context;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "activeWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getActiveWallpaperPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 409
    .local v2, "wallpaperPkg":Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 410
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_f
    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 415
    .local v3, "inputMethodPkg":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 416
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_19
    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getActiveTtsEngine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 421
    .local v4, "ttsEngine":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 422
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_23
    invoke-static {}, Lcom/android/server/am/ProcessUtils;->isPhoneWorking()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 427
    const-string v1, "com.android.incallui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_2e
    invoke-static {}, Lcom/android/server/am/ProcessUtils;->isVoipWorking()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 432
    const-string v1, "com.miui.voip"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_39
    iget-object v1, p0, Lcom/android/server/am/ProcessPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 437
    sget-object v5, Lcom/android/server/am/ProcessPolicy;->sFgServiceCheckList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 438
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    .line 439
    invoke-virtual {v7, v6, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 440
    .local v7, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 441
    .local v9, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_71

    iget-boolean v10, v9, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz v10, :cond_71

    .line 442
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    goto :goto_72

    .line 445
    .end local v9    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_71
    goto :goto_5b

    .line 446
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    :cond_72
    :goto_72
    goto :goto_45

    .line 447
    :cond_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_3c .. :try_end_74} :catchall_e7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 450
    iget-object v1, p0, Lcom/android/server/am/ProcessPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v5, 0x7

    .line 451
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v5

    .line 453
    .local v5, "accessibilityList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v5, :cond_be

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_be

    .line 454
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 455
    .local v6, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v6, :cond_bd

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bd

    .line 456
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 457
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_bd

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_bd

    .line 458
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v6    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_bd
    goto :goto_8a

    .line 465
    :cond_be
    const-string v1, "ProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update DY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 469
    :try_start_e0
    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    .line 470
    monitor-exit v6

    .line 471
    return-void

    .line 470
    :catchall_e4
    move-exception v1

    monitor-exit v6
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_e4

    throw v1

    .line 447
    .end local v5    # "accessibilityList":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :catchall_e7
    move-exception v5

    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 876
    if-eqz p1, :cond_68

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_7

    goto :goto_68

    .line 880
    :cond_7
    const/4 v0, 0x0

    .line 881
    .local v0, "priorityLevel":Ljava/lang/Integer;
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 882
    :try_start_b
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    .line 883
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_65

    .line 885
    if-nez v0, :cond_1c

    .line 886
    return-void

    .line 889
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ProcessPolicy;->updateProcessPriority(Lcom/android/server/am/ProcessRecord;IZ)V

    .line 890
    const-string v1, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProcessForegroundLocked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " maxAdj to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 891
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", maxProcState to + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 892
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 890
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void

    .line 883
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2

    .line 877
    .end local v0    # "priorityLevel":Ljava/lang/Integer;
    :cond_68
    :goto_68
    return-void
.end method
