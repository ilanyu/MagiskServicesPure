.class public Lcom/android/server/LocationPolicyManagerService;
.super Landroid/location/ILocationPolicyManager$Stub;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;,
        Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.location.action.ALLOW_BACKGROUND"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_HIGH_POWER:Ljava/lang/String; = "high-power"

.field private static final ATTR_LOCATION_PROVIDER:Ljava/lang/String; = "provider"

.field private static final ATTR_MIN_INTERVAL:Ljava/lang/String; = "minIntervalMs"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOGD:Z = true

.field private static final LOGV:Z = true

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x2

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocationPolicy"

.field private static final TAG_ALLOW_BACKGROUND:Ljava/lang/String; = "LocationPolicy:allowBackground"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_LOCATION_POLICY:Ljava/lang/String; = "location-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0x1

.field static sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;


# instance fields
.field private DEVICE_IDLE_CHANGE:Ljava/lang/String;

.field private mActiveNotifs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private volatile mDeviceIdle:Z

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/location/ILocationPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private volatile mLocationMode:I

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

.field private mLocationPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/LocationPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/location/LocationPolicy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifManager:Landroid/app/INotificationManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mPowerManager:Landroid/os/PowerManager;

.field private volatile mRestrictBackground:Z

.field private final mRulesLock:Ljava/lang/Object;

.field private volatile mScreenOn:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mUidInNavigation:Landroid/util/SparseBooleanArray;

.field private mUidPolicies:Landroid/util/SparseIntArray;

.field private mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

