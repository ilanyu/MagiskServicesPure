.class public final Lcom/miui/server/PerfShielderService;
.super Lcom/android/internal/app/IPerfShielder$Stub;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/PerfShielderService$BindServiceHandler;,
        Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;,
        Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;,
        Lcom/miui/server/PerfShielderService$PidSwapGetter;
    }
.end annotation


# static fields
.field private static final ACTIVITY_BATCH_MAX_INTERVAL:J = 0xea60L

.field private static final ACTIVITY_BATCH_MAX_SIZE:I = 0xa

.field private static final BIND_FAIL_RETRY_TIME:J = 0xea60L

.field private static final BIND_RETRY_TIME_BASE:J = 0xea60L

.field private static final BIND_RETRY_TIME_MAX:J = 0x36ee80L

.field private static final BIND_SYSOPT_SERVICE_FIRST:J = 0x5dcL

.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:J = 0x493e0L

.field private static final LAUNCH_TYPE_DEFAULT:I = 0x0

.field private static final LAUNCH_TYPE_FROM_HOME:I = 0x1

.field private static final MIUI_SYS_USER_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.SysoptService"

.field private static final MIUI_SYS_USER_PACKAHE:Ljava/lang/String; = "com.miui.daemon"

.field static final MSG_BIND_MIUI_SYS_USER:I = 0x2

.field static final MSG_REBIND:I = 0x1

.field private static final NATIVE_ADJ:I

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.MiuiPerfService"

.field private static final PERFORMANCE_PACKAGE:Ljava/lang/String; = "com.miui.daemon"

.field private static final PROCESSGROUP_CGROUP_PATH:Ljava/lang/String; = "/acct"

.field private static final PROCESSGROUP_CGROUP_PROCS_FILE:Ljava/lang/String; = "/cgroup.procs"

.field private static final PROCESSGROUP_PID_PREFIX:Ljava/lang/String; = "pid_"

.field private static final PROCESSGROUP_UID_PREFIX:Ljava/lang/String; = "uid_"

.field private static final SELF_CAUSE_ANR:I = 0x7

