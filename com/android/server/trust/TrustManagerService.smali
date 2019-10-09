.class public Lcom/android/server/trust/TrustManagerService;
.super Lcom/android/server/SystemService;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;,
        Lcom/android/server/trust/TrustManagerService$Receiver;,
        Lcom/android/server/trust/TrustManagerService$SettingsAttrs;,
        Lcom/android/server/trust/TrustManagerService$AgentInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final MSG_CLEANUP_USER:I = 0x8

.field private static final MSG_DISPATCH_UNLOCK_ATTEMPT:I = 0x3

.field private static final MSG_DISPATCH_UNLOCK_LOCKOUT:I = 0xd

.field private static final MSG_ENABLED_AGENTS_CHANGED:I = 0x4

.field private static final MSG_FLUSH_TRUST_USUALLY_MANAGED:I = 0xa

.field private static final MSG_KEYGUARD_SHOWING_CHANGED:I = 0x6

.field private static final MSG_REFRESH_DEVICE_LOCKED_FOR_USER:I = 0xe

.field private static final MSG_REGISTER_LISTENER:I = 0x1

.field private static final MSG_START_USER:I = 0x7

.field private static final MSG_STOP_USER:I = 0xc

.field private static final MSG_SWITCH_USER:I = 0x9

.field private static final MSG_UNLOCK_USER:I = 0xb

.field private static final MSG_UNREGISTER_LISTENER:I = 0x2

.field private static final PERMISSION_PROVIDE_AGENT:Ljava/lang/String; = "android.permission.PROVIDE_TRUST_AGENT"

.field private static final TAG:Ljava/lang/String; = "TrustManagerService"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final TRUST_USUALLY_MANAGED_FLUSH_DELAY:I = 0x1d4c0


# instance fields
.field private final mActiveAgents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/trust/TrustManagerService$AgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/ActivityManager;

.field final mArchive:Lcom/android/server/trust/TrustArchive;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDeviceLockedForUser"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

.field private final mService:Landroid/os/IBinder;

.field private final mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

.field private mTrustAgentsCanRun:Z

.field private final mTrustListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTrustUsuallyManagedForUser"
    .end annotation
.end field