.field private mUidStateHelper:Lcom/android/server/UidStateHelper;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;

    .line 169
    invoke-direct {p0}, Landroid/location/ILocationPolicyManager$Stub;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    .line 134
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    .line 137
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    .line 139
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 141
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    .line 144
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    .line 146
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 253
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$1;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    .line 262
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$2;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 275
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$3;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$4;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$5;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$6;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$7;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$8;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1009
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$9;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 170
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    .line 172
    iput-object p2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    .line 174
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationPolicy"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 175
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 176
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Lcom/android/server/location/LocationOpHandler;

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/LocationOpHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    .line 179
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "locationpolicy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    .line 183
    new-instance v0, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-direct {v0, p0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;-><init>(Lcom/android/server/LocationPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationModeChangeLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LocationPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/LocationPolicyManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForDeviceIdleLocked()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/LocationPolicyManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/LocationPolicyManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationPolicyManagerService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->removePoliciesForUserLocked(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/LocationPolicyManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationPolicyManagerService;
    .param p1, "x1"    # I

    .line 83
    iput p1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    return p1
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, v2, v2}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 464
    .end local v0    # "packageName":Ljava/lang/String;
    goto :goto_e

    .line 462
    :catch_d
    move-exception v0

    .line 465
    :goto_e
    return-void
.end method

.method private enqueueRestrictedNotification(Ljava/lang/String;)V
    .registers 16
    .param p1, "tag"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 428
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .local v1, "builder":Landroid/app/Notification$Builder;
    const v2, 0x110b00a6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 431
    .local v2, "title":Ljava/lang/CharSequence;
    const v3, 0x110b00a7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "body":Ljava/lang/CharSequence;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 434
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 435
    const v5, 0x1080078

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 436
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 437
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 438
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 440
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    .line 442
    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 441
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 447
    :try_start_44
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "packageName":Ljava/lang/String;
    new-array v4, v4, [I

    .line 449
    .local v4, "idReceived":[I
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mNotifManager:Landroid/app/INotificationManager;

    const/4 v11, 0x0

    .line 450
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v12

    const/4 v13, 0x0

    .line 449
    move-object v9, v8

    move-object v10, p1

    invoke-interface/range {v7 .. v13}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 451
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_5e} :catch_5f

    .line 454
    .end local v4    # "idReceived":[I
    .end local v8    # "packageName":Ljava/lang/String;
    goto :goto_60

    .line 452
    :catch_5f
    move-exception v4

    .line 455
    :goto_60
    return-void
.end method

.method public static getDefaultService()Lcom/android/server/LocationPolicyManagerService;
    .registers 2

    .line 161
    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    if-eqz v0, :cond_7

    .line 162
    sget-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    return-object v0

    .line 165
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LocationPolicyManagerService has not been initialized "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOpMinIntervalMsLocked(I)I
    .registers 5
    .param p1, "op"    # I

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "interval":I
    packed-switch p1, :pswitch_data_36

    goto :goto_34

    .line 883
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 884
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationPolicy;

    iget v0, v1, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    goto :goto_34

    .line 877
    :pswitch_1e
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 878
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationPolicy;

    iget v0, v1, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    .line 889
    :cond_34
    :goto_34
    return v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static getSystemDir()Ljava/io/File;
    .registers 3

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isDeviceIdle()Z
    .registers 5

    .line 393
    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "isDeviceIdleMode"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1a} :catch_1b

    return v1

    .line 394
    :catch_1b
    move-exception v1

    .line 395
    return v0
.end method

.method private isScreenOn()Z
    .registers 5

    .line 380
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_21

    .line 381
    const-class v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "isScreenOn"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 383
    :cond_21
    const-class v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "isInteractive"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_3a} :catch_3b

    return v0

    .line 385
    :catch_3b
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 388
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const/4 v0, 0x1

    return v0
.end method

.method private isUidForegroundLocked(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 904
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isUidValidForRules(I)Z
    .registers 2
    .param p0, "uid"    # I

    .line 969
    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_d

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 973
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 970
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method static newDefaultService(Landroid/content/Context;Landroid/location/ILocationManager;)Lcom/android/server/LocationPolicyManagerService;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locationManager"    # Landroid/location/ILocationManager;

    .line 156
    new-instance v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationPolicyManagerService;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    sput-object v0, Lcom/android/server/LocationPolicyManagerService;->sLocationPolicyService:Lcom/android/server/LocationPolicyManagerService;

    .line 157
    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v0

    return-object v0
.end method

.method private readPolicyLocked()V
    .registers 14

    .line 536
    const-string v0, "LocationPolicy"

    const-string/jumbo v1, "readPolicyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 540
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 542
    const/4 v0, 0x0

    move-object v1, v0

    .line 544
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_14
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 545
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 546
    .local v2, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 549
    const/4 v3, 0x1

    move v4, v3

    .line 550
    .local v4, "version":I
    :goto_24
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 550
    .local v6, "type":I
    if-eq v5, v3, :cond_11b

    .line 551
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, "tag":Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v6, v7, :cond_f4

    .line 553
    const-string/jumbo v7, "policy-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 554
    const-string/jumbo v7, "version"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 555
    const-string/jumbo v7, "restrictBackground"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    goto/16 :goto_f4

    .line 556
    :cond_4e
    const-string/jumbo v7, "location-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 557
    const-string/jumbo v7, "provider"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "provider":Ljava/lang/String;
    const-string v8, "high-power"

    invoke-static {v2, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    .line 559
    .local v8, "highPower":Z
    const-string/jumbo v9, "minIntervalMs"

    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 560
    .local v9, "minIntervalMs":I
    iget-object v10, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-static {v7, v9}, Landroid/location/LocationPolicy;->getLocationPolicy(Ljava/lang/String;I)Landroid/location/LocationPolicy;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "highPower":Z
    .end local v9    # "minIntervalMs":I
    goto/16 :goto_f4

    :cond_76
    const-string/jumbo v7, "uid-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_b5

    .line 562
    const-string/jumbo v7, "uid"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 563
    .local v7, "uid":I
    const-string/jumbo v9, "policy"

    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 565
    .local v9, "policy":I
    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_98

    .line 566
    invoke-direct {p0, v7, v9, v8}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto :goto_b4

    .line 568
    :cond_98
    const-string v8, "LocationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to apply policy to UID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v7    # "uid":I
    .end local v9    # "policy":I
    :goto_b4
    goto :goto_f4

    :cond_b5
    const-string v7, "app-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 571
    const-string v7, "appId"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 572
    .local v7, "appId":I
    const-string/jumbo v9, "policy"

    invoke-static {v2, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 574
    .restart local v9    # "policy":I
    invoke-static {v8, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 575
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_d8

    .line 576
    invoke-direct {p0, v10, v9, v8}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    goto :goto_f4

    .line 578
    :cond_d8
    const-string v8, "LocationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to apply policy to UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "; ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_f4} :catch_11a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_f4} :catch_10c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_f4} :catch_102
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_f4} :catch_f8
    .catchall {:try_start_14 .. :try_end_f4} :catchall_f6

    .line 582
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "appId":I
    .end local v9    # "policy":I
    .end local v10    # "uid":I
    :cond_f4
    :goto_f4
    goto/16 :goto_24

    .line 592
    .end local v2    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "version":I
    .end local v6    # "type":I
    :catchall_f6
    move-exception v0

    goto :goto_116

    .line 589
    :catch_f8
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f9
    const-string v2, "LocationPolicy"

    const-string/jumbo v3, "problem reading location policy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_11b

    .line 587
    :catch_102
    move-exception v0

    .line 588
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "LocationPolicy"

    const-string/jumbo v3, "problem reading location policy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_11b

    .line 585
    :catch_10c
    move-exception v0

    .line 586
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "LocationPolicy"

    const-string/jumbo v3, "problem reading location policy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_f9 .. :try_end_115} :catchall_f6

    .line 586
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_11b

    .line 592
    :goto_116
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 583
    :catch_11a
    move-exception v0

    .line 592
    :cond_11b
    :goto_11b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 593
    nop

    .line 594
    return-void
.end method

.method private removePoliciesForUserLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 601
    const-string v0, "LocationPolicy"

    const-string/jumbo v1, "removePoliciesForUserLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 604
    .local v1, "uids":[I
    move-object v2, v1

    move v1, v0

    .line 604
    .local v1, "i":I
    .local v2, "uids":[I
    :goto_d
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 605
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 606
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_25

    .line 607
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    .line 604
    .end local v3    # "uid":I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 611
    .end local v1    # "i":I
    :cond_28
    array-length v1, v2

    if-lez v1, :cond_3e

    .line 612
    array-length v1, v2

    :goto_2c
    if-ge v0, v1, :cond_3b

    aget v3, v2, v0

    .line 613
    .restart local v3    # "uid":I
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 614
    invoke-direct {p0, v3}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 612
    .end local v3    # "uid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 616
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 618
    :cond_3e
    return-void
.end method

.method private setUidPolicyUnchecked(IIZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .line 682
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->getUidPolicy(I)I

    move-result v1

    .line 684
    .local v1, "oldPolicy":I
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 688
    if-eqz p3, :cond_14

    .line 689
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 691
    :cond_14
    monitor-exit v0

    .line 692
    return-void

    .line 691
    .end local v1    # "oldPolicy":I
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private updateLocationModeChangeLocked()V
    .registers 3

    .line 468
    const-string v0, "LocationPolicy"

    const-string/jumbo v1, "updateLocationModeChangeLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method

.method private updateLocationRulesLocked()V
    .registers 8

    .line 505
    const-string v0, "LocationPolicy"

    const-string/jumbo v1, "updateLocationRulesLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :try_start_8
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationManager:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_65

    .line 513
    .local v0, "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 512
    nop

    .line 516
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 517
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 518
    .local v1, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationPolicy;

    .line 521
    .local v3, "policy":Landroid/location/LocationPolicy;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 522
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 523
    .local v5, "provider":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/location/LocationPolicy;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 524
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v5    # "provider":Ljava/lang/String;
    :cond_4b
    goto :goto_36

    .line 528
    :cond_4c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_63

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 530
    .local v4, "providers":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .end local v3    # "policy":Landroid/location/LocationPolicy;
    .end local v4    # "providers":[Ljava/lang/String;
    :cond_63
    goto :goto_23

    .line 533
    :cond_64
    return-void

    .line 510
    .end local v0    # "allProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_65
    move-exception v0

    .line 512
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method private updateNotificationsLocked()V
    .registers 5

    .line 402
    const-string v0, "LocationPolicy"

    const-string/jumbo v1, "updateNotificationsLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 406
    .local v0, "beforeNotifs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 410
    iget-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_1f

    .line 411
    const-string v1, "LocationPolicy:allowBackground"

    invoke-direct {p0, v1}, Lcom/android/server/LocationPolicyManagerService;->enqueueRestrictedNotification(Ljava/lang/String;)V

    .line 415
    :cond_1f
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mActiveNotifs:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 417
    invoke-direct {p0, v2}, Lcom/android/server/LocationPolicyManagerService;->cancelNotification(Ljava/lang/String;)V

    .line 419
    .end local v2    # "tag":Ljava/lang/String;
    :cond_3a
    goto :goto_23

    .line 420
    :cond_3b
    return-void
.end method

.method private updateRulesForDeviceIdleLocked()V
    .registers 6

    .line 490
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->getCurrentLocationRequestUids()Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    .local v0, "currentLrUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_33

    .line 492
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 493
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_33

    .line 494
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_30

    .line 495
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 496
    .local v3, "uid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 497
    invoke-direct {p0, v3}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 493
    .end local v3    # "uid":I
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 502
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_33
    return-void
.end method

.method private updateRulesForRestrictBackgroundLocked()V
    .registers 11

    .line 951
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 952
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 955
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 956
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v3, 0x2200

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 959
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 960
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 961
    .local v7, "app":Landroid/content/pm/ApplicationInfo;
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 962
    .local v8, "uid":I
    invoke-direct {p0, v8}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 963
    .end local v7    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "uid":I
    goto :goto_2f

    .line 964
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_47
    goto :goto_1f

    .line 965
    :cond_48
    return-void
.end method

.method private updateRulesForScreenLocked()V
    .registers 5

    .line 477
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 478
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 479
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_24

    .line 480
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 481
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 482
    invoke-direct {p0, v2}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 478
    .end local v2    # "uid":I
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 486
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method private updateRulesForUidLocked(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 977
    invoke-static {p1}, Lcom/android/server/LocationPolicyManagerService;->isUidValidForRules(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 979
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 980
    .local v0, "uidPolicy":I
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v2

    .line 983
    .local v2, "uidForeground":Z
    const/4 v3, 0x0

    .line 984
    .local v3, "uidRules":I
    if-nez v2, :cond_1b

    and-int/lit16 v4, v0, 0xff

    if-eqz v4, :cond_1b

    .line 986
    const/16 v3, 0xff

    .line 988
    :cond_1b
    if-nez v2, :cond_23

    iget-boolean v4, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v4, :cond_23

    .line 990
    const/16 v3, 0xff

    .line 992
    :cond_23
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 994
    const/4 v3, 0x0

    .line 999
    :cond_2c
    if-nez v3, :cond_34

    .line 1000
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_39

    .line 1002
    :cond_34
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    :goto_39
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1007
    return-void
.end method

.method private writePolicyLocked()V
    .registers 8

    .line 621
    const-string v0, "LocationPolicy"

    const-string/jumbo v1, "writePolicyLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v0, 0x0

    move-object v1, v0

    .line 625
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 627
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 628
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 629
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 631
    const-string/jumbo v4, "policy-list"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    const-string/jumbo v4, "version"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 633
    const-string/jumbo v3, "restrictBackground"

    iget-boolean v4, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 636
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationPolicy;

    .line 637
    .local v4, "policy":Landroid/location/LocationPolicy;
    const-string/jumbo v5, "location-policy"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    const-string/jumbo v5, "provider"

    iget-object v6, v4, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-interface {v2, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    const-string v5, "high-power"

    iget-boolean v6, v4, Landroid/location/LocationPolicy;->mHighCost:Z

    invoke-static {v2, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 640
    const-string/jumbo v5, "minIntervalMs"

    iget v6, v4, Landroid/location/LocationPolicy;->mMinIntervalMs:I

    invoke-static {v2, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 641
    const-string/jumbo v5, "location-policy"

    invoke-interface {v2, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    .end local v4    # "policy":Landroid/location/LocationPolicy;
    goto :goto_42

    .line 645
    :cond_72
    const/4 v3, 0x0

    .line 645
    .local v3, "i":I
    :goto_73
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_a5

    .line 646
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 647
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 650
    .local v5, "policy":I
    if-nez v5, :cond_8a

    .line 650
    .end local v4    # "uid":I
    .end local v5    # "policy":I
    goto :goto_a2

    .line 652
    .restart local v4    # "uid":I
    .restart local v5    # "policy":I
    :cond_8a
    const-string/jumbo v6, "uid-policy"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const-string/jumbo v6, "uid"

    invoke-static {v2, v6, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 654
    const-string/jumbo v6, "policy"

    invoke-static {v2, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 655
    const-string/jumbo v6, "uid-policy"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    .end local v4    # "uid":I
    .end local v5    # "policy":I
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 658
    .end local v3    # "i":I
    :cond_a5
    const-string/jumbo v3, "policy-list"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 661
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_b3} :catch_b4

    .line 666
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_bc

    .line 662
    :catch_b4
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_bc

    .line 664
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 667
    .end local v0    # "e":Ljava/io/IOException;
    :cond_bc
    :goto_bc
    return-void
.end method


# virtual methods
.method public checkUidLocationOp(II)Z
    .registers 14
    .param p1, "uid"    # I
    .param p2, "op"    # I

    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "granted":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 833
    .local v7, "now":J
    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v9

    .line 835
    :try_start_8
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 836
    const/4 v0, 0x1

    goto :goto_50

    .line 839
    :cond_10
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/UidStateHelper;->isUidForeground(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 840
    const/4 v0, 0x1

    .line 841
    invoke-direct {p0, p2}, Lcom/android/server/LocationPolicyManagerService;->getOpMinIntervalMsLocked(I)I

    move-result v1

    move v10, v1

    .line 842
    .local v10, "minInterval":I
    if-eqz v10, :cond_36

    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    move v2, p1

    move v3, p2

    move-wide v4, v7

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationOpHandler;->isFrequenctlyOp(IIJI)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 843
    const/4 v0, 0x0

    .line 844
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    move v2, p1

    move v3, p2

    move-wide v4, v7

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationOpHandler;->setFollowupAction(IIJI)V

    .line 846
    .end local v10    # "minInterval":I
    :cond_36
    goto :goto_50

    .line 849
    :cond_37
    const/4 v1, 0x0

    if-eqz p2, :cond_47

    .line 851
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 852
    .local v1, "rule":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    if-nez v1, :cond_46

    .line 853
    :cond_45
    const/4 v0, 0x1

    .line 855
    .end local v1    # "rule":I
    :cond_46
    goto :goto_50

    .line 857
    :cond_47
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 858
    .restart local v1    # "rule":I
    if-nez v1, :cond_50

    .line 859
    const/4 v0, 0x1

    .line 863
    .end local v1    # "rule":I
    :cond_50
    :goto_50
    if-eqz v0, :cond_58

    .line 864
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationOpHandler:Lcom/android/server/location/LocationOpHandler;

    invoke-virtual {v1, p1, p2, v7, v8}, Lcom/android/server/location/LocationOpHandler;->updateLastLocationOp(IIJ)V

    goto :goto_7b

    .line 866
    :cond_58
    const-string v1, "LocationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", op = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] is blocked by location policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :goto_7b
    monitor-exit v9

    .line 870
    return v0

    .line 868
    :catchall_7d
    move-exception v1

    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_8 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public checkUidNavigationScreenLock(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 744
    invoke-static {p1}, Lcom/android/server/power/PowerManagerServiceInjector;->getScreenWakeLockHoldByUid(I)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 912
    .local v0, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_1b

    aget-object v4, p3, v3

    .line 913
    .local v4, "arg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 912
    .end local v4    # "arg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 916
    :cond_1b
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 917
    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLocationMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPolicyFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRestrictBackground="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLocationPolicies size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLocationRules size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationRules:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUidPolicies size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    move v3, v2

    .line 924
    .local v3, "i":I
    :goto_d4
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_10b

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {p2, v4}, Landroid/location/LocationPolicyManager;->dumpPolicy(Ljava/io/PrintWriter;I)V

    .line 927
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 924
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    .line 929
    .end local v3    # "i":I
    :cond_10b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUidRules size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    move v3, v2

    .line 930
    .restart local v3    # "i":I
    :goto_127
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_15e

    .line 931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {p2, v4}, Landroid/location/LocationPolicyManager;->dumpRules(Ljava/io/PrintWriter;I)V

    .line 933
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 930
    add-int/lit8 v3, v3, 0x1

    goto :goto_127

    .line 935
    .end local v3    # "i":I
    :cond_15e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUidInNavigation size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    nop

    .line 936
    .local v2, "i":I
    :goto_17a
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1ae

    .line 937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", inNavigation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    add-int/lit8 v2, v2, 0x1

    goto :goto_17a

    .line 939
    .end local v2    # "i":I
    :cond_1ae
    monitor-exit v1
    :try_end_1af
    .catchall {:try_start_1e .. :try_end_1af} :catchall_1c1

    .line 941
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v1, :cond_1c0

    .line 942
    const-string v1, "LocationPolicy"

    const-string/jumbo v2, "miui gps strategy dump"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 945
    :cond_1c0
    return-void

    .line 939
    :catchall_1c1
    move-exception v2

    :try_start_1c2
    monitor-exit v1
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    throw v2
.end method

.method getFakeGpsFeatureOnState()Z
    .registers 4

    .line 1064
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_14

    .line 1066
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getOnState()Z

    move-result v0

    return v0

    .line 1068
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method getFakeGpsLocation()Landroid/location/Location;
    .registers 4

    .line 1081
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_14

    .line 1083
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 1085
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationPolicies()[Landroid/location/LocationPolicy;
    .registers 4

    .line 797
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_c
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v2, v2, [Landroid/location/LocationPolicy;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/LocationPolicy;

    monitor-exit v0

    return-object v1

    .line 801
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v1
.end method

.method getPhoneStationary()Z
    .registers 4

    .line 1072
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_14

    .line 1075
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->getPhoneStationary()Z

    move-result v0

    return v0

    .line 1077
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public getRestrictBackground()Z
    .registers 4

    .line 821
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 825
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getUidPolicy(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 696
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_c
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 700
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .registers 8
    .param p1, "policy"    # I

    .line 705
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 708
    .local v1, "uids":[I
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 709
    nop

    .local v0, "i":I
    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2e

    .line 710
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 711
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 712
    .local v4, "uidPolicy":I
    if-ne v4, p1, :cond_2b

    .line 713
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    .line 709
    .end local v3    # "uid":I
    .end local v4    # "uidPolicy":I
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 716
    .end local v0    # "i":I
    :cond_2e
    monitor-exit v2

    .line 717
    return-object v1

    .line 716
    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public isUidForeground(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 894
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 895
    const/4 v0, 0x1

    return v0

    .line 897
    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->isUidForegroundLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 899
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v1
.end method

.method registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;

    .line 1090
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    if-eqz v0, :cond_12

    .line 1092
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->registerFakeGpsStatus(Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;)V

    .line 1094
    :cond_12
    return-void
.end method

.method public registerListener(Landroid/location/ILocationPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .line 750
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 755
    return-void
.end method

.method public setFakeGpsFeatureOnState(Z)V
    .registers 5
    .param p1, "on"    # Z

    .line 1053
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setOnState(Z)V

    .line 1055
    return-void
.end method

.method public setLocationPolicies([Landroid/location/LocationPolicy;)V
    .registers 8
    .param p1, "policies"    # [Landroid/location/LocationPolicy;

    .line 767
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_37

    aget-object v3, p1, v2

    .line 772
    .local v3, "policy":Landroid/location/LocationPolicy;
    invoke-virtual {v3}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v4

    packed-switch v4, :pswitch_data_5e

    .line 779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/location/LocationPolicy;->getMatchRule()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :pswitch_33
    nop

    .line 771
    .end local v3    # "policy":Landroid/location/LocationPolicy;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 783
    :cond_37
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 785
    array-length v2, p1

    :goto_40
    if-ge v1, v2, :cond_4e

    aget-object v3, p1, v1

    .line 786
    .restart local v3    # "policy":Landroid/location/LocationPolicy;
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationPolicies:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/location/LocationPolicy;->mProvider:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .end local v3    # "policy":Landroid/location/LocationPolicy;
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 789
    :cond_4e
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateLocationRulesLocked()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 791
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 792
    monitor-exit v0

    .line 793
    return-void

    .line 792
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3a .. :try_end_5b} :catchall_59

    throw v1

    nop

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public setPhoneStationary(ZLandroid/location/Location;)V
    .registers 6
    .param p1, "stationary"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1059
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mFakeGpsStrategy:Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationPolicyManagerService$FakeGpsStrategy;->setPhoneStationay(ZLandroid/location/Location;)V

    .line 1061
    return-void
.end method

.method public setRestrictBackground(Z)V
    .registers 5
    .param p1, "restrictBackground"    # Z

    .line 806
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_c
    iput-boolean p1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    .line 810
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 811
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 812
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->writePolicyLocked()V

    .line 813
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_24

    .line 815
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    return-void

    .line 813
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public setUidNavigationStart(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 722
    const-string v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " navigation start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 725
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_31

    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 728
    :cond_31
    monitor-exit v0

    .line 729
    return-void

    .line 728
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_33

    throw v1
.end method

.method public setUidNavigationStop(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 733
    const-string v0, "LocationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " navigation stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidInNavigation:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 736
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-nez v1, :cond_30

    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 739
    :cond_30
    monitor-exit v0

    .line 740
    return-void

    .line 739
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v1
.end method

.method public setUidPolicy(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 671
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_LOCATION_POLICY"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 677
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationPolicyManagerService;->setUidPolicyUnchecked(IIZ)V

    .line 678
    return-void

    .line 674
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemRunning()V
    .registers 11

    .line 191
    const-string v0, "LocationPolicy"

    const-string/jumbo v1, "systemRunning()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_b
    invoke-static {}, Lcom/android/server/UidStateHelper;->get()Lcom/android/server/UidStateHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    .line 196
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateHelper:Lcom/android/server/UidStateHelper;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    invoke-virtual {v1, v2}, Lcom/android/server/UidStateHelper;->registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V

    .line 197
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 200
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->readPolicyLocked()V

    .line 202
    iget-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_32

    .line 203
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForRestrictBackgroundLocked()V

    .line 204
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateNotificationsLocked()V

    .line 207
    :cond_32
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenOn:Z

    .line 208
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->updateRulesForScreenLocked()V

    .line 210
    invoke-direct {p0}, Lcom/android/server/LocationPolicyManagerService;->isDeviceIdle()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z

    .line 211
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_e5

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v0, "screenFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.UID_REMOVED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 229
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.location.action.ALLOW_BACKGROUND"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 236
    .local v3, "allowFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.MANAGE_LOCATION_POLICY"

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v3, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 239
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.location.MODE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 240
    .local v4, "locationStateFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    :try_start_bc
    const-class v6, Landroid/os/PowerManager;

    const-string v7, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/LocationPolicyManagerService;->DEVICE_IDLE_CHANGE:Ljava/lang/String;

    .line 245
    new-instance v6, Landroid/content/IntentFilter;

    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->DEVICE_IDLE_CHANGE:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    .local v6, "deviceIdleFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/LocationPolicyManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/LocationPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v6, v5, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_dc
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_bc .. :try_end_dc} :catch_e2
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_dc} :catch_dd

    .line 246
    .end local v6    # "deviceIdleFilter":Landroid/content/IntentFilter;
    goto :goto_e3

    .line 248
    :catch_dd
    move-exception v5

    .line 249
    .local v5, "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    .end local v5    # "e":Ljava/lang/Throwable;
    goto :goto_e4

    .line 247
    :catch_e2
    move-exception v5

    .line 250
    :goto_e3
    nop

    .line 251
    :goto_e4
    return-void

    .line 211
    .end local v0    # "screenFilter":Landroid/content/IntentFilter;
    .end local v1    # "packageFilter":Landroid/content/IntentFilter;
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    .end local v3    # "allowFilter":Landroid/content/IntentFilter;
    .end local v4    # "locationStateFilter":Landroid/content/IntentFilter;
    :catchall_e5
    move-exception v1

    :try_start_e6
    monitor-exit v0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v1
.end method

.method public unregisterListener(Landroid/location/ILocationPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/ILocationPolicyListener;

    .line 760
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_POLICY_INTERNAL"

    const-string v2, "LocationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 763
    return-void
.end method
