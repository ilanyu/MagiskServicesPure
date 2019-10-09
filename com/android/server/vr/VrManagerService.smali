.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;
.implements Landroid/app/ActivityManagerInternal$ScreenObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$VrState;,
        Lcom/android/server/vr/VrManagerService$SettingEvent;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_LOG_SIZE:I = 0x40

.field private static final FLAG_ALL:I = 0x7

.field private static final FLAG_AWAKE:I = 0x1

.field private static final FLAG_KEYGUARD_UNLOCKED:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_SCREEN_ON:I = 0x2

.field private static final INVALID_APPOPS_MODE:I = -0x1

.field private static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field private static final MSG_PERSISTENT_VR_MODE_STATE_CHANGE:I = 0x2

.field private static final MSG_VR_STATE_CHANGE:I = 0x0

.field private static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field private static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field private mBootsToVr:Z

.field private mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field private mCurrentVrModeComponent:Landroid/content/ComponentName;

.field private mCurrentVrModeUser:I

.field private mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field private mDefaultVrService:Landroid/content/ComponentName;

.field private final mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private mGuard:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mLogLimitHit:Z

.field private final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/utils/ManagedApplicationService$LogFormattable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field private mPersistentVrModeEnabled:Z

.field private final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IPersistentVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousCoarseLocationMode:I

.field private mPreviousManageOverlayMode:I

.field private mRunning2dInVr:Z

.field private mStandby:Z

.field private mSystemSleepFlags:I

.field private mUseStandbyToExitVrMode:Z

.field private mUserUnlocked:Z

.field private mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field private mVrAppProcessId:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private mVrModeAllowed:Z

.field private mVrModeEnabled:Z