.field private final mUserIsTrusted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserIsTrusted"
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersUnlockedByFingerprint"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 91
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const-string v0, "TrustManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 113
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/android/server/trust/TrustManagerService$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;-><init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    .line 117
    new-instance v0, Lcom/android/server/trust/TrustArchive;

    invoke-direct {v0}, Lcom/android/server/trust/TrustArchive;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    .line 123
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    .line 126
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 129
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 133
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 139
    iput v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 823
    new-instance v0, Lcom/android/server/trust/TrustManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$1;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    .line 1079
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$2;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 1136
    new-instance v0, Lcom/android/server/trust/TrustManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/trust/TrustManagerService$3;-><init>(Lcom/android/server/trust/TrustManagerService;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 143
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 145
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 146
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 147
    new-instance v0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;-><init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 148
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/trust/TrustManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Landroid/app/trust/ITrustListener;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->addListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Landroid/app/trust/ITrustListener;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeListener(Landroid/app/trust/ITrustListener;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/trust/TrustManagerService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockAttempt(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/trust/TrustManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/trust/TrustManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchUnlockLockout(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/trust/TrustManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/trust/TrustManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/trust/TrustManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->removeAgentsOfPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/trust/TrustManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/trust/TrustManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/trust/TrustManagerService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/trust/TrustManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;

    .line 89
    iget v0, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/trust/TrustManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p1, "x1"    # I

    .line 89
    iput p1, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    return p1
.end method

.method private addListener(Landroid/app/trust/ITrustListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 724
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    .line 725
    return-void

    .line 723
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 730
    return-void
.end method

.method private aggregateIsTrustManaged(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 684
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 685
    return v1

    .line 687
    :cond_a
    move v0, v1

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 688
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 689
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    .line 690
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 691
    const/4 v1, 0x1

    return v1

    .line 687
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 695
    .end local v0    # "i":I
    :cond_2c
    return v1
.end method

.method private aggregateIsTrusted(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 669
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 670
    return v1

    .line 672
    :cond_a
    move v0, v1

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 673
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 674
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v3, p1, :cond_29

    .line 675
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isTrusted()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 676
    const/4 v1, 0x1

    return v1

    .line 672
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 680
    .end local v0    # "i":I
    :cond_2c
    return v1
.end method

.method private dispatchDeviceLocked(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "isLocked"    # Z

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 473
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 474
    .local v1, "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p1, :cond_22

    .line 475
    if-eqz p2, :cond_1d

    .line 476
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_22

    .line 478
    :cond_1d
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    .line 472
    .end local v1    # "agent":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 482
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private dispatchOnTrustChanged(ZII)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 742
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 743
    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 743
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_34
    if-nez p1, :cond_37

    const/4 p3, 0x0

    .line 747
    :cond_37
    const/4 v0, 0x0

    .line 747
    .local v0, "i":I
    :goto_38
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 749
    :try_start_40
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/trust/ITrustListener;->onTrustChanged(ZII)V
    :try_end_4b
    .catch Landroid/os/DeadObjectException; {:try_start_40 .. :try_end_4b} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4b} :catch_4c

    goto :goto_64

    .line 754
    :catch_4c
    move-exception v1

    .line 755
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_65

    .line 750
    :catch_55
    move-exception v1

    .line 751
    .local v1, "e":Landroid/os/DeadObjectException;
    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 753
    add-int/lit8 v0, v0, -0x1

    .line 756
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :goto_64
    nop

    .line 747
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 758
    .end local v0    # "i":I
    :cond_68
    return-void
.end method

.method private dispatchOnTrustError(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 778
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 779
    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_20
    const/4 v0, 0x0

    .line 781
    .local v0, "i":I
    :goto_21
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_51

    .line 783
    :try_start_29
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustListener;->onTrustError(Ljava/lang/CharSequence;)V
    :try_end_34
    .catch Landroid/os/DeadObjectException; {:try_start_29 .. :try_end_34} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_4d

    .line 788
    :catch_35
    move-exception v1

    .line 789
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_4e

    .line 784
    :catch_3e
    move-exception v1

    .line 785
    .local v1, "e":Landroid/os/DeadObjectException;
    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 787
    add-int/lit8 v0, v0, -0x1

    .line 790
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :goto_4d
    nop

    .line 781
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 792
    .end local v0    # "i":I
    :cond_51
    return-void
.end method

.method private dispatchOnTrustManagedChanged(ZI)V
    .registers 7
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 761
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 762
    const-string v0, "TrustManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_28
    const/4 v0, 0x0

    .line 764
    .local v0, "i":I
    :goto_29
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 766
    :try_start_31
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/ITrustListener;->onTrustManagedChanged(ZI)V
    :try_end_3c
    .catch Landroid/os/DeadObjectException; {:try_start_31 .. :try_end_3c} :catch_46
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_3d

    goto :goto_55

    .line 771
    :catch_3d
    move-exception v1

    .line 772
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TrustManagerService"

    const-string v3, "Exception while notifying TrustListener."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 772
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_56

    .line 767
    :catch_46
    move-exception v1

    .line 768
    .local v1, "e":Landroid/os/DeadObjectException;
    const-string v2, "TrustManagerService"

    const-string v3, "Removing dead TrustListener."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 770
    add-int/lit8 v0, v0, -0x1

    .line 773
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :goto_55
    nop

    .line 764
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 775
    .end local v0    # "i":I
    :cond_59
    return-void
.end method

.method private dispatchUnlockAttempt(ZI)V
    .registers 6
    .param p1, "successful"    # Z
    .param p2, "userId"    # I

    .line 699
    if-eqz p1, :cond_7

    .line 700
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->allowTrustFromUnlock(I)V

    .line 703
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 704
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 705
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_21

    .line 706
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 703
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 709
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private dispatchUnlockLockout(II)V
    .registers 6
    .param p1, "timeoutMs"    # I
    .param p2, "userId"    # I

    .line 712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 713
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 714
    .local v1, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v2, p2, :cond_1a

    .line 715
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockLockout(I)V

    .line 712
    .end local v1    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 718
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .registers 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 591
    if-eqz p1, :cond_15

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_7

    goto :goto_15

    .line 592
    :cond_7
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 591
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 637
    const v1, 0x1040142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "defaultTrustAgent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 639
    const/4 v1, 0x0

    return-object v1

    .line 641
    :cond_13
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;
    .registers 15
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 536
    const/4 v0, 0x0

    if-eqz p2, :cond_da

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_da

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_f

    goto/16 :goto_da

    .line 538
    :cond_f
    const/4 v1, 0x0

    .line 539
    .local v1, "cn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 541
    .local v2, "canUnlockProfile":Z
    const/4 v3, 0x0

    .line 542
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    move-object v4, v0

    .line 544
    .local v4, "caughtException":Ljava/lang/Exception;
    :try_start_13
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v6, "android.service.trust.trustagent"

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v3, v5

    .line 546
    if-nez v3, :cond_2c

    .line 547
    const-string v5, "TrustManagerService"

    const-string v6, "Can\'t find android.service.trust.trustagent meta-data"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_25} :catch_8b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_25} :catch_81
    .catchall {:try_start_13 .. :try_end_25} :catchall_7a

    .line 548
    nop

    .line 575
    if-eqz v3, :cond_2b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 548
    :cond_2b
    return-object v0

    .line 550
    :cond_2c
    :try_start_2c
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 551
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 553
    .local v6, "attrs":Landroid/util/AttributeSet;
    :goto_38
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v8, v7

    .line 553
    .local v8, "type":I
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v7, v9, :cond_44

    if-eq v8, v10, :cond_44

    .line 553
    .end local v8    # "type":I
    goto :goto_38

    .line 557
    .restart local v8    # "type":I
    :cond_44
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "trust-agent"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    .line 559
    const-string v9, "TrustManagerService"

    const-string v10, "Meta-data does not start with trust-agent tag"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_58} :catch_8b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_58} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_58} :catch_81
    .catchall {:try_start_2c .. :try_end_58} :catchall_7a

    .line 560
    nop

    .line 575
    if-eqz v3, :cond_5e

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 560
    :cond_5e
    return-object v0

    .line 562
    :cond_5f
    :try_start_5f
    sget-object v9, Lcom/android/internal/R$styleable;->TrustAgent:[I

    .line 563
    invoke-virtual {v5, v6, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 564
    .local v9, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 565
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move v2, v10

    .line 567
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_74
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_74} :catch_8b
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_74} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_74} :catch_81
    .catchall {:try_start_5f .. :try_end_74} :catchall_7a

    .line 575
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "type":I
    .end local v9    # "sa":Landroid/content/res/TypedArray;
    if-eqz v3, :cond_90

    :goto_76
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_90

    :catchall_7a
    move-exception v0

    if-eqz v3, :cond_80

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_80
    throw v0

    .line 572
    :catch_81
    move-exception v5

    .line 573
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v4, v5

    .line 575
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_90

    goto :goto_76

    .line 570
    :catch_86
    move-exception v5

    .line 571
    .local v5, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 575
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_90

    goto :goto_76

    .line 568
    :catch_8b
    move-exception v5

    .line 569
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v4, v5

    .line 575
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v3, :cond_90

    goto :goto_76

    .line 577
    :cond_90
    :goto_90
    if-eqz v4, :cond_ad

    .line 578
    const-string v5, "TrustManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    return-object v0

    .line 581
    :cond_ad
    if-nez v1, :cond_b0

    .line 582
    return-object v0

    .line 584
    :cond_b0
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_d0

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    :cond_d0
    new-instance v0, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;-><init>(Landroid/content/ComponentName;Z)V

    return-object v0

    .line 537
    .end local v1    # "cn":Ljava/lang/String;
    .end local v2    # "canUnlockProfile":Z
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v4    # "caughtException":Ljava/lang/Exception;
    :cond_da
    :goto_da
    return-object v0
.end method

.method private isTrustUsuallyManagedInternal(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1045
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 1046
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    .line 1047
    .local v1, "i":I
    if-ltz v1, :cond_13

    .line 1048
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1050
    .end local v1    # "i":I
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 1052
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v1

    .line 1053
    .local v1, "persistedValue":Z
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 1054
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    .line 1055
    .local v0, "i":I
    if-ltz v0, :cond_2d

    .line 1057
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    monitor-exit v2

    return v3

    .line 1060
    :cond_2d
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1061
    monitor-exit v2

    return v1

    .line 1063
    .end local v0    # "i":I
    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_34

    throw v0

    .line 1050
    .end local v1    # "persistedValue":Z
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 16
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "userId"    # I

    .line 596
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "trust_agents_initialized"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_11

    .line 598
    return-void

    .line 600
    :cond_11
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 601
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v0, p2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v1

    .line 602
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->getDefaultFactoryTrustAgent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 603
    .local v3, "defaultAgent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    if-eqz v3, :cond_26

    move v2, v4

    nop

    .line 604
    .local v2, "shouldUseDefaultAgent":Z
    :cond_26
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 606
    .local v5, "discoveredAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_4c

    .line 607
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 608
    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enabling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because it is a default agent."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 610
    :cond_4c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_50
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 611
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v7}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 612
    .local v8, "componentName":Landroid/content/ComponentName;
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 613
    .local v9, "applicationInfoFlags":I
    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_86

    .line 614
    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Leaving agent "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " disabled because package is not a system package."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    goto :goto_50

    .line 618
    :cond_86
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "applicationInfoFlags":I
    goto :goto_50

    .line 622
    :cond_8a
    :goto_8a
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v6

    .line 623
    .local v6, "previouslyEnabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_93

    .line 624
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 626
    :cond_93
    invoke-virtual {p1, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 627
    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "trust_agents_initialized"

    invoke-static {v7, v8, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 629
    return-void
.end method

.method private refreshDeviceLockedForUser(I)V
    .registers 15
    .param p1, "userId"    # I

    .line 416
    const/4 v0, -0x1

    if-eq p1, v0, :cond_29

    if-gez p1, :cond_29

    .line 417
    const-string v1, "TrustManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDeviceLockedForUser(userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 419
    const/4 p1, -0x1

    .line 422
    :cond_29
    const/4 v1, 0x1

    if-ne p1, v0, :cond_33

    .line 423
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_41

    .line 425
    .end local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .restart local v0    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    :goto_41
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 431
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    move v4, v3

    .line 431
    .local v4, "i":I
    :goto_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a3

    .line 432
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 434
    .local v5, "info":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_a0

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_a0

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_a0

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v6, :cond_a0

    .line 435
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 436
    goto :goto_a0

    .line 439
    :cond_6a
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 440
    .local v6, "id":I
    iget-object v7, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    .line 441
    .local v7, "secure":Z
    invoke-direct {p0, v6}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v8

    .line 442
    .local v8, "trusted":Z
    const/4 v9, 0x1

    .line 443
    .local v9, "showingKeyguard":Z
    const/4 v10, 0x0

    .line 445
    .local v10, "fingerprintAuthenticated":Z
    iget v11, p0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    if-ne v11, v6, :cond_92

    .line 446
    iget-object v11, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    monitor-enter v11

    .line 447
    :try_start_7f
    iget-object v12, p0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByFingerprint:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v6, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    move v10, v12

    .line 448
    monitor-exit v11
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_8f

    .line 450
    :try_start_87
    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v11
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8b} :catch_8d

    move v9, v11

    .line 452
    goto :goto_92

    .line 451
    :catch_8d
    move-exception v11

    goto :goto_92

    .line 448
    :catchall_8f
    move-exception v1

    :try_start_90
    monitor-exit v11
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v1

    .line 454
    :cond_92
    :goto_92
    if-eqz v7, :cond_9c

    if-eqz v9, :cond_9c

    if-nez v8, :cond_9c

    if-nez v10, :cond_9c

    move v11, v1

    goto :goto_9d

    :cond_9c
    move v11, v3

    .line 456
    .local v11, "deviceLocked":Z
    :goto_9d
    invoke-direct {p0, v6, v11}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    .line 431
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "id":I
    .end local v7    # "secure":Z
    .end local v8    # "trusted":Z
    .end local v9    # "showingKeyguard":Z
    .end local v10    # "fingerprintAuthenticated":Z
    .end local v11    # "deviceLocked":Z
    :cond_a0
    :goto_a0
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 458
    .end local v4    # "i":I
    :cond_a3
    return-void
.end method

.method private removeAgentsOfPackage(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "trustMayHaveChanged":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_51

    .line 501
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 502
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 503
    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 505
    const/4 v0, 0x1

    .line 507
    :cond_44
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 508
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 500
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 511
    .end local v1    # "i":I
    :cond_51
    if-eqz v0, :cond_56

    .line 512
    invoke-direct {p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 514
    :cond_56
    return-void
.end method

.method private removeListener(Landroid/app/trust/ITrustListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/app/trust/ITrustListener;

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 734
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/ITrustListener;

    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 735
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 736
    return-void

    .line 733
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 739
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method private resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .registers 12
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 645
    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const v1, 0xc0080

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 649
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 650
    .local v1, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 651
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v4, :cond_27

    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_16

    .line 652
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_27
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_2e

    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_16

    .line 653
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2e
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 654
    .local v4, "packageName":Ljava/lang/String;
    const-string v5, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {p1, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_64

    .line 656
    invoke-direct {p0, v3}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    .line 657
    .local v5, "name":Landroid/content/ComponentName;
    const-string v6, "TrustManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because package does not have permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "android.permission.PROVIDE_TRUST_AGENT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    goto :goto_16

    .line 661
    .end local v5    # "name":Landroid/content/ComponentName;
    :cond_64
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_16

    .line 663
    :cond_68
    return-object v1
.end method

.method private resolveProfileParent(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1069
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1070
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_18

    .line 1071
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1d

    .line 1075
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    return v3

    .line 1073
    :cond_18
    nop

    .line 1075
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1073
    return p1

    .line 1075
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setDeviceLockedForUser(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "locked"    # Z

    .line 462
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 463
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result v1

    if-eq v1, p2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 464
    .local v1, "changed":Z
    :goto_c
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 465
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    .line 466
    if-eqz v1, :cond_17

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchDeviceLocked(IZ)V

    .line 469
    :cond_17
    return-void

    .line 465
    .end local v1    # "changed":Z
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private updateTrustAll()V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 202
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 203
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_b

    .line 204
    :cond_1e
    return-void
.end method

.method private updateTrustUsuallyManaged(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "managed"    # Z

    .line 226
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 228
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    .line 231
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    .line 233
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    .line 232
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    return-void

    .line 228
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .registers 5
    .param p1, "token"    # [B
    .param p2, "userId"    # I

    .line 238
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method isDeviceLockedInner(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 410
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 412
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 246
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 157
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    return-void

    .line 161
    :cond_7
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2a

    .line 162
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 163
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mReceiver:Lcom/android/server/trust/TrustManagerService$Receiver;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$Receiver;->register(Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    goto :goto_42

    .line 165
    :cond_2a
    const/16 v0, 0x258

    if-ne p1, v0, :cond_38

    .line 166
    iput-boolean v1, p0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 167
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 168
    invoke-direct {p0, v0}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    goto :goto_42

    .line 169
    :cond_38
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_42

    .line 170
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 172
    :cond_42
    :goto_42
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 803
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 804
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 152
    const-string/jumbo v0, "trust"

    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/trust/TrustManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 153
    return-void
.end method

.method public onStartUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 798
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 799
    return-void
.end method

.method public onStopUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 818
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 819
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 808
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 809
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 813
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 814
    return-void
.end method

.method refreshAgentList(I)V
    .registers 27
    .param p1, "userIdOrAll"    # I

    move-object/from16 v0, p0

    .line 258
    move/from16 v1, p1

    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "TrustManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshAgentList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_24
    iget-boolean v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    if-nez v2, :cond_29

    .line 260
    return-void

    .line 262
    :cond_29
    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    if-gez v1, :cond_52

    .line 263
    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refreshAgentList(userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): Invalid user handle, must be USER_ALL or a specific user."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    const-string v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    const/4 v1, -0x1

    .line 267
    .end local p1    # "userIdOrAll":I
    .local v1, "userIdOrAll":I
    :cond_52
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 270
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    if-ne v1, v2, :cond_62

    .line 271
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 271
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_70

    .line 273
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :goto_70
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 278
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 279
    .local v7, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/trust/TrustManagerService$AgentInfo;>;"
    iget-object v8, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 281
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_80
    :goto_80
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_35b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 282
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_80

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v11, :cond_80

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_80

    iget-boolean v11, v9, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v11, :cond_9d

    .line 283
    goto :goto_80

    .line 284
    :cond_9d
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    if-nez v11, :cond_c6

    .line 285
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": switchToByUser=false"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 289
    :cond_c6
    iget-object v11, v0, Lcom/android/server/trust/TrustManagerService;->mActivityManager:Landroid/app/ActivityManager;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/app/ActivityManager;->isUserRunning(I)Z

    move-result v11

    if-nez v11, :cond_f3

    .line 290
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": user not started"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 294
    :cond_f3
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    if-nez v11, :cond_11f

    .line 295
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refreshAgentList: skipping user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": no secure credential"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 300
    :cond_11f
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    .line 301
    .local v11, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v12

    .line 302
    .local v12, "disabledFeatures":I
    and-int/lit8 v14, v12, 0x10

    if-eqz v14, :cond_130

    move v14, v4

    goto :goto_131

    :cond_130
    const/4 v14, 0x0

    .line 305
    .local v14, "disableTrustAgents":Z
    :goto_131
    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v15}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v15

    .line 306
    .local v15, "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v15, :cond_15e

    .line 307
    sget-boolean v10, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v10, :cond_80

    const-string v10, "TrustManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshAgentList: skipping user "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": no agents enabled by user"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, -0x1

    goto/16 :goto_80

    .line 311
    :cond_15e
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v0, v3, v2}, Lcom/android/server/trust/TrustManagerService;->resolveAllowedTrustAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v2

    .line 312
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_168
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_351

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 313
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {v0, v4}, Lcom/android/server/trust/TrustManagerService;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v13

    .line 315
    .local v13, "name":Landroid/content/ComponentName;
    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1c0

    .line 316
    sget-boolean v16, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v16, :cond_1bd

    move-object/from16 v17, v2

    const-string v2, "TrustManagerService"

    .line 316
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v17, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 316
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v18, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    const-string/jumbo v6, "refreshAgentList: skipping "

    .line 316
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .local v19, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": not enabled by user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v13    # "name":Landroid/content/ComponentName;
    .end local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1b4
    :goto_1b4
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    :goto_1ba
    const/4 v4, 0x1

    :goto_1bb
    const/4 v13, 0x0

    goto :goto_168

    :cond_1bd
    const/4 v4, 0x1

    const/4 v13, 0x0

    .line 312
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    goto :goto_168

    .line 321
    .end local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v13    # "name":Landroid/content/ComponentName;
    :cond_1c0
    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 321
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v14, :cond_208

    .line 322
    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    .line 323
    const/4 v5, 0x0

    invoke-virtual {v11, v5, v13, v2}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    .line 325
    .local v2, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    if-eqz v2, :cond_1d7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_208

    .line 326
    :cond_1d7
    sget-boolean v5, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v5, :cond_1b4

    const-string v5, "TrustManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string/jumbo v2, "refreshAgentList: skipping "

    .end local v2    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .local v20, "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": not allowed by DPM"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b4

    .line 332
    .end local v20    # "config":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_208
    new-instance v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/server/trust/TrustManagerService$AgentInfo;-><init>(Lcom/android/server/trust/TrustManagerService$1;)V

    .line 333
    .local v2, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iput-object v13, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    .line 334
    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    iput v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 335
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22f

    .line 336
    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->label:Ljava/lang/CharSequence;

    .line 337
    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 338
    invoke-direct {v0, v3, v4}, Lcom/android/server/trust/TrustManagerService;->getSettingsAttrs(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    goto :goto_23e

    .line 340
    :cond_22f
    iget-object v6, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 341
    .local v6, "index":I
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 344
    .end local v6    # "index":I
    :goto_23e
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v5, v5, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v5, :cond_24c

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->settings:Lcom/android/server/trust/TrustManagerService$SettingsAttrs;

    iget-boolean v5, v5, Lcom/android/server/trust/TrustManagerService$SettingsAttrs;->canUnlockProfile:Z

    if-eqz v5, :cond_24c

    const/4 v5, 0x1

    goto :goto_24d

    :cond_24c
    const/4 v5, 0x0

    .line 347
    .local v5, "directUnlock":Z
    :goto_24d
    if-eqz v5, :cond_27f

    .line 348
    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_27f

    const-string v6, "TrustManagerService"

    move-object/from16 v21, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v21, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    const-string/jumbo v4, "refreshAgentList: trustagent "

    .line 348
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .local v22, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "of user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "can unlock user profile."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_283

    .line 352
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_27f
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    .line 352
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_283
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_2c3

    if-nez v5, :cond_2c3

    .line 354
    sget-boolean v3, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v3, :cond_2b9

    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshAgentList: skipping user "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'s trust agent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": FBE still locked and  the agent cannot unlock user profile."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v13    # "name":Landroid/content/ComponentName;
    .end local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v6, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2b9
    :goto_2b9
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    goto/16 :goto_1ba

    .line 360
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .local v2, "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .local v5, "directUnlock":Z
    .restart local v13    # "name":Landroid/content/ComponentName;
    .restart local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2c3
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    move-result v3

    if-nez v3, :cond_322

    .line 361
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    iget v4, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    .line 362
    .local v3, "flag":I
    const/16 v4, 0x8

    if-eq v3, v4, :cond_322

    .line 363
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e2

    if-nez v5, :cond_2df

    goto :goto_2e2

    .line 375
    .end local v3    # "flag":I
    :cond_2df
    move/from16 v24, v5

    goto :goto_324

    .line 365
    .restart local v3    # "flag":I
    :cond_2e2
    :goto_2e2
    sget-boolean v6, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v6, :cond_318

    .line 366
    const-string v6, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string/jumbo v3, "refreshAgentList: skipping user "

    .line 366
    .end local v3    # "flag":I
    .local v23, "flag":I
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": prevented by StrongAuthTracker = 0x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move/from16 v24, v5

    iget v5, v9, Landroid/content/pm/UserInfo;->id:I

    .line 368
    .end local v5    # "directUnlock":Z
    .local v24, "directUnlock":Z
    invoke-virtual {v3, v5}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b9

    .line 312
    .end local v2    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v13    # "name":Landroid/content/ComponentName;
    .end local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v23    # "flag":I
    .end local v24    # "directUnlock":Z
    :cond_318
    move-object/from16 v2, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    goto/16 :goto_1bb

    .line 375
    .restart local v2    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .restart local v5    # "directUnlock":Z
    .restart local v13    # "name":Landroid/content/ComponentName;
    .restart local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_322
    move/from16 v24, v5

    .line 375
    .end local v5    # "directUnlock":Z
    .restart local v24    # "directUnlock":Z
    :goto_324
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    if-nez v3, :cond_33e

    .line 376
    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v4, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 377
    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/server/trust/TrustAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 380
    :cond_33e
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34c

    .line 381
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_34f

    .line 383
    :cond_34c
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 385
    .end local v2    # "agentInfo":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    .end local v13    # "name":Landroid/content/ComponentName;
    .end local v22    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v24    # "directUnlock":Z
    :goto_34f
    goto/16 :goto_2b9

    .line 386
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "disabledFeatures":I
    .end local v14    # "disableTrustAgents":Z
    .end local v15    # "enabledAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v17    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .local v3, "pm":Landroid/content/pm/PackageManager;
    .local v5, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_351
    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 281
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    const/4 v4, 0x1

    goto/16 :goto_80

    .line 388
    .end local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_35b
    move-object/from16 v21, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .line 388
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v18    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v19    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 389
    .local v2, "trustMayHaveChanged":Z
    move v3, v2

    const/4 v2, 0x0

    .line 389
    .local v2, "i":I
    .local v3, "trustMayHaveChanged":Z
    :goto_364
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_38d

    .line 390
    invoke-virtual {v7, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 391
    .local v4, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    const/4 v5, -0x1

    if-eq v1, v5, :cond_377

    iget v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne v1, v5, :cond_38a

    .line 392
    :cond_377
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v5

    if-eqz v5, :cond_380

    .line 393
    const/4 v3, 0x1

    .line 395
    :cond_380
    iget-object v5, v4, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v5}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 396
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 389
    .end local v4    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_38a
    add-int/lit8 v2, v2, 0x1

    goto :goto_364

    .line 400
    .end local v2    # "i":I
    :cond_38d
    if-eqz v3, :cond_39a

    .line 401
    const/4 v2, -0x1

    if-ne v1, v2, :cond_396

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    goto :goto_39a

    .line 404
    :cond_396
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 407
    :cond_39a
    :goto_39a
    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method public resetAgent(Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "trustMayHaveChanged":Z
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_51

    .line 519
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 520
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    if-ne p2, v3, :cond_4e

    .line 521
    const-string v3, "TrustManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resetting agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isManagingTrust()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 523
    const/4 v0, 0x1

    .line 525
    :cond_44
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 526
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 518
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 529
    .end local v1    # "i":I
    :cond_51
    if-eqz v0, :cond_57

    .line 530
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(II)V

    .line 532
    :cond_57
    invoke-virtual {p0, p2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 533
    return-void
.end method

.method showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustError(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 6
    .param p1, "handle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 250
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->unlockUserWithToken(J[BI)Z

    .line 251
    return-void
.end method

.method updateDevicePolicyFeatures()V
    .registers 5

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 487
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 488
    .local v2, "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 489
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v3}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 490
    const/4 v0, 0x1

    .line 486
    .end local v2    # "info":Lcom/android/server/trust/TrustManagerService$AgentInfo;
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 493
    .end local v1    # "i":I
    :cond_23
    if-eqz v0, :cond_2a

    .line 494
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    invoke-virtual {v1}, Lcom/android/server/trust/TrustArchive;->logDevicePolicyChanged()V

    .line 496
    :cond_2a
    return-void
.end method

.method public updateTrust(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrustManaged(I)Z

    move-result v0

    .line 208
    .local v0, "managed":Z
    invoke-direct {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustManagedChanged(ZI)V

    .line 209
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    move-result v1

    if-eq v1, v0, :cond_18

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrustUsuallyManaged(IZ)V

    .line 213
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsTrusted(I)Z

    move-result v1

    .line 215
    .local v1, "trusted":Z
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    .line 216
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eq v3, v1, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 217
    .local v3, "changed":Z
    :goto_2a
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 218
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_39

    .line 219
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/trust/TrustManagerService;->dispatchOnTrustChanged(ZII)V

    .line 220
    if-eqz v3, :cond_38

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 223
    :cond_38
    return-void

    .line 218
    .end local v3    # "changed":Z
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v3
.end method