.field private static final SELF_CAUSE_NAMES:[Ljava/lang/String;

.field public static final SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field private static final SYSTEM_SERVER:Ljava/lang/String; = "system_server"

.field public static final TAG:Ljava/lang/String; = "PerfShielderService"

.field private static WINDOW_NAME_REX:Ljava/util/regex/Pattern;

.field private static WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastRetryTime:J


# instance fields
.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

.field private mLaunchTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

.field mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private final mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerfEventSocketFdLock:Ljava/lang/Object;

.field protected mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

.field private final mPerformanceConnection:Landroid/content/ServiceConnection;

.field private mReflectGetPssMethod:Ljava/lang/reflect/Method;

.field private mWMServiceConnection:Lcom/miui/server/WMServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 94
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    .line 100
    const-string v0, "(\\w+\\.)+(\\w+)\\/\\.?(\\w+\\.)*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_REX:Ljava/util/regex/Pattern;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    .line 103
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "Keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "InputMethod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "Volume Control"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "GestureStubBottom"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "GestureStub"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "GestureAnywhereView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_5e

    .line 116
    const/16 v0, -0x11

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

    goto :goto_62

    .line 118
    :cond_5e
    const/16 v0, -0x3e8

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

    .line 144
    :goto_62
    const-string v1, "Slow main thread"

    const-string v2, "Slow handle input"

    const-string v3, "Slow handle animation"

    const-string v4, "Slow handle traversal"

    const-string v5, "Slow bitmap uploads"

    const-string v6, "Slow issue draw commands"

    const-string v7, "Slow swap buffers"

    const-string v8, "ANR"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Lcom/android/internal/app/IPerfShielder$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFdLock:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    .line 140
    new-instance v0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    .line 586
    new-instance v0, Lcom/miui/server/PerfShielderService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$2;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    .line 638
    new-instance v0, Lcom/miui/server/PerfShielderService$3;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$3;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 768
    new-instance v0, Lcom/miui/server/PerfShielderService$4;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$4;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 158
    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-static {}, Lcom/android/server/MiuiBgThread;->get()Lcom/android/server/MiuiBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;-><init>(Lcom/miui/server/PerfShielderService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    .line 160
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reflectDebugGetPssMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    .line 161
    new-instance v0, Lcom/miui/server/WMServiceConnection;

    invoke-direct {v0, p1}, Lcom/miui/server/WMServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mWMServiceConnection:Lcom/miui/server/WMServiceConnection;

    .line 162
    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/PerfShielderService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .line 69
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/PerfShielderService;J)V
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # J

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/server/PerfShielderService;J)V
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # J

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/server/PerfShielderService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .line 69
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindMiuiSysUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/PerfShielderService;I)[J
    .registers 3
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .line 69
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .line 69
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .line 69
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .line 69
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    return-object v0
.end method

.method static synthetic access$900()J
    .registers 2

    .line 69
    sget-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    return-wide v0
.end method

.method private bindMiuiSysUser()V
    .registers 8

    .line 654
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    # getter for: Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z
    invoke-static {v0}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->access$1100(Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 655
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 656
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.daemon"

    const-string v2, "com.miui.daemon.performance.SysoptService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 657
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 659
    sget-wide v1, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    invoke-direct {p0, v1, v2}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    .line 660
    sget-wide v1, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    const-wide/32 v5, 0x36ee80

    cmp-long v1, v1, v5

    if-ltz v1, :cond_34

    .line 661
    goto :goto_38

    :cond_34
    sget-wide v1, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    shl-long v5, v1, v4

    :goto_38
    sput-wide v5, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    .line 662
    const-string v1, "PerfShielderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiuiSysUser: can\'t bind to com.miui.daemon.performance.SysoptService, retry time == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 665
    :cond_53
    const-string v1, "PerfShielderService"

    const-string v2, "MiuiSysUser service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5a
    :goto_5a
    return-void
.end method

.method private bindService()V
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v0, :cond_36

    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.daemon"

    const-string v2, "com.miui.daemon.performance.MiuiPerfService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 578
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance: can\'t bind to com.miui.daemon.performance.MiuiPerfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-wide/32 v1, 0xea60

    invoke-direct {p0, v1, v2}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    goto :goto_36

    .line 581
    :cond_2f
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_36
    :goto_36
    return-void
.end method

.method private checkSystemPermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 763
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_d

    .line 766
    return-void

    .line 764
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not match caller of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private convertUidPidToPath(II)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/acct"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid_"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pid_"

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cgroup.procs"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "path"    # Ljava/lang/String;

    .line 511
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 514
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    .line 515
    return-void

    .line 519
    :cond_d
    :try_start_d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 521
    :goto_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 522
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_22} :catch_30
    .catchall {:try_start_d .. :try_end_22} :catchall_2e

    goto :goto_18

    .line 528
    .end local v3    # "line":Ljava/lang/String;
    :cond_23
    nop

    .line 529
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2d

    .line 531
    :catch_28
    move-exception v2

    .line 532
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 534
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3a

    .line 533
    :cond_2d
    :goto_2d
    goto :goto_3a

    .line 527
    :catchall_2e
    move-exception v2

    goto :goto_3b

    .line 524
    :catch_30
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Exception;
    :try_start_31
    invoke-virtual {v2, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    .line 528
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2d

    .line 529
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_28

    goto :goto_2d

    .line 535
    :goto_3a
    return-void

    .line 527
    :goto_3b
    nop

    .line 528
    if-eqz v1, :cond_47

    .line 529
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_47

    .line 531
    :catch_42
    move-exception v3

    .line 532
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 533
    :cond_47
    :goto_47
    throw v2
.end method

.method private getProcessPss(I)J
    .registers 11
    .param p1, "pid"    # I

    .line 341
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_7

    .line 342
    return-wide v1

    .line 344
    :cond_7
    move-wide v0, v1

    .line 346
    .local v0, "pss":J
    :try_start_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lt v2, v3, :cond_2d

    .line 347
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    aput-object v7, v3, v5

    aput-object v7, v3, v4

    invoke-virtual {v2, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_44

    .line 349
    :cond_2d
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v7, v3, v5

    invoke-virtual {v2, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_47
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_43} :catch_45

    move-wide v0, v2

    .line 354
    :goto_44
    goto :goto_4c

    .line 353
    :catch_45
    move-exception v2

    goto :goto_4c

    .line 351
    :catch_47
    move-exception v2

    .line 352
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_44

    .line 355
    :goto_4c
    return-wide v0
.end method

.method private getProcessStatusValues(I)[J
    .registers 7
    .param p1, "pid"    # I

    .line 359
    const-string v0, "VmSwap:"

    const-string v1, "PPid:"

    const-string v2, "VmRSS:"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "procStatusLabels":[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 361
    .local v1, "procStatusValues":[J
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 362
    const/4 v4, 0x1

    aput-wide v2, v1, v4

    .line 363
    const/4 v4, 0x2

    aput-wide v2, v1, v4

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 365
    return-object v1
.end method

.method private needToLimit(ILjava/lang/String;)Z
    .registers 9
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "limit":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 191
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_18
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 192
    const/4 v3, 0x0

    .line 193
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_37

    .line 194
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_34} :catch_44
    .catchall {:try_start_18 .. :try_end_34} :catchall_42

    if-eqz v4, :cond_37

    .line 195
    const/4 v0, 0x1

    .line 202
    .end local v3    # "line":Ljava/lang/String;
    :cond_37
    nop

    .line 203
    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_41

    .line 205
    :catch_3c
    move-exception v3

    .line 206
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4e

    .line 207
    :cond_41
    :goto_41
    goto :goto_4e

    .line 201
    :catchall_42
    move-exception v3

    goto :goto_4f

    .line 198
    :catch_44
    move-exception v3

    .line 199
    .local v3, "e":Ljava/lang/Exception;
    :try_start_45
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_42

    .line 202
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_41

    .line 203
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_3c

    goto :goto_41

    .line 209
    :goto_4e
    return v0

    .line 201
    :goto_4f
    nop

    .line 202
    if-eqz v2, :cond_5b

    .line 203
    :try_start_52
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5b

    .line 205
    :catch_56
    move-exception v4

    .line 206
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 207
    :cond_5b
    :goto_5b
    throw v3
.end method

.method private obtainPerfEventSocketFd()V
    .registers 5

    .line 872
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 873
    .local v0, "perfService":Lcom/miui/daemon/performance/server/IMiuiPerfService;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 874
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_f
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_27

    if-nez v2, :cond_25

    .line 877
    :try_start_17
    invoke-interface {v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 878
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21
    .catchall {:try_start_17 .. :try_end_20} :catchall_27

    .line 881
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_25

    .line 879
    :catch_21
    move-exception v2

    .line 880
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_22
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 883
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_25
    :goto_25
    monitor-exit v1

    goto :goto_2a

    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v2

    .line 885
    :cond_2a
    :goto_2a
    return-void
.end method

.method private reflectDebugGetPssMethod()Ljava/lang/reflect/Method;
    .registers 9

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "getPss":Ljava/lang/reflect/Method;
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v2, :cond_23

    .line 329
    const-class v1, Landroid/os/Debug;

    const-string v2, "getPss"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-class v5, [J

    aput-object v5, v6, v4

    const-class v4, [J

    aput-object v4, v6, v3

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    goto :goto_36

    .line 331
    :cond_23
    const-class v1, Landroid/os/Debug;

    const-string v2, "getPss"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const-class v5, [J

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_39
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_37

    move-object v0, v1

    .line 336
    :goto_36
    goto :goto_3e

    .line 335
    :catch_37
    move-exception v1

    goto :goto_3e

    .line 333
    :catch_39
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_36

    .line 337
    :goto_3e
    return-object v0
.end method

.method private reportActivityLaunchRecords()V
    .registers 9

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7b

    .line 447
    new-instance v0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 448
    .local v0, "versionGetter":Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v1, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_76

    .line 450
    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LaunchTimeRecord;

    .line 451
    .local v3, "record":Lcom/android/internal/app/LaunchTimeRecord;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "PackageName"

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v5, "PackageVersion"

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v5, "Activity"

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->getActivity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v5, "LaunchStartTime"

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 456
    const-string v5, "LaunchEndTime"

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 457
    const-string v5, "Type"

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->getType()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v5, "IsColdStart"

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v3    # "record":Lcom/android/internal/app/LaunchTimeRecord;
    .end local v4    # "bundle":Landroid/os/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 461
    .end local v2    # "i":I
    :cond_76
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v2, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportActivityLaunchRecords(Ljava/util/List;)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7b} :catch_7c

    .line 465
    .end local v0    # "versionGetter":Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;
    .end local v1    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_7b
    goto :goto_80

    .line 463
    :catch_7c
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 466
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_80
    return-void
.end method

.method private sendBindMiuiSysUserMsg(J)V
    .registers 5
    .param p1, "delayedTime"    # J

    .line 649
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 650
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 651
    return-void
.end method

.method private sendRebindServiceMsg(J)V
    .registers 5
    .param p1, "delayedTime"    # J

    .line 567
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    .line 568
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 569
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 570
    return-void
.end method


# virtual methods
.method public abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    .registers 21
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 949
    iget-object v1, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 950
    .local v1, "perfService":Lcom/miui/daemon/performance/server/IMiuiPerfService;
    if-nez v1, :cond_6

    .line 951
    return-void

    .line 953
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_11

    .line 954
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 954
    .end local p4    # "uptimeMillis":J
    .local v2, "uptimeMillis":J
    goto :goto_13

    .line 956
    .end local v2    # "uptimeMillis":J
    .restart local p4    # "uptimeMillis":J
    :cond_11
    move-wide/from16 v2, p4

    .line 956
    .end local p4    # "uptimeMillis":J
    .restart local v2    # "uptimeMillis":J
    :goto_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 957
    .local v13, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v13, v4, :cond_22

    .line 958
    const-string/jumbo v4, "system_server"

    .line 959
    :goto_20
    move-object v11, v4

    goto :goto_27

    :cond_22
    invoke-static {v13}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_20

    .line 960
    .local v11, "processName":Ljava/lang/String;
    :goto_27
    invoke-static {v13}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v14

    .line 961
    .local v14, "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide v7, v2

    move v9, v13

    move/from16 v10, p3

    move-object v12, v14

    invoke-interface/range {v4 .. v12}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method public abortSpecificScenario(Landroid/os/Bundle;IJ)V
    .registers 16
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "tid"    # I
    .param p3, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 968
    .local v0, "perfService":Lcom/miui/daemon/performance/server/IMiuiPerfService;
    if-nez v0, :cond_5

    .line 969
    return-void

    .line 971
    :cond_5
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_f

    .line 972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 974
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 975
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v9, v1, :cond_1e

    .line 976
    const-string/jumbo v1, "system_server"

    .line 977
    :goto_1c
    move-object v7, v1

    goto :goto_23

    :cond_1e
    invoke-static {v9}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    .line 978
    .local v7, "processName":Ljava/lang/String;
    :goto_23
    invoke-static {v9}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v10

    .line 979
    .local v10, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object v2, p1

    move-wide v3, p3

    move v5, v9

    move v6, p2

    move-object v8, v10

    invoke-interface/range {v1 .. v8}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->abortSpecificScenario(Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "fromHome"    # Z
    .param p8, "isColdStart"    # Z

    move-object v0, p0

    move/from16 v1, p7

    .line 427
    if-nez p1, :cond_6

    .line 428
    return-void

    .line 430
    :cond_6
    new-instance v10, Lcom/android/internal/app/LaunchTimeRecord;

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 431
    .local v2, "record":Lcom/android/internal/app/LaunchTimeRecord;
    invoke-virtual {v2, v1}, Lcom/android/internal/app/LaunchTimeRecord;->setType(I)V

    .line 432
    iget-object v3, v0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v3, v0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LaunchTimeRecord;

    invoke-virtual {v3}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v3

    .line 434
    .local v3, "batchStartTime":J
    iget-object v5, v0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    iget-object v6, v0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LaunchTimeRecord;

    invoke-virtual {v5}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v5

    .line 435
    .local v5, "batchEndTime":J
    if-nez v1, :cond_55

    iget-object v7, v0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    .line 436
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_55

    cmp-long v7, v5, v3

    if-ltz v7, :cond_55

    sub-long v7, v5, v3

    const-wide/32 v10, 0xea60

    cmp-long v7, v7, v10

    if-ltz v7, :cond_5d

    .line 439
    :cond_55
    invoke-direct {v0}, Lcom/miui/server/PerfShielderService;->reportActivityLaunchRecords()V

    .line 440
    iget-object v7, v0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 442
    :cond_5d
    return-void
.end method

.method public addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .param p3, "hookCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 909
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 910
    const-string v0, "CallingPkgHook"

    const-string v1, "Check permission failed when addCallingPkgHookRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    return v0

    .line 914
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/CallingPkgHook;->getInstance()Lcom/miui/hybrid/hook/CallingPkgHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/hybrid/hook/CallingPkgHook;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .registers 3
    .param p1, "actions"    # [Ljava/lang/String;

    .line 739
    const-string v0, "addTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 740
    if-eqz p1, :cond_f

    array-length v0, p1

    if-nez v0, :cond_b

    goto :goto_f

    .line 743
    :cond_b
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addTimeConsumingIntent([Ljava/lang/String;)V

    .line 744
    return-void

    .line 741
    :cond_f
    :goto_f
    return-void
.end method

.method public beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;
    .registers 27
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "settings"    # Landroid/os/statistics/E2EScenarioSettings;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p5, "tid"    # I
    .param p6, "uptimeMillis"    # J
    .param p8, "needResultBundle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 931
    iget-object v1, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 932
    .local v1, "perfService":Lcom/miui/daemon/performance/server/IMiuiPerfService;
    if-nez v1, :cond_8

    .line 933
    const/4 v2, 0x0

    return-object v2

    .line 935
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_13

    .line 936
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 936
    .end local p6    # "uptimeMillis":J
    .local v2, "uptimeMillis":J
    goto :goto_15

    .line 938
    .end local v2    # "uptimeMillis":J
    .restart local p6    # "uptimeMillis":J
    :cond_13
    move-wide/from16 v2, p6

    .line 938
    .end local p6    # "uptimeMillis":J
    .restart local v2    # "uptimeMillis":J
    :goto_15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 939
    .local v15, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v15, v4, :cond_24

    .line 940
    const-string/jumbo v4, "system_server"

    .line 941
    :goto_22
    move-object v13, v4

    goto :goto_29

    :cond_24
    invoke-static {v15}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_22

    .line 942
    .local v13, "processName":Ljava/lang/String;
    :goto_29
    invoke-static {v15}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v16

    .line 943
    .local v16, "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide v9, v2

    move v11, v15

    move/from16 v12, p5

    move-object/from16 v14, v16

    move/from16 v17, v15

    move/from16 v15, p8

    .end local v15    # "pid":I
    .local v17, "pid":I
    invoke-interface/range {v4 .. v15}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    return-object v4
.end method

.method public clearTimeConsumingIntent()V
    .registers 2

    .line 757
    const-string v0, "clearTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearTimeConsumingIntent()V

    .line 759
    return-void
.end method

.method public closeCheckPriority()V
    .registers 2

    .line 713
    const-string v0, "closeCheckPriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 714
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 715
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->closeCheckPriority()V

    .line 716
    return-void
.end method

.method public deleteFilterInfo(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1047
    const-string v0, "CallingPkgHook"

    const-string v1, "Check permission failed when deleteFilterInfo."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const/4 v0, 0x0

    return v0

    .line 1051
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/FilterInfoInjector;->getInstance()Lcom/miui/hybrid/hook/FilterInfoInjector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/hook/FilterInfoInjector;->deleteFilterInfo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 788
    const-string v0, "PkgInfoHook"

    const-string v2, "Check permission failed when delete PackageInfo."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return v1

    .line 791
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->delete(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    nop

    :cond_1d
    return v1
.end method

.method public deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 809
    const-string v0, "IntentHook"

    const-string v2, "Check permission failed when delete RedirectRule."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v1

    .line 813
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/hybrid/hook/IntentHook;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    nop

    :cond_1d
    return v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_39

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump perfshielder from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " due to missing android.permission.DUMP permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "errMsg":Ljava/lang/String;
    const-string v1, "PerfShielderService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    .end local v0    # "errMsg":Ljava/lang/String;
    return-void

    .line 551
    :cond_39
    const-string v0, "---- ION Memory Usage ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    const-string v0, "/d/ion/heaps/system"

    invoke-direct {p0, p2, v0}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 553
    const-string v0, "/d/ion/ion_mm_heap"

    invoke-direct {p0, p2, v0}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 554
    const-string v0, "---- End of ION Memory Usage ----\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    const-string v0, "---- minfree & adj ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string/jumbo v0, "minfree: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    const-string v0, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-direct {p0, p2, v0}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 559
    const-string v0, "    adj: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    const-string v0, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-direct {p0, p2, v0}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 561
    const-string v0, "---- End of minfree & adj ----\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 23
    .param p1, "scenario"    # Landroid/os/statistics/E2EScenario;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p4, "tid"    # I
    .param p5, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 985
    iget-object v1, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 986
    .local v1, "perfService":Lcom/miui/daemon/performance/server/IMiuiPerfService;
    if-nez v1, :cond_7

    .line 987
    return-void

    .line 989
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-nez v2, :cond_12

    .line 990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 990
    .end local p5    # "uptimeMillis":J
    .local v2, "uptimeMillis":J
    goto :goto_14

    .line 992
    .end local v2    # "uptimeMillis":J
    .restart local p5    # "uptimeMillis":J
    :cond_12
    move-wide/from16 v2, p5

    .line 992
    .end local p5    # "uptimeMillis":J
    .restart local v2    # "uptimeMillis":J
    :goto_14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 993
    .local v14, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v14, v4, :cond_23

    .line 994
    const-string/jumbo v4, "system_server"

    .line 995
    :goto_21
    move-object v12, v4

    goto :goto_28

    :cond_23
    invoke-static {v14}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    .line 996
    .local v12, "processName":Ljava/lang/String;
    :goto_28
    invoke-static {v14}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v15

    .line 997
    .local v15, "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide v8, v2

    move v10, v14

    move/from16 v11, p4

    move-object v13, v15

    invoke-interface/range {v4 .. v13}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    .line 998
    return-void
.end method

.method public finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 21
    .param p1, "scenarioBundle"    # Landroid/os/Bundle;
    .param p2, "payload"    # Landroid/os/statistics/E2EScenarioPayload;
    .param p3, "tid"    # I
    .param p4, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 1003
    iget-object v1, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 1004
    .local v1, "perfService":Lcom/miui/daemon/performance/server/IMiuiPerfService;
    if-nez v1, :cond_6

    .line 1005
    return-void

    .line 1007
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_11

    .line 1008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1008
    .end local p4    # "uptimeMillis":J
    .local v2, "uptimeMillis":J
    goto :goto_13

    .line 1010
    .end local v2    # "uptimeMillis":J
    .restart local p4    # "uptimeMillis":J
    :cond_11
    move-wide/from16 v2, p4

    .line 1010
    .end local p4    # "uptimeMillis":J
    .restart local v2    # "uptimeMillis":J
    :goto_13
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1011
    .local v13, "pid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v13, v4, :cond_22

    .line 1012
    const-string/jumbo v4, "system_server"

    .line 1013
    :goto_20
    move-object v11, v4

    goto :goto_27

    :cond_22
    invoke-static {v13}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_20

    .line 1014
    .local v11, "processName":Ljava/lang/String;
    :goto_27
    invoke-static {v13}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v14

    .line 1015
    .local v14, "packageName":Ljava/lang/String;
    iget-object v4, v0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide v7, v2

    move v9, v13

    move/from16 v10, p3

    move-object v12, v14

    invoke-interface/range {v4 .. v12}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public getAllRunningProcessMemInfos()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getRunningProcessInfos()Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v0, :cond_c

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 258
    :cond_c
    new-instance v1, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 259
    .local v1, "swapgetter":Lcom/miui/server/PerfShielderService$PidSwapGetter;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 260
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 261
    .local v4, "pid":I
    invoke-direct {p0, v4}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v5

    .line 262
    .local v5, "pidStatus":[J
    const-string/jumbo v6, "swap"

    const/4 v7, 0x0

    aget-wide v7, v5, v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 263
    const/4 v6, 0x1

    aget-wide v6, v5, v6

    long-to-int v6, v6

    .line 264
    .local v6, "ppid":I
    const-string/jumbo v7, "ppid"

    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string/jumbo v7, "pswap"

    invoke-virtual {v1, v6}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    const-string/jumbo v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v5, v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 267
    const-string/jumbo v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 268
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "pid":I
    .end local v5    # "pidStatus":[J
    .end local v6    # "ppid":I
    goto :goto_16

    .line 269
    :cond_5e
    return-object v0
.end method

.method public getFreeMemory()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemoryTrimLevel()I
    .registers 2

    .line 250
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getMemoryTrimLevel()I

    move-result v0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 3
    .param p1, "pid"    # I

    .line 678
    const-string v0, "getPackageNameByPid"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 679
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 828
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 829
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 830
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 831
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 832
    :cond_25
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 834
    :cond_2a
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->obtainPerfEventSocketFd()V

    .line 837
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 838
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_82

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_49

    goto :goto_82

    .line 844
    :cond_49
    :try_start_49
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_4f

    move-object v1, v2

    .line 845
    .local v1, "result":Landroid/os/ParcelFileDescriptor;
    return-object v1

    .line 846
    .end local v1    # "result":Landroid/os/ParcelFileDescriptor;
    :catch_4f
    move-exception v2

    .line 851
    :try_start_50
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 853
    goto :goto_55

    .line 852
    :catch_54
    move-exception v2

    .line 854
    :goto_55
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 855
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->obtainPerfEventSocketFd()V

    .line 859
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 860
    if-eqz v0, :cond_81

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_81

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_79

    goto :goto_81

    .line 864
    :cond_79
    :try_start_79
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7f

    move-object v1, v2

    .line 865
    .restart local v1    # "result":Landroid/os/ParcelFileDescriptor;
    return-object v1

    .line 866
    .end local v1    # "result":Landroid/os/ParcelFileDescriptor;
    :catch_7f
    move-exception v2

    .line 867
    .local v2, "ex":Ljava/io/IOException;
    return-object v1

    .line 861
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_81
    :goto_81
    return-object v1

    .line 839
    :cond_82
    :goto_82
    return-object v1
.end method

.method public insertFilterInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defaultLabel"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1035
    .local p4, "filterInfos":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1036
    const-string v0, "CallingPkgHook"

    const-string v1, "Check permission failed when insertFilterInfo."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x0

    return v0

    .line 1040
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/FilterInfoInjector;->getInstance()Lcom/miui/hybrid/hook/FilterInfoInjector;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/hybrid/hook/FilterInfoInjector;->insertFilterInfo(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 779
    const-string v0, "PkgInfoHook"

    const-string v1, "Check permission failed when insert PackageInfo."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    return v0

    .line 782
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->insert(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method public insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkgname"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 798
    const-string v0, "IntentHook"

    const-string v1, "Check permission failed when insert RedirectRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v0, 0x0

    return v0

    .line 802
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/hybrid/hook/IntentHook;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public killUnusedApp(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 672
    const-string/jumbo v0, "killUnusedApp"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 673
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->killUnusedApp(II)V

    .line 674
    return-void
.end method

.method public markPerceptibleJank(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v0, :cond_9

    .line 419
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v0, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->markPerceptibleJank(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 423
    :cond_9
    goto :goto_e

    .line 421
    :catch_a
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 424
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "hostApp"    # Ljava/lang/String;
    .param p2, "originCallingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 921
    const-string v0, "CallingPkgHook"

    const-string v1, "Check permission failed when removeCallingPkgHookRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v0, 0x0

    return v0

    .line 925
    :cond_11
    invoke-static {}, Lcom/miui/hybrid/hook/CallingPkgHook;->getInstance()Lcom/miui/hybrid/hook/CallingPkgHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/hybrid/hook/CallingPkgHook;->remove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 4
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z

    .line 704
    const-string/jumbo v0, "removeServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 705
    if-eqz p1, :cond_11

    iget-object v0, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_11

    .line 708
    :cond_d
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    .line 709
    return-void

    .line 706
    :cond_11
    :goto_11
    return-void
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .registers 3
    .param p1, "actions"    # [Ljava/lang/String;

    .line 748
    const-string/jumbo v0, "removeTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 749
    if-eqz p1, :cond_10

    array-length v0, p1

    if-nez v0, :cond_c

    goto :goto_10

    .line 752
    :cond_c
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeTimeConsumingIntent([Ljava/lang/String;)V

    .line 753
    return-void

    .line 750
    :cond_10
    :goto_10
    return-void
.end method

.method public reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    .registers 22
    .param p1, "callingPid"    # I
    .param p2, "windowName"    # Ljava/lang/String;
    .param p3, "totalDuration"    # J
    .param p5, "endTs"    # J
    .param p7, "cpuInfo"    # Ljava/lang/String;

    .line 376
    const/4 v2, -0x1

    const/4 v10, 0x7

    const-wide/16 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/miui/server/PerfShielderService;->reportPerceptibleJank(IILjava/lang/String;JJJIJLjava/lang/String;)V

    .line 378
    return-void
.end method

.method public reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 471
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v0, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 475
    :cond_f
    goto :goto_14

    .line 473
    :catch_10
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 476
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_14
    return-void
.end method

.method public reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V
    .registers 8
    .param p1, "postPackage"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uptimeMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    .line 1022
    .local v0, "perfService":Lcom/miui/daemon/performance/server/IMiuiPerfService;
    if-nez v0, :cond_5

    .line 1023
    return-void

    .line 1025
    :cond_5
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_f

    .line 1026
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 1029
    :cond_f
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportNotificationClick(Ljava/lang/String;Landroid/content/Intent;J)V

    .line 1030
    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJIJ)V
    .registers 27
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "appCause"    # I
    .param p11, "numFrames"    # J

    .line 370
    const-string v13, ""

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-wide/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Lcom/miui/server/PerfShielderService;->reportPerceptibleJank(IILjava/lang/String;JJJIJLjava/lang/String;)V

    .line 372
    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJIJLjava/lang/String;)V
    .registers 34
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "appCause"    # I
    .param p11, "numFrames"    # J
    .param p13, "cpuInfo"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move/from16 v8, p10

    move-wide/from16 v9, p11

    .line 382
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v11

    .line 384
    .local v11, "callingPkg":Ljava/lang/String;
    if-nez v11, :cond_15

    .line 385
    return-void

    .line 389
    :cond_15
    if-eqz v1, :cond_60

    sget-object v12, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_60

    sget-object v12, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_REX:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_60

    .line 390
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x3

    if-lt v13, v14, :cond_3d

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_3e

    :cond_3d
    move-object v13, v1

    :goto_3e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 391
    .local v12, "windowIdentityCode":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .end local v12    # "windowIdentityCode":Ljava/lang/String;
    .end local p3    # "windowName":Ljava/lang/String;
    .local v1, "windowName":Ljava/lang/String;
    :cond_60
    new-instance v12, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v13, 0x0

    invoke-direct {v12, v0, v13}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    invoke-virtual {v12, v11}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, "packageVersion":Ljava/lang/String;
    if-ltz v8, :cond_76

    sget-object v13, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    array-length v13, v13

    if-ge v8, v13, :cond_76

    sget-object v13, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    aget-object v13, v13, v8

    goto :goto_78

    :cond_76
    const-string v13, "Unknown"

    .line 397
    .local v13, "strAppCause":Ljava/lang/String;
    :goto_78
    const-string v14, "PerfShielderService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v16, 0xf4240

    move-object/from16 v18, v1

    div-long v0, v2, v16

    .end local v1    # "windowName":Ljava/lang/String;
    .local v18, "windowName":Ljava/lang/String;
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v4, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 402
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    move/from16 v14, p1

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const-string/jumbo v1, "tid"

    move/from16 v15, p2

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v1, "pkgVersion"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "window"

    move-object/from16 v8, v18

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .end local v18    # "windowName":Ljava/lang/String;
    .local v8, "windowName":Ljava/lang/String;
    const-string/jumbo v1, "totalDuration"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 408
    const-string/jumbo v1, "maxFrameDuration"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 409
    const-string v1, "endTs"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 410
    const-string v1, "appCause"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "cpuInfo"

    move-object/from16 v2, p13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v1, "numFrames"

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 413
    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/miui/server/PerfShielderService;->markPerceptibleJank(Landroid/os/Bundle;)V

    .line 414
    return-void
.end method

.method public resolveQuickAppInfos(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/QuickAppResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1056
    invoke-static {}, Lcom/miui/hybrid/hook/FilterInfoInjector;->getInstance()Lcom/miui/hybrid/hook/FilterInfoInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/miui/hybrid/hook/FilterInfoInjector;->resolveAppInfos(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 13
    .param p1, "puid"    # I
    .param p2, "ppid"    # I
    .param p3, "group"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .line 213
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v0

    .line 216
    .local v0, "threadPolicyMask":I
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_9

    .line 217
    return-void

    .line 219
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->convertUidPidToPath(II)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 222
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_f
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 223
    nop

    .line 224
    .local v2, "line":Ljava/lang/String;
    :goto_20
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v4, :cond_6a

    .line 225
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 226
    .local v4, "subPid":I
    if-ne v4, p2, :cond_2e

    .line 227
    goto :goto_20

    .line 229
    :cond_2e
    if-eqz p4, :cond_37

    invoke-direct {p0, v4, p4}, Lcom/miui/server/PerfShielderService;->needToLimit(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 230
    goto :goto_20

    .line 232
    :cond_37
    invoke-static {v4, p3}, Landroid/os/Process;->setProcessGroup(II)V

    .line 233
    const-string v5, "PerfShielderService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sFPG ppid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " grp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " forked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_69} :catch_77
    .catchall {:try_start_f .. :try_end_69} :catchall_75

    .line 235
    .end local v4    # "subPid":I
    goto :goto_20

    .line 240
    .end local v2    # "line":Ljava/lang/String;
    :cond_6a
    nop

    .line 241
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_74

    .line 243
    :catch_6f
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_81

    .line 245
    :cond_74
    :goto_74
    goto :goto_81

    .line 239
    :catchall_75
    move-exception v2

    goto :goto_82

    .line 236
    :catch_77
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    :try_start_78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    .line 240
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_74

    .line 241
    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_6f

    goto :goto_74

    .line 247
    :goto_81
    return-void

    .line 239
    :goto_82
    nop

    .line 240
    if-eqz v3, :cond_8e

    .line 241
    :try_start_85
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_8e

    .line 243
    :catch_89
    move-exception v4

    .line 244
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 244
    .end local v4    # "e":Ljava/io/IOException;
    nop

    .line 245
    :cond_8e
    :goto_8e
    throw v2
.end method

.method public setHapLinks(Ljava/util/Map;Landroid/content/pm/ActivityInfo;)V
    .registers 5
    .param p1, "data"    # Ljava/util/Map;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1061
    const-string v0, "CallingPkgHook"

    const-string v1, "Check permission failed when setHapLinks."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return-void

    .line 1065
    :cond_10
    invoke-static {p1, p2}, Lcom/miui/hybrid/hook/HapLinksInjector;->setData(Ljava/util/Map;Landroid/content/pm/ActivityInfo;)V

    .line 1066
    return-void
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 733
    const-string/jumbo v0, "setMiuiBroadcastDispatchEnable"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 734
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setMiuiBroadcastDispatchEnable(Z)V

    .line 735
    return-void
.end method

.method public setMiuiContentProviderControl(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 720
    const-string/jumbo v0, "setMiuiContentProviderControl"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/android/server/am/MiuiContentProviderControl;->getInstance()Lcom/android/server/am/MiuiContentProviderControl;

    move-result-object v0

    .line 722
    .local v0, "mcpc":Lcom/android/server/am/MiuiContentProviderControl;
    if-eqz v0, :cond_15

    .line 723
    if-eqz p1, :cond_12

    .line 724
    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->openProviderControl()V

    goto :goto_15

    .line 726
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->closeProviderControl()V

    .line 729
    :cond_15
    :goto_15
    return-void
.end method

.method public setSchedFgPid(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 497
    if-gtz p1, :cond_3

    .line 498
    return-void

    .line 502
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v0, :cond_c

    .line 503
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v0, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->setSchedFgPid(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    .line 507
    :cond_c
    goto :goto_11

    .line 505
    :catch_d
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 508
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public setServicePriority(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .line 684
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    const-string/jumbo v0, "setServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 685
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 688
    :cond_f
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 689
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;)V

    .line 690
    return-void

    .line 686
    :cond_17
    :goto_17
    return-void
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
    .registers 5
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .line 694
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    const-string/jumbo v0, "setServicePriorityWithNoProc"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 695
    if-eqz p1, :cond_17

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 698
    :cond_f
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 699
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;J)V

    .line 700
    return-void

    .line 696
    :cond_17
    :goto_17
    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    new-instance v1, Lcom/miui/server/PerfShielderService$1;

    invoke-direct {v1, p0}, Lcom/miui/server/PerfShielderService$1;-><init>(Lcom/miui/server/PerfShielderService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    const-wide/16 v0, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    .line 172
    return-void
.end method

.method public updateProcessFullMemInfoByPids([I)Ljava/util/List;
    .registers 13
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 273
    array-length v0, p1

    .line 274
    .local v0, "pidSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 275
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v2, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 276
    .local v2, "swapgetter":Lcom/miui/server/PerfShielderService$PidSwapGetter;
    const/4 v3, 0x0

    move v4, v3

    .line 276
    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_6e

    .line 277
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "pid"

    aget v7, p1, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    const-string/jumbo v6, "lastPssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    const-string/jumbo v6, "lastPss"

    aget v7, p1, v4

    invoke-direct {p0, v7}, Lcom/miui/server/PerfShielderService;->getProcessPss(I)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 281
    const-string/jumbo v6, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 282
    aget v6, p1, v4

    invoke-direct {p0, v6}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v6

    .line 283
    .local v6, "pidStatus":[J
    const-string/jumbo v7, "swap"

    aget-wide v8, v6, v3

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    const/4 v7, 0x1

    aget-wide v7, v6, v7

    long-to-int v7, v7

    .line 285
    .local v7, "ppid":I
    const-string/jumbo v8, "ppid"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string/jumbo v8, "pswap"

    invoke-virtual {v2, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    const-string/jumbo v8, "rss"

    const/4 v9, 0x2

    aget-wide v9, v6, v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 288
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "pidStatus":[J
    .end local v7    # "ppid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 290
    .end local v4    # "i":I
    :cond_6e
    return-object v1
.end method

.method public updateProcessPartialMemInfoByPids([I)Ljava/util/List;
    .registers 13
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 294
    array-length v0, p1

    .line 295
    .local v0, "pidSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    new-instance v2, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    .line 297
    .local v2, "swapgetter":Lcom/miui/server/PerfShielderService$PidSwapGetter;
    const/4 v3, 0x0

    move v4, v3

    .line 297
    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_58

    .line 298
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "pid"

    aget v7, p1, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string/jumbo v6, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 301
    aget v6, p1, v4

    invoke-direct {p0, v6}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v6

    .line 302
    .local v6, "pidStatus":[J
    const-string/jumbo v7, "swap"

    aget-wide v8, v6, v3

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 303
    const/4 v7, 0x1

    aget-wide v7, v6, v7

    long-to-int v7, v7

    .line 304
    .local v7, "ppid":I
    const-string/jumbo v8, "ppid"

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string/jumbo v8, "pswap"

    invoke-virtual {v2, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 306
    const-string/jumbo v8, "rss"

    const/4 v9, 0x2

    aget-wide v9, v6, v9

    invoke-virtual {v5, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 307
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "pidStatus":[J
    .end local v7    # "ppid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 309
    .end local v4    # "i":I
    :cond_58
    return-object v1
.end method