.field private final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mWasDefaultGranted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 436
    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 760
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 136
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    .line 153
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 155
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    .line 158
    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    .line 161
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    .line 162
    new-instance v0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 165
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 179
    new-instance v0, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 307
    new-instance v0, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 535
    new-instance v0, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    .line 761
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IVrStateCallbacks;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IVrStateCallbacks;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/vr/VrManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVr2dDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setAndBindCompositor(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setStandbyEnabled(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/vr/VrManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/ComponentName;

    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setScreenOn(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # I

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/vr/VrManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->setUserUnlocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/vr/VrManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p1, "x1"    # Z

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/vr/VrManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/vr/VrManagerService;

    .line 111
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    return-void
.end method

.method private addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 3
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1423
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1424
    return-void
.end method

.method private addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 3
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 1415
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1416
    return-void
.end method

.method private callFocusedActivityChangedLocked()V
    .registers 6

    .line 1005
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 1006
    .local v0, "c":Landroid/content/ComponentName;
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 1007
    .local v1, "b":Z
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 1008
    .local v2, "pid":I
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    new-instance v4, Lcom/android/server/vr/VrManagerService$6;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/server/vr/VrManagerService$6;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V

    invoke-virtual {v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    .line 1019
    return-void
.end method

.method private changeVrModeLocked(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 1161
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_2d

    .line 1162
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1165
    const-string v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VR mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v2, :cond_19

    const-string v2, "enabled"

    goto :goto_1b

    :cond_19
    const-string v2, "disabled"

    :goto_1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    .line 1168
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    .line 1170
    :cond_2d
    return-void
.end method

.method private consumeAndApplyPendingStateLocked()V
    .registers 2

    .line 1211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 1212
    return-void
.end method

.method private consumeAndApplyPendingStateLocked(Z)V
    .registers 10
    .param p1, "disconnectIfNoPendingState"    # Z

    .line 1222
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v0, :cond_24

    .line 1223
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v3, v0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v4, v0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v5, v0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v6, v0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v7, v0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    goto :goto_30

    .line 1227
    :cond_24
    if-eqz p1, :cond_30

    .line 1228
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1230
    :cond_30
    :goto_30
    return-void
.end method

.method private createAndConnectService(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1148
    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1149
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1150
    const-string v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void
.end method

.method private createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1199
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 1200
    :goto_5
    move v8, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x3

    goto :goto_5

    .line 1201
    .local v8, "retryType":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0
.end method

.method private createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1187
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 1188
    :goto_5
    move v8, v0

    goto :goto_9

    :cond_7
    const/4 v0, 0x2

    goto :goto_5

    .line 1189
    .local v8, "retryType":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104070d

    const-string v5, "android.settings.VR_LISTENER_SETTINGS"

    sget-object v6, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    const/4 v7, 0x1

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v10}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0
.end method

.method private dumpStateTransitions(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1250
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v0, "d":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 1252
    :try_start_a
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    if-nez v2, :cond_1c

    .line 1253
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    const-string v2, "None"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    if-eqz v2, :cond_25

    .line 1258
    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1261
    :cond_25
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 1262
    .local v3, "event":Lcom/android/server/utils/ManagedApplicationService$LogFormattable;
    invoke-interface {v3, v0}, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;->toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    .end local v3    # "event":Lcom/android/server/utils/ManagedApplicationService$LogFormattable;
    goto :goto_2b

    .line 1264
    :cond_3f
    monitor-exit v1

    .line 1265
    return-void

    .line 1264
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_41

    throw v2
.end method

.method private varargs enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    .registers 6
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 702
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 703
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    .line 705
    return-void

    .line 702
    .end local v2    # "permission":Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 708
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller does not hold at least one of the permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1126
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_39

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_39

    .line 1130
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1132
    .local v1, "start":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1133
    .local v3, "s":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1134
    goto :goto_13

    .line 1136
    :cond_28
    if-nez v1, :cond_2f

    .line 1137
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1139
    :cond_2f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const/4 v1, 0x0

    .line 1141
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_13

    .line 1142
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1127
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "start":Z
    :cond_39
    :goto_39
    const-string v0, ""

    return-object v0
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .registers 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1110
    const-string v0, "enabled_notification_listeners"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "flat":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1114
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_25

    .line 1115
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, "allowed":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    .line 1117
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 1118
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1116
    .end local v5    # "s":Ljava/lang/String;
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1122
    .end local v2    # "allowed":[Ljava/lang/String;
    :cond_25
    return-object v1
.end method

.method private getPersistentVrMode()Z
    .registers 3

    .line 1437
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1438
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    monitor-exit v0

    return v1

    .line 1439
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getStateAsString()Ljava/lang/String;
    .registers 3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    const-string v1, "awake, "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "screen_on, "

    goto :goto_1f

    :cond_1d
    const-string v1, ""

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2c

    const-string/jumbo v1, "keyguard_off"

    goto :goto_2e

    :cond_2c
    const-string v1, ""

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    return-object v0
.end method

.method private getVr2dDisplayId()I
    .registers 3

    .line 1343
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v0, :cond_b

    .line 1344
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v0}, Lcom/android/server/vr/Vr2dDisplay;->getVirtualDisplayId()I

    move-result v0

    return v0

    .line 1346
    :cond_b
    const-string v0, "VrManagerService"

    const-string v1, "Vr2dDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v0, -0x1

    return v0
.end method

.method private getVrMode()Z
    .registers 3

    .line 1431
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1432
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    monitor-exit v0

    return v1

    .line 1433
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1076
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1078
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_18} :catch_19

    .line 1084
    goto :goto_35

    .line 1080
    :catch_19
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "VrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not grant coarse location permission, package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_35
    :goto_35
    return-void
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1050
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1051
    .local v0, "nm":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1052
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.service.notification.NotificationListenerService"

    const-string v3, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {v1, p2, v2, v3}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    .line 1056
    .local v2, "possibleServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1057
    .local v4, "c":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1058
    const/4 v5, 0x1

    invoke-virtual {v0, v4, p2, v5}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1060
    .end local v4    # "c":Landroid/content/ComponentName;
    :cond_36
    goto :goto_1c

    .line 1061
    :cond_37
    return-void
.end method

.method private grantNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1037
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1038
    .local v0, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1039
    return-void
.end method

.method private hasVrPackage(Landroid/content/ComponentName;I)I
    .registers 5
    .param p1, "targetPackageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 1395
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1397
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static native initializeNative()V
.end method

.method private isCurrentVrListener(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1401
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1403
    monitor-exit v0

    return v2

    .line 1405
    :cond_a
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1406
    invoke-virtual {v1}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v1

    if-ne p2, v1, :cond_24

    const/4 v2, 0x1

    nop

    :cond_24
    monitor-exit v0

    .line 1405
    return v2

    .line 1407
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1022
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1024
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1026
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/16 v2, 0x80

    :try_start_9
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_d} :catch_f

    move-object v1, v2

    .line 1028
    goto :goto_10

    .line 1027
    :catch_f
    move-exception v2

    .line 1030
    :goto_10
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_21

    .line 1033
    :cond_1f
    const/4 v2, 0x1

    return v2

    .line 1031
    :cond_21
    :goto_21
    const/4 v2, 0x0

    return v2
.end method

.method private isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1103
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 1105
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public static synthetic lambda$onSwitchUser$0(Lcom/android/server/vr/VrManagerService;)V
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 841
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 5
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    .line 1240
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 1241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_15

    .line 1242
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    .line 1245
    :cond_15
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1246
    monitor-exit v0

    .line 1247
    return-void

    .line 1246
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private logStateLocked()V
    .registers 10

    .line 1233
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 1234
    :goto_5
    move-object v4, v0

    goto :goto_e

    :cond_7
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_5

    .line 1235
    .local v4, "currentBoundService":Landroid/content/ComponentName;
    :goto_e
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget v6, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1237
    return-void
.end method

.method private onVrModeChangedLocked()V
    .registers 5

    .line 1178
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    .line 1179
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 1178
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1180
    return-void
.end method

.method private removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 3
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 1427
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1428
    return-void
.end method

.method private removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 3
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .line 1419
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1420
    return-void
.end method

.method private revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1090
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1092
    :try_start_8
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_18} :catch_19

    .line 1098
    goto :goto_35

    .line 1094
    :catch_19
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "VrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not revoke coarse location permission, package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_35
    :goto_35
    return-void
.end method

.method private revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1064
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1065
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v1

    .line 1067
    .local v1, "current":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1068
    .local v3, "component":Landroid/content/ComponentName;
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1069
    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v4}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 1071
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_2e
    goto :goto_12

    .line 1072
    :cond_2f
    return-void
.end method

.method private revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1042
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1044
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 1046
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 1047
    return-void
.end method

.method private setAndBindCompositor(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1351
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1352
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1354
    .local v1, "token":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    .line 1355
    :try_start_b
    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 1356
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    .line 1358
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1359
    nop

    .line 1360
    return-void

    .line 1356
    :catchall_14
    move-exception v4

    :try_start_15
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v4
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 1358
    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setPersistentModeAndNotifyListenersLocked(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .line 1382
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-ne v0, p1, :cond_5

    .line 1383
    return-void

    .line 1385
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persistent VR mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v1, "enabled"

    goto :goto_16

    :cond_14
    const-string v1, "disabled"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "eventName":Ljava/lang/String;
    const-string v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 1388
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    .line 1390
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 1391
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    const/4 v5, 0x0

    .line 1390
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1392
    return-void
.end method

.method private setPersistentVrModeEnabled(Z)V
    .registers 9
    .param p1, "enabled"    # Z

    .line 1319
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1320
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 1322
    if-nez p1, :cond_11

    .line 1323
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 1325
    :cond_11
    monitor-exit v0

    .line 1326
    return-void

    .line 1325
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private setScreenOn(Z)V
    .registers 3
    .param p1, "isScreenOn"    # Z

    .line 253
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 254
    return-void
.end method

.method private setStandbyEnabled(Z)V
    .registers 5
    .param p1, "standby"    # Z

    .line 297
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-nez v1, :cond_10

    .line 299
    const-string v1, "VrManagerService"

    const-string v2, "Attempting to set standby mode on a non-standalone device"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    monitor-exit v0

    return-void

    .line 302
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    .line 303
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private setSystemState(IZ)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "isOn"    # Z

    .line 267
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 269
    .local v1, "oldState":I
    if-eqz p2, :cond_d

    .line 270
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    goto :goto_13

    .line 272
    :cond_d
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    .line 274
    :goto_13
    iget v2, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eq v1, v2, :cond_1a

    .line 276
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 278
    .end local v1    # "oldState":I
    :cond_1a
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private setUserUnlocked()V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    .line 292
    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 293
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 24
    .param p1, "enabled"    # Z
    .param p2, "targetPackageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "processId"    # I
    .param p5, "callingPackage"    # Landroid/content/ComponentName;

    move-object/from16 v8, p0

    .line 1273
    iget-object v9, v8, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1279
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_13

    :try_start_9
    iget-boolean v2, v8, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v2, :cond_e

    goto :goto_13

    :cond_e
    move v2, v0

    goto :goto_14

    .line 1315
    :catchall_10
    move-exception v0

    goto/16 :goto_6b

    .line 1279
    :cond_13
    :goto_13
    move v2, v1

    :goto_14
    move/from16 v17, v2

    .line 1280
    .local v17, "targetEnabledState":Z
    if-nez p1, :cond_1e

    iget-boolean v2, v8, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v2, :cond_1e

    move v0, v1

    nop

    .line 1281
    .local v0, "running2dInVr":Z
    :cond_1e
    if-eqz v0, :cond_24

    .line 1282
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    .line 1284
    .local v2, "targetListener":Landroid/content/ComponentName;
    move-object v13, v2

    goto :goto_26

    .end local v2    # "targetListener":Landroid/content/ComponentName;
    :cond_24
    move-object/from16 v13, p2

    .line 1287
    .local v13, "targetListener":Landroid/content/ComponentName;
    :goto_26
    new-instance v2, Lcom/android/server/vr/VrManagerService$VrState;

    move-object v10, v2

    move/from16 v11, v17

    move v12, v0

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v10 .. v16}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    move-object v10, v2

    .line 1290
    .local v10, "pending":Lcom/android/server/vr/VrManagerService$VrState;
    iget-boolean v2, v8, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v2, :cond_3e

    .line 1294
    iput-object v10, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1295
    monitor-exit v9

    return-void

    .line 1298
    :cond_3e
    if-nez v17, :cond_53

    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v2, :cond_53

    .line 1301
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez v2, :cond_4f

    .line 1302
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1306
    :cond_4f
    iput-object v10, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1307
    monitor-exit v9

    return-void

    .line 1309
    :cond_53
    iget-object v2, v8, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1310
    const/4 v1, 0x0

    iput-object v1, v8, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 1313
    move-object v1, v8

    move/from16 v2, v17

    move v3, v0

    move-object v4, v13

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 1315
    .end local v0    # "running2dInVr":Z
    .end local v10    # "pending":Lcom/android/server/vr/VrManagerService$VrState;
    .end local v13    # "targetListener":Landroid/content/ComponentName;
    .end local v17    # "targetEnabledState":Z
    monitor-exit v9

    .line 1316
    return-void

    .line 1315
    :goto_6b
    monitor-exit v9
    :try_end_6c
    .catchall {:try_start_9 .. :try_end_6c} :catchall_10

    throw v0
.end method

.method private static native setVrModeNative(Z)V
.end method

.method private updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 1363
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1364
    invoke-virtual {v0, p2, p1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1365
    const-string v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting compositor service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1366
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1365
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1372
    :cond_2b
    if-eqz p2, :cond_52

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_52

    .line 1375
    const-string v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting compositor service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-direct {p0, p2, p1}, Lcom/android/server/vr/VrManagerService;->createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    .line 1377
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    .line 1379
    :cond_52
    return-void
.end method

.method private updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    .registers 24
    .param p1, "enabled"    # Z
    .param p2, "running2dInVr"    # Z
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p5, "processId"    # I
    .param p6, "calling"    # Landroid/content/ComponentName;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 912
    move-object/from16 v5, p6

    const/4 v6, 0x0

    .line 913
    .local v6, "sendUpdatedCaller":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 916
    .local v7, "identity":J
    :try_start_f
    iget-object v0, v1, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v0, :cond_1b

    move v0, v10

    goto :goto_1c

    :cond_1b
    move v0, v9

    .line 918
    .local v0, "validUserComponent":Z
    :goto_1c
    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    move v9, v10

    nop

    .line 919
    .local v9, "goingIntoVrMode":Z
    :cond_22
    iget-boolean v10, v1, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_144

    if-nez v10, :cond_2d

    if-nez v9, :cond_2d

    .line 920
    nop

    .line 1000
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    return v0

    .line 923
    :cond_2d
    :try_start_2d
    iget-object v10, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_144

    if-eqz v10, :cond_42

    .line 924
    :try_start_31
    iget-object v10, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v10}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_3c

    goto :goto_43

    .line 1000
    .end local v0    # "validUserComponent":Z
    .end local v9    # "goingIntoVrMode":Z
    :catchall_3c
    move-exception v0

    move/from16 v14, p5

    .end local v6    # "sendUpdatedCaller":Z
    .local v15, "sendUpdatedCaller":Z
    :goto_3f
    move v15, v6

    goto/16 :goto_148

    .line 924
    .end local v15    # "sendUpdatedCaller":Z
    .restart local v0    # "validUserComponent":Z
    .restart local v6    # "sendUpdatedCaller":Z
    .restart local v9    # "goingIntoVrMode":Z
    :cond_42
    const/4 v10, 0x0

    .line 925
    .local v10, "oldVrServicePackage":Ljava/lang/String;
    :goto_43
    :try_start_43
    iget v12, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 928
    .local v12, "oldUserId":I
    invoke-direct {v1, v9}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_144

    .line 930
    const/4 v13, 0x0

    .line 931
    .local v13, "nothingChanged":Z
    if-nez v9, :cond_92

    .line 933
    :try_start_4b
    iget-object v11, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v11, :cond_88

    .line 934
    const-string v11, "VrManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_8c

    move v15, v6

    :try_start_57
    const-string v6, "Leaving VR mode, disconnecting "

    .end local v6    # "sendUpdatedCaller":Z
    .restart local v15    # "sendUpdatedCaller":Z
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 935
    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 936
    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 934
    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v6}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 938
    const/4 v6, 0x0

    const/16 v11, -0x2710

    invoke-direct {v1, v11, v6}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 939
    iput-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    goto :goto_8a

    .line 941
    .end local v15    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :cond_88
    move v15, v6

    .end local v6    # "sendUpdatedCaller":Z
    .restart local v15    # "sendUpdatedCaller":Z
    const/4 v13, 0x1

    .line 967
    :goto_8a
    const/4 v6, 0x0

    goto :goto_e5

    .line 1000
    .end local v0    # "validUserComponent":Z
    .end local v9    # "goingIntoVrMode":Z
    .end local v10    # "oldVrServicePackage":Ljava/lang/String;
    .end local v12    # "oldUserId":I
    .end local v13    # "nothingChanged":Z
    .end local v15    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :catchall_8c
    move-exception v0

    move v15, v6

    move/from16 v14, p5

    goto/16 :goto_148

    .line 945
    .restart local v0    # "validUserComponent":Z
    .restart local v9    # "goingIntoVrMode":Z
    .restart local v10    # "oldVrServicePackage":Ljava/lang/String;
    .restart local v12    # "oldUserId":I
    .restart local v13    # "nothingChanged":Z
    :cond_92
    move v15, v6

    .end local v6    # "sendUpdatedCaller":Z
    .restart local v15    # "sendUpdatedCaller":Z
    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v6, :cond_df

    .line 948
    iget-object v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 949
    const-string v6, "VrManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VR mode component changed to "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", disconnecting "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 950
    invoke-virtual {v14}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " for user "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 951
    invoke-virtual {v14}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 949
    invoke-static {v6, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v6, 0x0

    const/16 v11, -0x2710

    invoke-direct {v1, v11, v6}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    .line 953
    invoke-direct {v1, v3, v4}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 954
    const/4 v11, 0x1

    goto :goto_e4

    .line 956
    :cond_dc
    const/4 v6, 0x0

    const/4 v13, 0x1

    goto :goto_e5

    .line 962
    :cond_df
    const/4 v6, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    .line 963
    const/4 v11, 0x1

    .line 967
    .end local v15    # "sendUpdatedCaller":Z
    .local v11, "sendUpdatedCaller":Z
    :goto_e4
    move v15, v11

    .end local v11    # "sendUpdatedCaller":Z
    .restart local v15    # "sendUpdatedCaller":Z
    :goto_e5
    if-nez v5, :cond_eb

    iget-boolean v11, v1, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v11, :cond_f3

    :cond_eb
    iget-object v11, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 968
    invoke-static {v5, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_fa

    :cond_f3
    iget-boolean v11, v1, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z
    :try_end_f5
    .catchall {:try_start_57 .. :try_end_f5} :catchall_140

    if-eq v11, v2, :cond_f8

    goto :goto_fa

    .line 972
    :cond_f8
    move v11, v15

    goto :goto_fb

    .line 970
    :cond_fa
    :goto_fa
    const/4 v11, 0x1

    .line 972
    .end local v15    # "sendUpdatedCaller":Z
    .restart local v11    # "sendUpdatedCaller":Z
    :goto_fb
    :try_start_fb
    iput-object v5, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 973
    iput-boolean v2, v1, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_13b

    .line 974
    move/from16 v14, p5

    :try_start_101
    iput v14, v1, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 976
    iget v6, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    if-eq v6, v4, :cond_10b

    .line 977
    iput v4, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_139

    .line 978
    const/4 v6, 0x1

    .end local v11    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    goto :goto_10c

    .line 981
    .end local v6    # "sendUpdatedCaller":Z
    .restart local v11    # "sendUpdatedCaller":Z
    :cond_10b
    move v6, v11

    .end local v11    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :goto_10c
    :try_start_10c
    iget-object v11, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v11, :cond_11b

    .line 982
    iget-object v11, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v11}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    goto :goto_11c

    :cond_11b
    const/4 v11, 0x0

    .line 983
    .local v11, "newVrServicePackage":Ljava/lang/String;
    :goto_11c
    iget v2, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    .line 987
    .local v2, "newUserId":I
    invoke-direct {v1, v11, v2, v10, v12}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    .line 990
    move/from16 v16, v2

    iget-object v2, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .end local v2    # "newUserId":I
    .local v16, "newUserId":I
    if-eqz v2, :cond_12c

    if-eqz v6, :cond_12c

    .line 991
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    .line 994
    :cond_12c
    if-nez v13, :cond_131

    .line 995
    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_131
    .catchall {:try_start_10c .. :try_end_131} :catchall_136

    .line 998
    :cond_131
    nop

    .line 1000
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 998
    return v0

    .line 1000
    .end local v0    # "validUserComponent":Z
    .end local v9    # "goingIntoVrMode":Z
    .end local v10    # "oldVrServicePackage":Ljava/lang/String;
    .end local v11    # "newVrServicePackage":Ljava/lang/String;
    .end local v12    # "oldUserId":I
    .end local v13    # "nothingChanged":Z
    .end local v16    # "newUserId":I
    :catchall_136
    move-exception v0

    goto/16 :goto_3f

    .end local v6    # "sendUpdatedCaller":Z
    .local v11, "sendUpdatedCaller":Z
    :catchall_139
    move-exception v0

    goto :goto_13e

    :catchall_13b
    move-exception v0

    move/from16 v14, p5

    .end local v11    # "sendUpdatedCaller":Z
    .restart local v15    # "sendUpdatedCaller":Z
    :goto_13e
    move v15, v11

    goto :goto_148

    :catchall_140
    move-exception v0

    move/from16 v14, p5

    goto :goto_148

    .end local v15    # "sendUpdatedCaller":Z
    .restart local v6    # "sendUpdatedCaller":Z
    :catchall_144
    move-exception v0

    move/from16 v14, p5

    move v15, v6

    .end local v6    # "sendUpdatedCaller":Z
    .restart local v15    # "sendUpdatedCaller":Z
    :goto_148
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8
    .param p1, "newVrServicePackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldVrServicePackage"    # Ljava/lang/String;
    .param p4, "oldUserId"    # I

    .line 881
    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 882
    return-void

    .line 884
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 887
    .local v0, "identity":J
    :try_start_b
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    .line 889
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    nop

    .line 891
    return-void

    .line 889
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateOverlayStateLocked(Ljava/lang/String;II)V
    .registers 11
    .param p1, "exemptedPackage"    # Ljava/lang/String;
    .param p2, "newUserId"    # I
    .param p3, "oldUserId"    # I

    .line 862
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 865
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    if-eq p3, p2, :cond_19

    .line 866
    const/16 v2, 0x18

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    move-object v1, v0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 871
    :cond_19
    const/4 v1, 0x0

    if-nez p1, :cond_20

    new-array v1, v1, [Ljava/lang/String;

    .line 872
    move-object v5, v1

    goto :goto_26

    :cond_20
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    move-object v5, v2

    .line 874
    .local v5, "exemptions":[Ljava/lang/String;
    :goto_26
    const/16 v2, 0x18

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move-object v1, v0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 876
    return-void
.end method

.method private updateVrModeAllowedLocked()V
    .registers 13

    .line 221
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 222
    .local v0, "ignoreSleepFlags":Z
    :goto_d
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mStandby:Z

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_18

    :cond_17
    move v3, v1

    .line 223
    .local v3, "disallowedByStandby":Z
    :goto_18
    iget v4, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1f

    if-eqz v0, :cond_27

    :cond_1f
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    if-eqz v4, :cond_27

    if-nez v3, :cond_27

    move v4, v2

    goto :goto_28

    :cond_27
    move v4, v1

    .line 225
    .local v4, "allowed":Z
    :goto_28
    iget-boolean v5, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eq v5, v4, :cond_7f

    .line 226
    iput-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 228
    iget-boolean v5, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eqz v5, :cond_4c

    .line 229
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v1, :cond_39

    .line 230
    invoke-direct {p0, v2}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 232
    :cond_39
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-nez v1, :cond_7f

    .line 233
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_7f

    .line 238
    :cond_4c
    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    .line 241
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v1, :cond_72

    .line 242
    new-instance v1, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v6, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v7, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 243
    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v9

    iget v10, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    goto :goto_73

    .line 244
    :cond_72
    const/4 v1, 0x0

    :goto_73
    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    .line 247
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 250
    :cond_7f
    :goto_7f
    return-void
.end method


# virtual methods
.method public onAwakeStateChanged(Z)V
    .registers 3
    .param p1, "isAwake"    # Z

    .line 258
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 259
    return-void
.end method

.method public onBootPhase(I)V
    .registers 13
    .param p1, "phase"    # I

    .line 779
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_b3

    .line 780
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 781
    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerScreenObserver(Landroid/app/ActivityManagerInternal$ScreenObserver;)V

    .line 783
    const-string/jumbo v0, "notification"

    .line 784
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 783
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    .line 785
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_1f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 787
    .local v1, "looper":Landroid/os/Looper;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 788
    .local v3, "handler":Landroid/os/Handler;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 789
    .local v10, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string v4, "enabled_vr_listeners"

    const-string v6, "android.permission.BIND_VR_LISTENER_SERVICE"

    const-string v7, "android.service.vr.VrListenerService"

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    move-object v5, v1

    move-object v9, v10

    invoke-static/range {v2 .. v9}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 795
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v2}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    .line 796
    .end local v1    # "looper":Landroid/os/Looper;
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v10    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;>;"
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_b0

    .line 800
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDefaultVrComponents()Landroid/util/ArraySet;

    move-result-object v0

    .line 801
    .local v0, "defaultVrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_61

    .line 802
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    goto :goto_68

    .line 804
    :cond_61
    const-string v1, "VrManagerService"

    const-string v2, "No default vr listener service found."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_68
    nop

    .line 808
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 809
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    new-instance v2, Lcom/android/server/vr/Vr2dDisplay;

    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 811
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    .line 812
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Lcom/android/server/wm/WindowManagerInternal;Landroid/service/vr/IVrManager;)V

    iput-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    .line 814
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/vr/Vr2dDisplay;->init(Landroid/content/Context;Z)V

    .line 816
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 817
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/vr/VrManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 818
    .end local v0    # "defaultVrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    goto :goto_b3

    .line 796
    :catchall_b0
    move-exception v1

    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v1

    .line 827
    :cond_b3
    :goto_b3
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 856
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 858
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onEnabledComponentChanged()V
    .registers 12

    .line 503
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 506
    .local v1, "currentUser":I
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v2, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 508
    .local v2, "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 509
    .local v3, "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 510
    .local v5, "n":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, "pkg":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 512
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v5    # "n":Landroid/content/ComponentName;
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_33
    goto :goto_16

    .line 515
    :cond_34
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-virtual {v4, v3}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    .line 517
    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v4, :cond_3f

    .line 518
    monitor-exit v0

    return-void

    .line 522
    :cond_3f
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 524
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v4, :cond_49

    .line 525
    monitor-exit v0

    return-void

    .line 529
    :cond_49
    iget-boolean v5, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v6, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 530
    invoke-virtual {v4}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v4}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v8

    iget v9, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v10, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 529
    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    .line 532
    .end local v1    # "currentUser":I
    .end local v2    # "enabledListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v3    # "enabledPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 4
    .param p1, "isShowing"    # Z

    .line 263
    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    .line 264
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 765
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 766
    :try_start_3
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    .line 767
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 768
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_41

    .line 770
    const-string/jumbo v0, "ro.boot.vr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 771
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    const-string/jumbo v0, "persist.vr.use_standby_to_exit_vr_mode"

    .line 772
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    move v1, v2

    nop

    :cond_27
    iput-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mUseStandbyToExitVrMode:Z

    .line 773
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 774
    const-string/jumbo v0, "vrmanager"

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 775
    return-void

    .line 768
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 831
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 833
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 848
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v1}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V

    .line 850
    monitor-exit v0

    .line 852
    return-void

    .line 850
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 838
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;

    invoke-direct {v1, p0}, Lcom/android/server/vr/-$$Lambda$VrManagerService$hhbi29QXTMTcQg-S7n5SpAawSZs;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 844
    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 6
    .param p1, "compatDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .line 1330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1332
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v2, :cond_11

    .line 1333
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v2, p1}, Lcom/android/server/vr/Vr2dDisplay;->setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1d

    .line 1337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1334
    return-void

    .line 1337
    :cond_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1338
    nop

    .line 1339
    const-string v2, "VrManagerService"

    const-string v3, "Vr2dDisplay is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    return-void

    .line 1337
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
