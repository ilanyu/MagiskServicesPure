.class Lcom/android/server/appwidget/AppWidgetServiceImpl;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Lcom/android/server/WidgetBackupProvider;
.implements Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;,
        Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;
    }
.end annotation


# static fields
.field private static final CURRENT_VERSION:I = 0x1

.field private static DEBUG:Z = false

.field private static final ID_PROVIDER_CHANGED:I = 0x1

.field private static final ID_VIEWS_UPDATE:I = 0x0

.field private static final KEYGUARD_HOST_ID:I = 0x4b455947

.field private static final LOADED_PROFILE_ID:I = -0x1

.field private static final MIN_UPDATE_PERIOD:I

.field private static final NEW_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "com.android.keyguard"

.field private static final OLD_KEYGUARD_HOST_PACKAGE:Ljava/lang/String; = "android"

.field private static final STATE_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final TAG:Ljava/lang/String; = "AppWidgetServiceImpl"

.field private static final TAG_UNDEFINED:I = -0x1

.field private static final UNKNOWN_UID:I = -0x1

.field private static final UNKNOWN_USER_ID:I = -0xa

.field private static final UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field private final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            ">;"
        }
    .end annotation
.end field

.field private mIconUtilities:Lcom/android/server/policy/IconUtilities;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLoadedUserIds:Landroid/util/SparseIntArray;

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private mMaxWidgetBitmapMemory:I

.field private final mNextAppWidgetIds:Landroid/util/SparseIntArray;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSafeMode:Z

.field private mSaveStateHandler:Landroid/os/Handler;

.field private mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

.field private mUserManager:Landroid/os/UserManager;

.field private final mWidgetPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 2627
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    .line 154
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_8

    goto :goto_b

    :cond_8
    const v0, 0x1b7740

    :goto_b
    sput v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 249
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 171
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$1;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    .line 219
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    .line 221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    .line 242
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    .line 250
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 251
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 142
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/widget/RemoteViews;
    .param p5, "x5"    # J

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "x5"    # J

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "x2"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # J

    .line 142
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViews;

    .line 142
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/appwidget/AppWidgetServiceImpl;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveStateLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 2
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 142
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 2
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-static {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onPackageBroadcastReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V

    return-void
.end method

.method private addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 10
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .line 2249
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2250
    return v1

    .line 2253
    :cond_d
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2254
    return v1

    .line 2257
    :cond_16
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 2261
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 2262
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_7a

    .line 2266
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 2270
    .local v5, "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v5, :cond_46

    .line 2271
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v4, v6

    .line 2272
    .local v4, "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v5

    .line 2275
    .end local v4    # "restoredProviderId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :cond_46
    if-eqz v5, :cond_73

    .line 2276
    iget-boolean v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v4, :cond_78

    iget-boolean v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v4, :cond_78

    .line 2278
    iput-object v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2279
    iput-boolean v1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 2280
    iget-object v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v1, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2281
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_78

    .line 2282
    const-string v1, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider placeholder now reified: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 2286
    :cond_73
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2288
    :cond_78
    :goto_78
    const/4 v1, 0x1

    return v1

    .line 2291
    .end local v5    # "existing":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_7a
    return v1
.end method

.method private bindLoadedWidgetsLocked(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)V"
        }
    .end annotation

    .line 2790
    .local p1, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2791
    .local v0, "loadedWidgetCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3e

    .line 2792
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    .line 2793
    .local v2, "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2795
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2796
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v4, :cond_1d

    .line 2799
    goto :goto_3b

    .line 2802
    :cond_1d
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2803
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-nez v4, :cond_2a

    .line 2805
    goto :goto_3b

    .line 2808
    :cond_2a
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2810
    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2791
    .end local v2    # "loadedWidget":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2812
    .end local v1    # "i":I
    :cond_3e
    return-void
.end method

.method private bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Landroid/content/ServiceConnection;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3509
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    invoke-virtual {v2, p1, p2, v3, p3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 3513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3514
    nop

    .line 3515
    return-void

    .line 3513
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 5
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1848
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1849
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelBroadcasts() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_1a
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3b

    .line 1852
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1855
    .local v0, "token":J
    :try_start_29
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_36

    .line 1857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1858
    nop

    .line 1859
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    .end local v0    # "token":J
    goto :goto_3b

    .line 1857
    .restart local v0    # "token":J
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1861
    .end local v0    # "token":J
    :cond_3b
    :goto_3b
    return-void
.end method

.method private clearProvidersAndHostsTagsLocked()V
    .registers 6

    .line 2979
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2980
    .local v0, "providerCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    const/4 v3, -0x1

    if-ge v2, v0, :cond_18

    .line 2981
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2982
    .local v4, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2980
    .end local v4    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2985
    .end local v2    # "i":I
    :cond_18
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2986
    .local v2, "hostCount":I
    nop

    .local v1, "i":I
    :goto_1f
    if-ge v1, v2, :cond_2e

    .line 2987
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2988
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2986
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 2990
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method private static cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2
    .param p0, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 2165
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    .line 2166
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0

    .line 2168
    :cond_d
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 2175
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p0, :cond_f

    .line 2176
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0

    .line 2178
    :cond_f
    return-object p0
.end method

.method private static cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 2
    .param p0, "rv"    # Landroid/widget/RemoteViews;

    .line 2158
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p0, :cond_d

    .line 2159
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 2161
    :cond_d
    return-object p0
.end method

.method private computeMaximumWidgetBitmapMemory()V
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 276
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 277
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 278
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 281
    iget v3, v2, Landroid/graphics/Point;->x:I

    const/4 v4, 0x6

    mul-int/2addr v4, v3

    iget v3, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    .line 282
    return-void
.end method

.method private createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "providerPackage"    # Ljava/lang/String;
    .param p2, "providerUserId"    # I

    .line 568
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 572
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 573
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 572
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 574
    .local v2, "userContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 575
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 577
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v5}, Lcom/android/server/policy/IconUtilities;->getDisabledColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 578
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    invoke-virtual {v5, v4}, Lcom/android/server/policy/IconUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2e} :catch_34
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 578
    return-object v5

    .line 585
    .end local v2    # "userContext":Landroid/content/Context;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :catchall_32
    move-exception v2

    goto :goto_41

    .line 579
    :catch_34
    move-exception v2

    .line 580
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_35
    const-string v3, "AppWidgetServiceImpl"

    const-string v4, "Fail to get application icon"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .line 583
    const/4 v3, 0x0

    .line 585
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 583
    return-object v3

    .line 585
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "showBadge"    # Z
    .param p3, "onClickIntent"    # Landroid/app/PendingIntent;

    .line 591
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x1090138

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 593
    .local v0, "views":Landroid/widget/RemoteViews;
    if-eqz p1, :cond_16

    .line 594
    const v1, 0x10204e9

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 596
    :cond_16
    if-nez p2, :cond_1f

    .line 597
    const v1, 0x10204ea

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 599
    :cond_1f
    if-eqz p3, :cond_27

    .line 600
    const v1, 0x10204eb

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 602
    :cond_27
    return-object v0
.end method

.method private decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1911
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 1912
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1913
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1914
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1915
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1916
    .local v2, "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1919
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1920
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v3}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1921
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1924
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v2    # "ids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3e
    goto :goto_a

    .line 1925
    :cond_3f
    return-void
.end method

.method private deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1821
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1823
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1824
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1825
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1827
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1829
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1830
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v1, :cond_2e

    .line 1831
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1832
    iget-boolean v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_2e

    .line 1834
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1836
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1838
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1841
    invoke-direct {p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1845
    :cond_2e
    return-void
.end method

.method private deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1806
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1807
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1808
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1809
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1807
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1811
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1814
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 1815
    return-void
.end method

.method private deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 3
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2315
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 2316
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2319
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2320
    return-void
.end method

.method private deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .registers 8
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "userId"    # I

    .line 2296
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2297
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_3d

    .line 2298
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2299
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1d

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2300
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v3

    if-ne p2, v3, :cond_3a

    .line 2301
    :cond_1d
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2303
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 2305
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2306
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2307
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2308
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 2309
    iput-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2297
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2312
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1865
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$2;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;)V

    .line 1885
    .local v0, "conn":Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1887
    .local v1, "token":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const v4, 0x2000001

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1889
    invoke-virtual {v5}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v5

    .line 1887
    invoke-virtual {v3, p1, v0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 1891
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1892
    nop

    .line 1893
    return-void

    .line 1891
    :catchall_1e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 2429
    .local p0, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2430
    const-string v0, " user="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2431
    const-string v0, " package="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2432
    return-void
.end method

.method private static dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V
    .registers 4
    .param p0, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2421
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] hostId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2423
    const-string v0, "    callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2424
    const-string v0, "    widgets.size="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2425
    const-string v0, " zombie="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2426
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 798
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 799
    .local v0, "N":I
    const-string v1, "Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1d

    .line 801
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 804
    .end local v2    # "i":I
    :cond_1d
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 805
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    const-string v2, "Widgets:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    move v2, v1

    .restart local v2    # "i":I
    :goto_2e
    if-ge v2, v0, :cond_3e

    .line 808
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 811
    .end local v2    # "i":I
    :cond_3e
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 812
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    const-string v2, "Hosts:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    move v2, v1

    .restart local v2    # "i":I
    :goto_4f
    if-ge v2, v0, :cond_5f

    .line 815
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-static {v3, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpHost(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/io/PrintWriter;)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 818
    .end local v2    # "i":I
    :cond_5f
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 819
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    const-string v2, "Grants:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    nop

    .local v1, "i":I
    :goto_70
    if-ge v1, v0, :cond_80

    .line 822
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 823
    .local v2, "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v2, v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpGrant(Landroid/util/Pair;ILjava/io/PrintWriter;)V

    .line 821
    .end local v2    # "grant":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 825
    .end local v1    # "i":I
    :cond_80
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 761
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump proto for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " widgets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 764
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 765
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    if-ge v2, v1, :cond_3d

    .line 766
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    invoke-direct {p0, v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 768
    .end local v2    # "i":I
    :cond_3d
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 769
    return-void
.end method

.method private dumpProtoWidget(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 772
    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_b9

    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_a

    goto/16 :goto_b9

    .line 777
    :cond_a
    const-wide v0, 0x20b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 778
    .local v0, "token":J
    const-wide v2, 0x10800000001L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 779
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_2a

    .line 778
    move v4, v6

    goto :goto_2c

    .line 779
    :cond_2a
    nop

    .line 778
    move v4, v7

    :goto_2c
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 780
    const-wide v2, 0x10800000002L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v4, :cond_3b

    goto :goto_3c

    :cond_3b
    move v6, v7

    :goto_3c
    invoke-virtual {p1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 781
    const-wide v2, 0x10900000003L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 782
    const-wide v2, 0x10900000004L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 783
    const-wide v2, 0x10900000005L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 784
    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v2, :cond_b5

    .line 785
    const-wide v2, 0x10500000006L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMinWidth"

    .line 786
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 785
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 787
    const-wide v2, 0x10500000007L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMinHeight"

    .line 788
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 787
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 789
    const-wide v2, 0x10500000008L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxWidth"

    .line 790
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 789
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 791
    const-wide v2, 0x10500000009L

    iget-object v4, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxHeight"

    .line 792
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 791
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 794
    :cond_b5
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 795
    return-void

    .line 773
    .end local v0    # "token":J
    :cond_b9
    :goto_b9
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip dumping widget because host or provider is null: widget.host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " widget.provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method private static dumpProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/io/PrintWriter;)V
    .registers 5
    .param p0, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2398
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2399
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "] provider "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2401
    const-string v1, "    min=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2402
    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2403
    const-string v1, ")   minResize=("

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2404
    const-string/jumbo v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2405
    const-string v1, ") updatePeriodMillis="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2407
    const-string v1, " resizeMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2408
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2409
    const-string v1, " widgetCategory="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2411
    const-string v1, " autoAdvanceViewId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    const-string v1, " initialLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2415
    const-string v1, " initialKeyguardLayout=#"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2416
    iget v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2417
    const-string v1, " zombie="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2418
    return-void
.end method

.method private static dumpWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/io/PrintWriter;)V
    .registers 4
    .param p0, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p1, "index"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2435
    const-string v0, "  ["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "] id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2436
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2437
    const-string v0, "    host="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2439
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_2e

    .line 2440
    const-string v0, "    provider="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2442
    :cond_2e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v0, :cond_3e

    .line 2443
    const-string v0, "    host.callbacks="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2445
    :cond_3e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4c

    .line 2446
    const-string v0, "    views="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2448
    :cond_4c
    return-void
.end method

.method private ensureGroupStateLoadedLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 695
    return-void
.end method

.method private ensureGroupStateLoadedLocked(IZ)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "enforceUserUnlockingOrUnlocked"    # Z

    .line 698
    if-eqz p2, :cond_25

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_25

    .line 699
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be unlocked for widgets to be available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_25
    :goto_25
    if-eqz p2, :cond_4a

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_4a

    .line 703
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must have unlocked parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 711
    .local v0, "profileIds":[I
    const/4 v1, 0x0

    .line 712
    .local v1, "newMemberCount":I
    array-length v2, v0

    .line 713
    .local v2, "profileIdCount":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "newMemberCount":I
    :goto_55
    const/4 v5, -0x1

    if-ge v1, v2, :cond_6a

    .line 714
    aget v6, v0, v1

    .line 715
    .local v6, "profileId":I
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_65

    .line 716
    aput v5, v0, v1

    goto :goto_67

    .line 718
    :cond_65
    add-int/lit8 v4, v4, 0x1

    .line 713
    .end local v6    # "profileId":I
    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 722
    .end local v1    # "i":I
    :cond_6a
    if-gtz v4, :cond_6d

    .line 723
    return-void

    .line 726
    :cond_6d
    const/4 v1, 0x0

    .line 727
    .local v1, "newMemberIndex":I
    new-array v6, v4, [I

    .line 728
    .local v6, "newProfileIds":[I
    nop

    .local v3, "i":I
    :goto_71
    if-ge v3, v2, :cond_83

    .line 729
    aget v7, v0, v3

    .line 730
    .local v7, "profileId":I
    if-eq v7, v5, :cond_80

    .line 731
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    aput v7, v6, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    .line 728
    .end local v7    # "profileId":I
    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 737
    .end local v3    # "i":I
    :cond_83
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearProvidersAndHostsTagsLocked()V

    .line 739
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupWidgetProvidersLocked([I)V

    .line 740
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGroupStateLocked([I)V

    .line 741
    return-void
.end method

.method private findHostByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 7
    .param p1, "tag"    # I

    .line 2829
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 2830
    return-object v0

    .line 2832
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2833
    .local v1, "hostCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 2834
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2835
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    if-ne v4, p1, :cond_1a

    .line 2836
    return-object v3

    .line 2833
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2839
    .end local v2    # "i":I
    :cond_1d
    return-object v0
.end method

.method private findProviderByTag(I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "tag"    # I

    .line 2815
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 2816
    return-object v0

    .line 2818
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2819
    .local v1, "providerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1d

    .line 2820
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2821
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    if-ne v4, p1, :cond_1a

    .line 2822
    return-object v3

    .line 2819
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2825
    .end local v2    # "i":I
    :cond_1d
    return-object v0
.end method

.method private getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3480
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4, v2, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_18
    .catchall {:try_start_5 .. :try_end_11} :catchall_16

    .line 3482
    nop

    .line 3491
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3482
    return-object p1

    .line 3491
    :catchall_16
    move-exception v2

    goto :goto_39

    .line 3483
    :catch_18
    move-exception v3

    .line 3484
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_19
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    .line 3485
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3486
    .local v4, "packageNames":[Ljava/lang/String;
    if-eqz v4, :cond_33

    array-length v5, v4

    if-lez v5, :cond_33

    .line 3487
    aget-object v2, v4, v2
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_16

    .line 3491
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3487
    return-object v2

    .line 3491
    .end local v3    # "re":Landroid/os/RemoteException;
    .end local v4    # "packageNames":[Ljava/lang/String;
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3492
    nop

    .line 3493
    const/4 v2, 0x0

    return-object v2

    .line 3491
    :goto_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2658
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2660
    invoke-direct {p0, v0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2662
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2663
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v2

    .line 2666
    :cond_1e
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getSavedStateFile(I)Landroid/util/AtomicFile;
    .registers 5
    .param p0, "userId"    # I

    .line 3261
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 3262
    .local v0, "dir":Ljava/io/File;
    invoke-static {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 3263
    .local v1, "settingsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    if-nez p0, :cond_23

    .line 3264
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    .line 3265
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3268
    :cond_19
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/appwidgets.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3271
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3273
    .end local v2    # "oldFile":Ljava/io/File;
    :cond_23
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v2
.end method

.method private static getStateFile(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 3257
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "appwidgets.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2638
    const/4 v0, 0x0

    .line 2640
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2642
    .local v1, "identity":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_13
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    move-object v0, v3

    goto :goto_14

    .line 2646
    :catchall_e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2643
    :catch_13
    move-exception v3

    .line 2646
    :goto_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2647
    nop

    .line 2649
    if-eqz v0, :cond_24

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1f

    goto :goto_24

    .line 2653
    :cond_1f
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    return v3

    .line 2650
    :cond_24
    :goto_24
    const/4 v3, -0x1

    return v3
.end method

.method private static getWidgetIds(Ljava/util/ArrayList;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;)[I"
        }
    .end annotation

    .line 2389
    .local p0, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2390
    .local v0, "instancesSize":I
    new-array v1, v0, [I

    .line 2391
    .local v1, "appWidgetIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_16

    .line 2392
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    aput v3, v1, v2

    .line 2391
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2394
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method private handleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;IIJ)V
    .registers 15
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "viewId"    # I
    .param p5, "requestId"    # J

    .line 1988
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V

    .line 1989
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1994
    goto :goto_8

    .line 1990
    :catch_6
    move-exception v0

    .line 1993
    .local v0, "re":Landroid/os/RemoteException;
    const/4 p2, 0x0

    .line 1998
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_8
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1999
    if-nez p2, :cond_5c

    .line 2000
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2002
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2003
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2004
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 2005
    new-instance v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;

    invoke-direct {v4, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$3;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    .line 2024
    .local v4, "connection":Landroid/content/ServiceConnection;
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2025
    .local v5, "userId":I
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent$FilterComparison;

    invoke-virtual {v6}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2028
    .local v6, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/os/UserHandle;)V

    .line 2030
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    .end local v4    # "connection":Landroid/content/ServiceConnection;
    .end local v5    # "userId":I
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_59
    goto :goto_1a

    .line 2032
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :catchall_5a
    move-exception v1

    goto :goto_5e

    :cond_5c
    monitor-exit v0

    .line 2033
    return-void

    .line 2032
    :goto_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_e .. :try_end_5f} :catchall_5a

    throw v1
.end method

.method private handleNotifyProviderChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;J)V
    .registers 12
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p5, "requestId"    # J

    .line 2097
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 2098
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2104
    goto :goto_26

    .line 2099
    :catch_6
    move-exception v0

    .line 2100
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2101
    :try_start_a
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2102
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2103
    monitor-exit v1

    .line 2105
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_26
    return-void

    .line 2103
    .restart local v0    # "re":Landroid/os/RemoteException;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v2
.end method

.method private handleNotifyProvidersChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;)V
    .registers 8
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2144
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->providersChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 2150
    goto :goto_24

    .line 2145
    :catch_4
    move-exception v0

    .line 2146
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2147
    :try_start_8
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2148
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2149
    monitor-exit v1

    .line 2151
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_24
    return-void

    .line 2149
    .restart local v0    # "re":Landroid/os/RemoteException;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private handleNotifyUpdateAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/internal/appwidget/IAppWidgetHost;ILandroid/widget/RemoteViews;J)V
    .registers 12
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;
    .param p5, "requestId"    # J

    .line 2060
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2061
    iput-wide p5, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2067
    goto :goto_26

    .line 2062
    :catch_6
    move-exception v0

    .line 2063
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2064
    :try_start_a
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget host dead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2065
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 2066
    monitor-exit v1

    .line 2068
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_26
    return-void

    .line 2066
    .restart local v0    # "re":Landroid/os/RemoteException;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v2
.end method

.method private incrementAndGetAppWidgetIdLocked(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 1772
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1773
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1774
    return v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    .registers 5
    .param p1, "appWidgetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;)V"
        }
    .end annotation

    .line 1899
    .local p2, "serviceId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1900
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .local v0, "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_1b

    .line 1902
    .end local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1903
    .restart local v0    # "appWidgetIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    :goto_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1906
    return-void
.end method

.method private static isLocalBinder()Z
    .registers 2

    .line 2154
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isProfileWithLockedParent(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 3569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3571
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3572
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3573
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3574
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2d

    .line 3575
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isUserRunningAndUnlocked(I)Z

    move-result v4
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_33

    if-nez v4, :cond_2d

    .line 3576
    const/4 v4, 0x1

    .line 3580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3576
    return v4

    .line 3580
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3581
    nop

    .line 3582
    const/4 v2, 0x0

    return v2

    .line 3580
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isProfileWithUnlockedParent(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 3586
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3587
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3588
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3589
    .local v1, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_24

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 3590
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3591
    const/4 v2, 0x1

    return v2

    .line 3594
    .end local v1    # "parentInfo":Landroid/content/pm/UserInfo;
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method private isUserRunningAndUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 744
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method private loadGroupStateLocked([I)V
    .registers 13
    .param p1, "profileIds"    # [I

    .line 2746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    .local v0, "loadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    const/4 v1, 0x0

    .line 2750
    .local v1, "version":I
    array-length v2, p1

    .line 2751
    .local v2, "profileIdCount":I
    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "version":I
    :goto_a
    if-ge v1, v2, :cond_46

    .line 2752
    aget v5, p1, v1

    .line 2755
    .local v5, "profileId":I
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v6

    .line 2756
    .local v6, "file":Landroid/util/AtomicFile;
    :try_start_12
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_2c

    .local v7, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 2757
    :try_start_17
    invoke-direct {p0, v7, v5, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I

    move-result v9
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1b} :catch_24
    .catchall {:try_start_17 .. :try_end_1b} :catchall_22

    move v4, v9

    .line 2758
    if-eqz v7, :cond_21

    :try_start_1e
    invoke-static {v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_2c

    .line 2760
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_21
    goto :goto_43

    .line 2758
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_22
    move-exception v9

    goto :goto_26

    .line 2756
    :catch_24
    move-exception v8

    :try_start_25
    throw v8
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 2758
    :goto_26
    if-eqz v7, :cond_2b

    :try_start_28
    invoke-static {v8, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2b
    throw v9
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2c

    .end local v7    # "stream":Ljava/io/FileInputStream;
    :catch_2c
    move-exception v7

    .line 2759
    .local v7, "e":Ljava/io/IOException;
    const-string v8, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to read state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    .end local v5    # "profileId":I
    .end local v6    # "file":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2763
    .end local v1    # "i":I
    :cond_46
    if-ltz v4, :cond_5e

    .line 2765
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->bindLoadedWidgetsLocked(Ljava/util/List;)V

    .line 2768
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->performUpgradeLocked(I)V

    .line 2771
    nop

    .local v3, "i":I
    :goto_4f
    move v1, v3

    .end local v3    # "i":I
    .restart local v1    # "i":I
    if-ge v1, v2, :cond_86

    .line 2772
    aget v3, p1, v1

    .line 2773
    .local v3, "profileId":I
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-static {v5, v6, v3}, Lcom/android/server/appwidget/AppWidgetServiceImplInjector;->updateWidgetPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V

    .line 2771
    .end local v3    # "profileId":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    goto :goto_4f

    .line 2779
    .end local v3    # "i":I
    :cond_5e
    const-string v1, "AppWidgetServiceImpl"

    const-string v5, "Failed to read state, clearing widgets and hosts."

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->clearWidgetsLocked()V

    .line 2781
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2782
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2783
    .local v1, "N":I
    nop

    .restart local v3    # "i":I
    :goto_74
    if-ge v3, v1, :cond_86

    .line 2784
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2783
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 2787
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_86
    return-void
.end method

.method private loadGroupWidgetProvidersLocked([I)V
    .registers 10
    .param p1, "profileIds"    # [I

    .line 2225
    const/4 v0, 0x0

    .line 2226
    .local v0, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2228
    .local v1, "intent":Landroid/content/Intent;
    array-length v2, p1

    .line 2229
    .local v2, "profileCount":I
    const/4 v3, 0x0

    move-object v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "allReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_c
    if-ge v0, v2, :cond_2a

    .line 2230
    aget v5, p1, v0

    .line 2232
    .local v5, "profileId":I
    invoke-direct {p0, v1, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 2233
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_27

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_27

    .line 2234
    if-nez v4, :cond_24

    .line 2235
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    .line 2237
    :cond_24
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2229
    .end local v5    # "profileId":I
    .end local v6    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2241
    .end local v0    # "i":I
    :cond_2a
    if-nez v4, :cond_2e

    move v0, v3

    goto :goto_32

    :cond_2e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2242
    .local v0, "N":I
    :goto_32
    nop

    .local v3, "i":I
    :goto_33
    if-ge v3, v0, :cond_41

    .line 2243
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2244
    .local v5, "receiver":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 2242
    .end local v5    # "receiver":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 2246
    .end local v3    # "i":I
    :cond_41
    return-void
.end method

.method private lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 6
    .param p1, "hostId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 2205
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2206
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2207
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2208
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2209
    return-object v2

    .line 2206
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2212
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .registers 5
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1793
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v0

    .line 1794
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v0, :cond_7

    .line 1795
    return-object v0

    .line 1798
    :cond_7
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v0, v1

    .line 1799
    iput-object p1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 1800
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    return-object v0
.end method

.method private lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 6
    .param p1, "id"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2194
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2195
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2196
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2197
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2198
    return-object v2

    .line 2195
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2201
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 8
    .param p1, "appWidgetId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2182
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2183
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 2184
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2185
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v3, p1, :cond_1e

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 2186
    invoke-virtual {v3, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2187
    return-object v2

    .line 2183
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2190
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 20
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "targetWidget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 610
    move-object/from16 v3, p2

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 611
    .local v4, "widgetCount":I
    if-nez v4, :cond_f

    .line 612
    return-void

    .line 614
    :cond_f
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 615
    .local v5, "providerPackage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    .line 616
    .local v6, "providerUserId":I
    invoke-direct {v1, v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 617
    .local v7, "iconBitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_22

    .line 618
    return-void

    .line 622
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 624
    .local v8, "identity":J
    :try_start_26
    iget-boolean v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    if-eqz v0, :cond_57

    .line 625
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 626
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    .line 627
    .local v10, "showBadge":Z
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 629
    .local v11, "suspendingPackage":Ljava/lang/String;
    const-string v12, "android"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 630
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    const/4 v13, 0x1

    invoke-virtual {v12, v6, v13}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v12

    .local v12, "onClickIntent":Landroid/content/Intent;
    goto :goto_55

    .line 633
    .end local v12    # "onClickIntent":Landroid/content/Intent;
    :cond_4a
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v12, v5, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendedDialogMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, "dialogMessage":Ljava/lang/String;
    invoke-static {v5, v11, v12, v6}, Lcom/android/internal/app/SuspendedAppActivity;->createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v11    # "suspendingPackage":Ljava/lang/String;
    .end local v12    # "dialogMessage":Ljava/lang/String;
    move-object v12, v13

    .local v12, "onClickIntent":Landroid/content/Intent;
    :goto_55
    move-object v0, v12

    .line 638
    .end local v12    # "onClickIntent":Landroid/content/Intent;
    .local v0, "onClickIntent":Landroid/content/Intent;
    goto :goto_70

    .end local v0    # "onClickIntent":Landroid/content/Intent;
    .end local v10    # "showBadge":Z
    :cond_57
    iget-boolean v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-eqz v0, :cond_61

    .line 639
    const/4 v10, 0x1

    .line 640
    .restart local v10    # "showBadge":Z
    invoke-static {v6}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "onClickIntent":Landroid/content/Intent;
    goto :goto_70

    .line 643
    .end local v0    # "onClickIntent":Landroid/content/Intent;
    .end local v10    # "showBadge":Z
    :cond_61
    const/4 v10, 0x1

    .line 644
    .restart local v10    # "showBadge":Z
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11, v6}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0

    .line 646
    .restart local v0    # "onClickIntent":Landroid/content/Intent;
    if-eqz v0, :cond_70

    .line 647
    const/high16 v11, 0x10800000

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 651
    :cond_70
    :goto_70
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_71
    if-ge v11, v4, :cond_a4

    .line 652
    iget-object v12, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 653
    .local v12, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v3, :cond_80

    if-eq v3, v12, :cond_80

    .end local v12    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    goto :goto_9f

    .line 654
    .restart local v12    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_80
    const/4 v13, 0x0

    .line 655
    .local v13, "intent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_8e

    .line 656
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget v15, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/high16 v2, 0x8000000

    invoke-static {v14, v15, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object v13, v2

    .line 659
    :cond_8e
    invoke-direct {v1, v7, v10, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->createMaskedWidgetRemoteViews(Landroid/graphics/Bitmap;ZLandroid/app/PendingIntent;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 660
    .local v2, "views":Landroid/widget/RemoteViews;
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->replaceWithMaskedViewsLocked(Landroid/widget/RemoteViews;)Z
    invoke-static {v12, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$900(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)Z

    move-result v14

    if-eqz v14, :cond_9f

    .line 661
    invoke-virtual {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-direct {v1, v12, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    :try_end_9f
    .catchall {:try_start_26 .. :try_end_9f} :catchall_aa

    .line 651
    .end local v2    # "views":Landroid/widget/RemoteViews;
    .end local v12    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "intent":Landroid/app/PendingIntent;
    :cond_9f
    :goto_9f
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    goto :goto_71

    .line 665
    .end local v11    # "j":I
    :cond_a4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    nop

    .line 665
    move v2, v10

    .line 667
    .end local v10    # "showBadge":Z
    .local v2, "showBadge":Z
    return-void

    .line 665
    .end local v0    # "onClickIntent":Landroid/content/Intent;
    .end local v2    # "showBadge":Z
    :catchall_aa
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private onConfigurationChanged()V
    .registers 13

    .line 334
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 335
    const-string v0, "AppWidgetServiceImpl"

    const-string/jumbo v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 339
    .local v0, "revised":Ljava/util/Locale;
    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 340
    :cond_1e
    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLocale:Ljava/util/Locale;

    .line 342
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    const/4 v2, 0x0

    .line 348
    .local v2, "changedGroups":Landroid/util/SparseIntArray;
    :try_start_24
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    .local v3, "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 351
    .local v4, "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 352
    .local v5, "N":I
    add-int/lit8 v6, v5, -0x1

    .line 352
    .local v6, "i":I
    :goto_36
    if-ltz v6, :cond_86

    .line 353
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 355
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    .line 356
    .local v8, "userId":I
    iget-object v9, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9, v8}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 357
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 358
    goto :goto_83

    .line 360
    :cond_51
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 362
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_83

    .line 363
    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 364
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 365
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v10

    .line 363
    invoke-direct {p0, v9, v10, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v9

    .line 367
    .local v9, "changed":Z
    if-eqz v9, :cond_83

    .line 368
    if-nez v2, :cond_76

    .line 369
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    move-object v2, v10

    .line 371
    :cond_76
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 372
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v11

    .line 371
    invoke-virtual {v10, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v10

    .line 373
    .local v10, "groupId":I
    invoke-virtual {v2, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8    # "userId":I
    .end local v9    # "changed":Z
    .end local v10    # "groupId":I
    :cond_83
    :goto_83
    add-int/lit8 v6, v6, -0x1

    goto :goto_36

    .line 378
    .end local v6    # "i":I
    :cond_86
    if-eqz v2, :cond_99

    .line 379
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 380
    .local v6, "groupCount":I
    const/4 v7, 0x0

    .line 380
    .local v7, "i":I
    :goto_8d
    if-ge v7, v6, :cond_99

    .line 381
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 382
    .local v8, "groupId":I
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 380
    .end local v8    # "groupId":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    .line 385
    .end local v2    # "changedGroups":Landroid/util/SparseIntArray;
    .end local v3    # "installedProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v4    # "removedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    .end local v5    # "N":I
    .end local v6    # "groupCount":I
    .end local v7    # "i":I
    :cond_99
    monitor-exit v1

    .line 387
    :cond_9a
    return-void

    .line 385
    :catchall_9b
    move-exception v2

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_24 .. :try_end_9d} :catchall_9b

    throw v2
.end method

.method private onPackageBroadcastReceived(Landroid/content/Intent;I)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 392
    .local v1, "added":Z
    const/4 v2, 0x0

    .line 393
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 396
    .local v3, "componentsModified":Z
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x53ae571d

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_40

    const v5, -0x4fc097e4

    if-eq v4, v5, :cond_36

    const v5, -0x3bb3e592

    if-eq v4, v5, :cond_2c

    const v5, 0x4cef8b35    # 1.25589928E8f

    if-eq v4, v5, :cond_22

    goto :goto_4a

    :cond_22
    const-string v4, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    move v4, v6

    goto :goto_4b

    :cond_2c
    const-string v4, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    move v4, v7

    goto :goto_4b

    :cond_36
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x2

    goto :goto_4b

    :cond_40
    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    const/4 v4, 0x3

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v4, -0x1

    :goto_4b
    packed-switch v4, :pswitch_data_f8

    .line 409
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 410
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_65

    .line 411
    return-void

    .line 403
    .end local v4    # "uri":Landroid/net/Uri;
    :pswitch_55
    const/4 v1, 0x1

    .line 406
    :pswitch_56
    const-string v4, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "pkgList":[Ljava/lang/String;
    goto :goto_7d

    .line 399
    .end local v4    # "pkgList":[Ljava/lang/String;
    :pswitch_5d
    const-string v4, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 400
    .restart local v4    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 401
    goto :goto_7d

    .line 413
    .local v4, "uri":Landroid/net/Uri;
    :cond_65
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "pkgName":Ljava/lang/String;
    if-nez v5, :cond_6c

    .line 415
    return-void

    .line 417
    :cond_6c
    new-array v8, v6, [Ljava/lang/String;

    aput-object v5, v8, v7

    .line 418
    .local v8, "pkgList":[Ljava/lang/String;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 419
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 422
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "pkgName":Ljava/lang/String;
    move-object v4, v8

    .end local v8    # "pkgList":[Ljava/lang/String;
    .local v4, "pkgList":[Ljava/lang/String;
    :goto_7d
    if-eqz v4, :cond_f7

    array-length v5, v4

    if-nez v5, :cond_84

    goto/16 :goto_f7

    .line 426
    :cond_84
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 427
    :try_start_87
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 428
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v8

    if-eqz v8, :cond_96

    goto :goto_f2

    .line 431
    :cond_96
    invoke-direct {p0, p2, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 433
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 435
    .local v8, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_be

    if-eqz v2, :cond_a2

    goto :goto_be

    .line 456
    :cond_a2
    if-eqz v8, :cond_af

    const-string v9, "android.intent.extra.REPLACING"

    .line 457
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_ad

    goto :goto_af

    :cond_ad
    move v6, v7

    nop

    .line 459
    .local v6, "packageRemovedPermanently":Z
    :cond_af
    :goto_af
    if-eqz v6, :cond_e8

    .line 460
    array-length v9, v4

    :goto_b2
    if-ge v7, v9, :cond_e8

    aget-object v10, v4, v7

    .line 461
    .local v10, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v10, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v11

    or-int/2addr v3, v11

    .line 460
    .end local v10    # "pkgName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_b2

    .line 436
    .end local v6    # "packageRemovedPermanently":Z
    :cond_be
    :goto_be
    if-eqz v1, :cond_cb

    if-eqz v8, :cond_ca

    const-string v9, "android.intent.extra.REPLACING"

    .line 437
    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_cb

    :cond_ca
    goto :goto_cc

    :cond_cb
    move v6, v7

    .line 439
    .local v6, "newPackageAdded":Z
    :goto_cc
    array-length v9, v4

    :goto_cd
    if-ge v7, v9, :cond_e7

    aget-object v10, v4, v7

    .line 441
    .restart local v10    # "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-direct {p0, v10, p2, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v11

    or-int/2addr v3, v11

    .line 446
    if-eqz v6, :cond_e4

    if-nez p2, :cond_e4

    .line 447
    invoke-direct {p0, v10, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v11

    .line 448
    .local v11, "uid":I
    if-ltz v11, :cond_e4

    .line 449
    invoke-direct {p0, v10, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->resolveHostUidLocked(Ljava/lang/String;I)V

    .line 439
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "uid":I
    :cond_e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_cd

    .line 453
    .end local v6    # "newPackageAdded":Z
    :cond_e7
    nop

    .line 467
    :cond_e8
    if-eqz v3, :cond_f0

    .line 468
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 471
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 473
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_f0
    monitor-exit v5

    .line 474
    return-void

    .line 429
    :cond_f2
    :goto_f2
    monitor-exit v5

    return-void

    .line 473
    :catchall_f4
    move-exception v6

    monitor-exit v5
    :try_end_f6
    .catchall {:try_start_87 .. :try_end_f6} :catchall_f4

    throw v6

    .line 423
    :cond_f7
    :goto_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5d
        :pswitch_55
        :pswitch_56
    .end packed-switch
.end method

.method private onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 9
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2886
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 2888
    :cond_5
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 2889
    .local v0, "userId":I
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2890
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2891
    .local v2, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_20

    .line 2892
    return-void

    .line 2896
    :cond_20
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2897
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v3, :cond_52

    .line 2898
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2899
    .local v5, "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v6, :cond_36

    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    goto :goto_4f

    .line 2900
    .restart local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_36
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    if-ne v6, v0, :cond_4f

    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2901
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 2902
    return-void

    .line 2897
    .end local v5    # "w":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_4f
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2905
    .end local v4    # "i":I
    :cond_52
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2906
    return-void
.end method

.method private onWidgetsClearedLocked()V
    .registers 2

    .line 2918
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2919
    return-void
.end method

.method private parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 22
    .param p1, "providerId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "metadataKey"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2540
    move-object/from16 v4, p3

    const/4 v5, 0x0

    :try_start_9
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2541
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_13} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_13} :catch_187

    move-object v6, v0

    .line 2540
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    nop

    .line 2542
    if-nez v6, :cond_48

    .line 2543
    :try_start_17
    const-string v0, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " meta-data for AppWidget provider \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_3a} :catch_44
    .catchall {:try_start_17 .. :try_end_3a} :catchall_41

    .line 2545
    nop

    .line 2627
    if-eqz v6, :cond_40

    :try_start_3d
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3d .. :try_end_40} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_40} :catch_187

    .line 2545
    :cond_40
    return-object v5

    .line 2627
    :catchall_41
    move-exception v0

    goto/16 :goto_181

    .line 2540
    :catch_44
    move-exception v0

    move-object v5, v0

    goto/16 :goto_180

    .line 2548
    :cond_48
    :try_start_48
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_4c
    move-object v7, v0

    .line 2551
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .local v7, "attrs":Landroid/util/AttributeSet;
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v0, v10, :cond_5a

    if-eq v8, v9, :cond_5a

    .line 2548
    .end local v8    # "type":I
    move-object v0, v7

    goto :goto_4c

    .line 2556
    .restart local v8    # "type":I
    :cond_5a
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 2557
    .local v11, "nodeName":Ljava/lang/String;
    const-string v0, "appwidget-provider"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_65} :catch_44
    .catchall {:try_start_48 .. :try_end_65} :catchall_17d

    if-nez v0, :cond_90

    .line 2558
    :try_start_67
    const-string v0, "AppWidgetServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Meta-data does not start with appwidget-provider tag for AppWidget provider "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_89} :catch_44
    .catchall {:try_start_67 .. :try_end_89} :catchall_41

    .line 2561
    nop

    .line 2627
    if-eqz v6, :cond_8f

    :try_start_8c
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c .. :try_end_8f} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_8f} :catch_187

    .line 2561
    :cond_8f
    return-object v5

    .line 2564
    :cond_90
    :try_start_90
    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object v12, v0

    .line 2565
    .local v12, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    iput-object v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2566
    iput-object v3, v12, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 2569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_a0} :catch_44
    .catchall {:try_start_90 .. :try_end_a0} :catchall_17d

    .line 2571
    .local v13, "identity":J
    :try_start_a0
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2572
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v15, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 2573
    .local v15, "userId":I
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v15}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 2575
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16
    :try_end_b7
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_178

    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "userId":I
    move-object/from16 v0, v16

    .line 2577
    .local v0, "resources":Landroid/content/res/Resources;
    :try_start_b9
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2578
    nop

    .line 2577
    nop

    .line 2580
    sget-object v5, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    invoke-virtual {v0, v7, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2586
    .local v5, "sa":Landroid/content/res/TypedArray;
    nop

    .line 2587
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    .line 2588
    .local v15, "value":Landroid/util/TypedValue;
    if-eqz v15, :cond_ce

    iget v9, v15, Landroid/util/TypedValue;->data:I

    goto :goto_cf

    :cond_ce
    const/4 v9, 0x0

    :goto_cf
    iput v9, v12, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 2589
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 2590
    .end local v15    # "value":Landroid/util/TypedValue;
    .local v9, "value":Landroid/util/TypedValue;
    if-eqz v9, :cond_da

    iget v15, v9, Landroid/util/TypedValue;->data:I

    goto :goto_db

    :cond_da
    const/4 v15, 0x0

    :goto_db
    iput v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 2591
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    move-object v9, v15

    .line 2593
    if-eqz v9, :cond_e9

    iget v15, v9, Landroid/util/TypedValue;->data:I

    goto :goto_eb

    :cond_e9
    iget v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    :goto_eb
    iput v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    .line 2594
    const/16 v15, 0x9

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    move-object v9, v15

    .line 2596
    if-eqz v9, :cond_f9

    iget v15, v9, Landroid/util/TypedValue;->data:I

    goto :goto_fb

    :cond_f9
    iget v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    :goto_fb
    iput v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    .line 2597
    const/4 v10, 0x2

    const/4 v15, 0x0

    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v12, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 2599
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v12, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 2601
    const/16 v10, 0xa

    invoke-virtual {v5, v10, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v12, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 2604
    const/4 v10, 0x4

    .line 2605
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2606
    .local v10, "className":Ljava/lang/String;
    if-eqz v10, :cond_12b

    .line 2607
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v17, v0

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .end local v0    # "resources":Landroid/content/res/Resources;
    .local v17, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v15, v12, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    goto :goto_12d

    .line 2610
    .end local v17    # "resources":Landroid/content/res/Resources;
    .restart local v0    # "resources":Landroid/content/res/Resources;
    :cond_12b
    move-object/from16 v17, v0

    .end local v0    # "resources":Landroid/content/res/Resources;
    .restart local v17    # "resources":Landroid/content/res/Resources;
    :goto_12d
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2611
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 2612
    const/4 v0, 0x5

    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 2614
    const/4 v0, 0x6

    const/4 v15, -0x1

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 2616
    const/4 v0, 0x7

    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 2619
    const/16 v0, 0xb

    const/4 v15, 0x1

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    .line 2622
    const/16 v0, 0xc

    const/4 v15, 0x0

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v12, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    .line 2625
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_170
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_170} :catch_44
    .catchall {:try_start_b9 .. :try_end_170} :catchall_17d

    .line 2626
    nop

    .line 2627
    if-eqz v6, :cond_177

    const/4 v15, 0x0

    :try_start_174
    invoke-static {v15, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_174 .. :try_end_177} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_174 .. :try_end_177} :catch_187

    .line 2626
    :cond_177
    return-object v12

    .line 2577
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .end local v9    # "value":Landroid/util/TypedValue;
    .end local v10    # "className":Ljava/lang/String;
    .end local v17    # "resources":Landroid/content/res/Resources;
    :catchall_178
    move-exception v0

    :try_start_179
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_17d
    .catch Ljava/lang/Throwable; {:try_start_179 .. :try_end_17d} :catch_44
    .catchall {:try_start_179 .. :try_end_17d} :catchall_17d

    .line 2627
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "type":I
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v12    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v13    # "identity":J
    :catchall_17d
    move-exception v0

    const/4 v5, 0x0

    goto :goto_181

    .line 2540
    :goto_180
    :try_start_180
    throw v5
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_41

    .line 2627
    :goto_181
    if-eqz v6, :cond_186

    :try_start_183
    invoke-static {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_186
    throw v0
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_187} :catch_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_183 .. :try_end_187} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_183 .. :try_end_187} :catch_187

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_187
    move-exception v0

    .line 2631
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XML parsing failed for AppWidget provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2633
    const/4 v5, 0x0

    return-object v5
.end method

.method private parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "providerId"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "oldProvider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2520
    const/4 v0, 0x0

    .line 2521
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p3, :cond_13

    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2522
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2524
    :cond_13
    if-nez v0, :cond_1d

    .line 2525
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "android.appwidget.provider"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2528
    :cond_1d
    if-nez v0, :cond_21

    .line 2529
    const/4 v1, 0x0

    return-object v1

    .line 2532
    :cond_21
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    .line 2533
    .local v1, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput-object p1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 2534
    iput-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2535
    return-object v1
.end method

.method private peekNextAppWidgetIdLocked(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 1785
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_a

    .line 1786
    const/4 v0, 0x1

    return v0

    .line 1788
    :cond_a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private performUpgradeLocked(I)V
    .registers 10
    .param p1, "fromVersion"    # I

    .line 3227
    const/4 v0, 0x1

    if-ge p1, v0, :cond_21

    .line 3228
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading widget database from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    :cond_21
    move v1, p1

    .line 3235
    .local v1, "version":I
    if-nez v1, :cond_4b

    .line 3236
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android"

    const v5, 0x4b455947    # 1.2933447E7f

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 3239
    .local v2, "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 3240
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_4a

    .line 3241
    const-string v4, "com.android.keyguard"

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 3243
    .local v4, "uid":I
    if-ltz v4, :cond_4a

    .line 3244
    new-instance v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    const-string v7, "com.android.keyguard"

    invoke-direct {v6, v4, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3248
    .end local v4    # "uid":I
    :cond_4a
    const/4 v1, 0x1

    .line 3251
    .end local v2    # "oldHostId":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_4b
    if-ne v1, v0, :cond_4e

    .line 3254
    return-void

    .line 3252
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to upgrade widget database"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 5
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2216
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_2d

    .line 2217
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 2218
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pruning host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    :cond_28
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2222
    :cond_2d
    return-void
.end method

.method private queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 2670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2672
    .local v0, "identity":J
    const/16 v2, 0x80

    .line 2676
    .local v2, "flags":I
    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    .line 2681
    :try_start_9
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithUnlockedParent(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2682
    const/high16 v3, 0xc0000

    or-int/2addr v2, v3

    .line 2688
    :cond_12
    or-int/lit16 v2, v2, 0x400

    .line 2690
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 2691
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 2690
    invoke-interface {v3, p1, v4, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 2692
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_28} :catch_2e
    .catchall {:try_start_9 .. :try_end_28} :catchall_2c

    .line 2696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2690
    return-object v3

    .line 2696
    .end local v2    # "flags":I
    :catchall_2c
    move-exception v2

    goto :goto_37

    .line 2693
    :catch_2e
    move-exception v2

    .line 2694
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_2c

    .line 2696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2694
    return-object v3

    .line 2696
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private readProfileStateFromFileLocked(Ljava/io/FileInputStream;ILjava/util/List;)I
    .registers 31
    .param p1, "stream"    # Ljava/io/FileInputStream;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;",
            ">;)I"
        }
    .end annotation

    .line 3057
    .local p3, "outLoadedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 3057
    const/4 v3, -0x1

    move v4, v3

    .line 3059
    .local v4, "version":I
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v5, v0

    .line 3060
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_11} :catch_27a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_11} :catch_27a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_11} :catch_27a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_27a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_11} :catch_27a

    move-object/from16 v6, p1

    :try_start_13
    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_16} :catch_278
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_278
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_16} :catch_278
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_278
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_16} :catch_278

    .line 3062
    const/4 v0, -0x1

    .line 3063
    .local v0, "legacyProviderIndex":I
    move v7, v4

    move v4, v0

    move v0, v3

    .line 3063
    .local v0, "legacyHostIndex":I
    .local v4, "legacyProviderIndex":I
    .local v7, "version":I
    :goto_1a
    move v8, v0

    .line 3066
    .end local v0    # "legacyHostIndex":I
    .local v8, "legacyHostIndex":I
    :try_start_1b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v9, v0

    .line 3067
    .local v9, "type":I
    const/4 v0, 0x2

    if-ne v9, v0, :cond_f7

    .line 3068
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 3069
    .local v11, "tag":Ljava/lang/String;
    const-string v0, "gs"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_47

    .line 3070
    const-string/jumbo v0, "version"

    invoke-interface {v5, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_38} :catch_274
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_38} :catch_274
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_38} :catch_274
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_38} :catch_274
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_38} :catch_274

    move-object v12, v0

    .line 3072
    .local v12, "attributeValue":Ljava/lang/String;
    :try_start_39
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_3d} :catch_274
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3d} :catch_274
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3d} :catch_274
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39 .. :try_end_3d} :catch_274

    .line 3075
    .end local v7    # "version":I
    .local v0, "version":I
    goto :goto_41

    .line 3073
    .end local v0    # "version":I
    .restart local v7    # "version":I
    :catch_3e
    move-exception v0

    move-object v13, v0

    .line 3074
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .line 3076
    .end local v7    # "version":I
    .end local v12    # "attributeValue":Ljava/lang/String;
    .local v0, "version":I
    :goto_41
    nop

    .line 3213
    move-object/from16 v1, p3

    move v7, v0

    goto/16 :goto_267

    .line 3076
    .end local v0    # "version":I
    .restart local v7    # "version":I
    :cond_47
    :try_start_47
    const-string/jumbo v0, "p"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 3077
    add-int/lit8 v4, v4, 0x1

    .line 3080
    const-string/jumbo v0, "pkg"

    invoke-interface {v5, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3081
    .local v0, "pkg":Ljava/lang/String;
    const-string v14, "cl"

    invoke-interface {v5, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3083
    .local v14, "cl":Ljava/lang/String;
    invoke-direct {v1, v0, v14, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getCanonicalPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    .line 3084
    if-nez v0, :cond_68

    .line 3085
    goto/16 :goto_f7

    .line 3088
    :cond_68
    invoke-direct {v1, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v15

    .line 3089
    .local v15, "uid":I
    if-gez v15, :cond_70

    .line 3090
    goto/16 :goto_f7

    .line 3093
    :cond_70
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-direct {v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    move-object/from16 v17, v16

    .line 3096
    .local v17, "providerInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v13, v17

    if-nez v13, :cond_81

    .line 3097
    .end local v17    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "providerInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_f7

    .line 3100
    :cond_81
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-direct {v10, v15, v3, v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3101
    .local v10, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v1, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 3103
    .local v16, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_b5

    iget-boolean v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v12, :cond_b5

    .line 3105
    new-instance v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v12}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    .line 3106
    .end local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v12, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    move-object/from16 v18, v0

    new-instance v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 3106
    .end local v0    # "pkg":Ljava/lang/String;
    .local v18, "pkg":Ljava/lang/String;
    invoke-direct {v0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3107
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v19, v3

    iget-object v3, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3107
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .local v19, "componentName":Landroid/content/ComponentName;
    iput-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 3108
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v13, v0, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 3109
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 3110
    iput-object v10, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3111
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 3114
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .restart local v0    # "pkg":Ljava/lang/String;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_b5
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .line 3114
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v18    # "pkg":Ljava/lang/String;
    .restart local v19    # "componentName":Landroid/content/ComponentName;
    move-object/from16 v12, v16

    .line 3114
    .end local v16    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :goto_bb
    const-string/jumbo v0, "tag"

    const/4 v3, 0x0

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3115
    .local v0, "tagAttribute":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 3116
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_d1

    :cond_d0
    move v3, v4

    .line 3117
    .local v3, "providerTag":I
    :goto_d1
    iput v3, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 3119
    move-object/from16 v20, v0

    const-string v0, "info_tag"

    .line 3119
    .end local v0    # "tagAttribute":Ljava/lang/String;
    .local v20, "tagAttribute":Ljava/lang/String;
    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3119
    .end local v3    # "providerTag":I
    .local v21, "providerTag":I
    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 3120
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f6

    iget-boolean v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-nez v0, :cond_f6

    .line 3121
    iget-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-direct {v1, v10, v13, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 3123
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_f6

    .line 3124
    iput-object v0, v12, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3127
    .end local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v10    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v12    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "providerInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "cl":Ljava/lang/String;
    .end local v15    # "uid":I
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .end local v20    # "tagAttribute":Ljava/lang/String;
    .end local v21    # "providerTag":I
    :cond_f6
    nop

    .line 3213
    .end local v8    # "legacyHostIndex":I
    .end local v11    # "tag":Ljava/lang/String;
    .local v0, "legacyHostIndex":I
    :cond_f7
    :goto_f7
    move-object/from16 v1, p3

    goto/16 :goto_267

    .line 3127
    .end local v0    # "legacyHostIndex":I
    .restart local v8    # "legacyHostIndex":I
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_fb
    const-string v0, "h"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 3128
    add-int/lit8 v8, v8, 0x1

    .line 3129
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3132
    .local v0, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const-string/jumbo v10, "pkg"

    invoke-interface {v5, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 3134
    .local v3, "pkg":Ljava/lang/String;
    invoke-direct {v1, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v10

    .line 3135
    .local v10, "uid":I
    if-gez v10, :cond_11c

    .line 3136
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    .line 3139
    :cond_11c
    iget-boolean v12, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v12, :cond_124

    iget-boolean v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    if-eqz v12, :cond_154

    .line 3142
    :cond_124
    const-string v12, "id"

    const/4 v13, 0x0

    invoke-interface {v5, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 3145
    .local v12, "hostId":I
    const-string/jumbo v14, "tag"

    invoke-interface {v5, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3146
    .local v13, "tagAttribute":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_145

    .line 3147
    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    goto :goto_146

    :cond_145
    move v14, v8

    .line 3149
    .local v14, "hostTag":I
    :goto_146
    iput v14, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 3150
    new-instance v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v15, v10, v12, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3151
    iget-object v15, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3153
    .end local v0    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v10    # "uid":I
    .end local v12    # "hostId":I
    .end local v13    # "tagAttribute":Ljava/lang/String;
    .end local v14    # "hostTag":I
    :cond_154
    goto :goto_f7

    :cond_155
    const-string v0, "b"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 3154
    const-string/jumbo v0, "packageName"

    const/4 v3, 0x0

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3155
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {v1, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v3

    .line 3156
    .local v3, "uid":I
    if-ltz v3, :cond_178

    .line 3157
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 3158
    .local v10, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v12, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v12, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3160
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "uid":I
    .end local v10    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_178
    goto/16 :goto_f7

    :cond_17a
    const-string v0, "g"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 3161
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 3162
    .local v0, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    const-string v10, "id"

    invoke-interface {v5, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v3, 0x10

    invoke-static {v10, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 3164
    iget v3, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    const/4 v10, 0x1

    add-int/2addr v3, v10

    invoke-direct {v1, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setMinAppWidgetIdLocked(II)V

    .line 3167
    const-string/jumbo v3, "rid"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3168
    .local v3, "restoredIdString":Ljava/lang/String;
    if-nez v3, :cond_1a9

    const/4 v10, 0x0

    goto :goto_1b0

    .line 3169
    :cond_1a9
    const/16 v10, 0x10

    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    move v10, v12

    :goto_1b0
    iput v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 3171
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3172
    .local v10, "options":Landroid/os/Bundle;
    const-string/jumbo v12, "min_width"

    const/4 v13, 0x0

    invoke-interface {v5, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3173
    .local v12, "minWidthString":Ljava/lang/String;
    if-eqz v12, :cond_1cc

    .line 3174
    const-string v13, "appWidgetMinWidth"

    .line 3175
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 3174
    invoke-virtual {v10, v13, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3177
    :cond_1cc
    const-string/jumbo v13, "min_height"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3178
    .local v13, "minHeightString":Ljava/lang/String;
    if-eqz v13, :cond_1e1

    .line 3179
    const-string v14, "appWidgetMinHeight"

    .line 3180
    const/16 v15, 0x10

    invoke-static {v13, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3179
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3182
    :cond_1e1
    const-string/jumbo v2, "max_width"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3183
    .local v2, "maxWidthString":Ljava/lang/String;
    if-eqz v2, :cond_1f9

    .line 3184
    const-string v14, "appWidgetMaxWidth"

    .line 3185
    move-object/from16 v22, v3

    const/16 v15, 0x10

    invoke-static {v2, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 3184
    .end local v3    # "restoredIdString":Ljava/lang/String;
    .local v22, "restoredIdString":Ljava/lang/String;
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1fb

    .line 3187
    .end local v22    # "restoredIdString":Ljava/lang/String;
    .restart local v3    # "restoredIdString":Ljava/lang/String;
    :cond_1f9
    move-object/from16 v22, v3

    .line 3187
    .end local v3    # "restoredIdString":Ljava/lang/String;
    .restart local v22    # "restoredIdString":Ljava/lang/String;
    :goto_1fb
    const-string/jumbo v3, "max_height"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3188
    .local v3, "maxHeightString":Ljava/lang/String;
    if-eqz v3, :cond_213

    .line 3189
    const-string v14, "appWidgetMaxHeight"

    .line 3190
    move-object/from16 v23, v2

    const/16 v15, 0x10

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 3189
    .end local v2    # "maxWidthString":Ljava/lang/String;
    .local v23, "maxWidthString":Ljava/lang/String;
    invoke-virtual {v10, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_215

    .line 3192
    .end local v23    # "maxWidthString":Ljava/lang/String;
    .restart local v2    # "maxWidthString":Ljava/lang/String;
    :cond_213
    move-object/from16 v23, v2

    .line 3192
    .end local v2    # "maxWidthString":Ljava/lang/String;
    .restart local v23    # "maxWidthString":Ljava/lang/String;
    :goto_215
    const-string v2, "host_category"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3193
    .local v2, "categoryString":Ljava/lang/String;
    if-eqz v2, :cond_22c

    .line 3194
    const-string v14, "appWidgetCategory"

    .line 3195
    move-object/from16 v24, v3

    const/16 v15, 0x10

    invoke-static {v2, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 3194
    .end local v3    # "maxHeightString":Ljava/lang/String;
    .local v24, "maxHeightString":Ljava/lang/String;
    invoke-virtual {v10, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_22e

    .line 3197
    .end local v24    # "maxHeightString":Ljava/lang/String;
    .restart local v3    # "maxHeightString":Ljava/lang/String;
    :cond_22c
    move-object/from16 v24, v3

    .line 3197
    .end local v3    # "maxHeightString":Ljava/lang/String;
    .restart local v24    # "maxHeightString":Ljava/lang/String;
    :goto_22e
    iput-object v10, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 3199
    const-string v3, "h"

    const/4 v14, 0x0

    invoke-interface {v5, v14, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v15, 0x10

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 3201
    .local v3, "hostTag":I
    const-string/jumbo v15, "p"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3202
    .local v15, "providerString":Ljava/lang/String;
    if-eqz v15, :cond_257

    const-string/jumbo v14, "p"

    .line 3203
    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-interface {v5, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3202
    .end local v2    # "categoryString":Ljava/lang/String;
    .local v25, "categoryString":Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v2, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_25a

    .line 3203
    .end local v25    # "categoryString":Ljava/lang/String;
    .restart local v2    # "categoryString":Ljava/lang/String;
    :cond_257
    move-object/from16 v25, v2

    .line 3203
    .end local v2    # "categoryString":Ljava/lang/String;
    .restart local v25    # "categoryString":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3208
    .local v2, "providerTag":I
    :goto_25a
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;

    invoke-direct {v14, v1, v0, v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V
    :try_end_25f
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_25f} :catch_274
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_25f} :catch_274
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_25f} :catch_274
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_25f} :catch_274
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_47 .. :try_end_25f} :catch_274

    .line 3210
    .local v14, "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    move-object/from16 v1, p3

    :try_start_261
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_264
    .catch Ljava/lang/NullPointerException; {:try_start_261 .. :try_end_264} :catch_265
    .catch Ljava/lang/NumberFormatException; {:try_start_261 .. :try_end_264} :catch_265
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_261 .. :try_end_264} :catch_265
    .catch Ljava/io/IOException; {:try_start_261 .. :try_end_264} :catch_265
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_261 .. :try_end_264} :catch_265

    .line 3210
    .end local v0    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v2    # "providerTag":I
    .end local v3    # "hostTag":I
    .end local v10    # "options":Landroid/os/Bundle;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "minWidthString":Ljava/lang/String;
    .end local v13    # "minHeightString":Ljava/lang/String;
    .end local v14    # "loadedWidgets":Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
    .end local v15    # "providerString":Ljava/lang/String;
    .end local v22    # "restoredIdString":Ljava/lang/String;
    .end local v23    # "maxWidthString":Ljava/lang/String;
    .end local v24    # "maxHeightString":Ljava/lang/String;
    .end local v25    # "categoryString":Ljava/lang/String;
    goto :goto_267

    .line 3214
    .end local v4    # "legacyProviderIndex":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "legacyHostIndex":I
    .end local v9    # "type":I
    :catch_265
    move-exception v0

    goto :goto_280

    .line 3213
    .local v0, "legacyHostIndex":I
    .restart local v4    # "legacyProviderIndex":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "type":I
    :goto_267
    move v0, v8

    const/4 v2, 0x1

    if-ne v9, v2, :cond_26d

    .line 3221
    .end local v0    # "legacyHostIndex":I
    .end local v4    # "legacyProviderIndex":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    nop

    .line 3223
    return v7

    .line 3063
    .restart local v0    # "legacyHostIndex":I
    .restart local v4    # "legacyProviderIndex":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_26d
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v3, -0x1

    goto/16 :goto_1a

    .line 3214
    .end local v0    # "legacyHostIndex":I
    .end local v4    # "legacyProviderIndex":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_274
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_280

    .line 3214
    .end local v7    # "version":I
    .local v4, "version":I
    :catch_278
    move-exception v0

    goto :goto_27d

    :catch_27a
    move-exception v0

    move-object/from16 v6, p1

    .line 3214
    .end local v4    # "version":I
    .restart local v7    # "version":I
    :goto_27d
    move-object/from16 v1, p3

    move v7, v4

    .line 3219
    .local v0, "e":Ljava/lang/Exception;
    :goto_280
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    const/4 v2, -0x1

    return v2
.end method

.method private registerBroadcastReceiver()V
    .registers 12

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, "configFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 295
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 309
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v3, "offModeFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 315
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v4, "suspendPackageFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 320
    return-void
.end method

.method private registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 22
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2357
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_7a

    .line 2361
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    move v4, v0

    .line 2362
    .local v4, "alreadyRegistered":Z
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 2363
    .local v5, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    move-object/from16 v6, p2

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2364
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2367
    .local v7, "token":J
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/high16 v9, 0x8000000

    iget-object v10, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2368
    invoke-virtual {v10}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v10

    .line 2367
    invoke-static {v0, v3, v5, v9, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_75

    .line 2370
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2371
    nop

    .line 2372
    if-nez v4, :cond_7c

    .line 2373
    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v9, v0

    .line 2374
    .local v9, "period":J
    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v11, v0

    cmp-long v0, v9, v11

    if-gez v0, :cond_52

    .line 2375
    sget v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->MIN_UPDATE_PERIOD:I

    int-to-long v9, v0

    .line 2377
    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move-wide v13, v11

    .line 2379
    .local v13, "oldId":J
    :try_start_57
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v12, 0x2

    .line 2380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    add-long/2addr v15, v9

    iget-object v0, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_6f

    .line 2379
    move-wide v1, v13

    move-wide v13, v15

    .end local v13    # "oldId":J
    .local v1, "oldId":J
    move-wide v15, v9

    move-object/from16 v17, v0

    :try_start_66
    invoke-virtual/range {v11 .. v17}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    .line 2382
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2383
    goto :goto_7c

    .line 2382
    :catchall_6d
    move-exception v0

    goto :goto_71

    .end local v1    # "oldId":J
    .restart local v13    # "oldId":J
    :catchall_6f
    move-exception v0

    move-wide v1, v13

    .end local v13    # "oldId":J
    .restart local v1    # "oldId":J
    :goto_71
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2370
    .end local v1    # "oldId":J
    .end local v9    # "period":J
    :catchall_75
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2386
    .end local v4    # "alreadyRegistered":Z
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "token":J
    :cond_7a
    move-object/from16 v6, p2

    :cond_7c
    :goto_7c
    return-void
.end method

.method private registerOnCrossProfileProvidersChangedListener()V
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_9

    .line 325
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V

    .line 327
    :cond_9
    return-void
.end method

.method private reloadWidgetsMaskedState(I)V
    .registers 16
    .param p1, "userId"    # I

    .line 495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 497
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 499
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 500
    .local v3, "lockedProfile":Z
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    .line 501
    .local v4, "quietProfile":Z
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 502
    .local v5, "N":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_1e
    if-ge v7, v5, :cond_71

    .line 503
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 504
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    .line 505
    .local v9, "providerUserId":I
    if-eq v9, p1, :cond_2f

    .line 506
    goto :goto_6e

    .line 509
    :cond_2f
    invoke-virtual {v8, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByLockedProfileLocked(Z)Z

    move-result v10

    .line 510
    .local v10, "changed":Z
    invoke-virtual {v8, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedByQuietProfileLocked(Z)Z

    move-result v11
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_76

    or-int/2addr v10, v11

    .line 514
    :try_start_38
    iget-object v11, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v12, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 515
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v13

    .line 514
    invoke-interface {v11, v12, v13}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v11
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_4a} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4a} :catch_4b
    .catchall {:try_start_38 .. :try_end_4a} :catchall_76

    .line 519
    .local v11, "suspended":Z
    goto :goto_50

    .line 521
    .end local v11    # "suspended":Z
    :catch_4b
    move-exception v11

    goto :goto_56

    .line 516
    :catch_4d
    move-exception v11

    .line 518
    .local v11, "ex":Ljava/lang/IllegalArgumentException;
    nop

    .end local v11    # "ex":Ljava/lang/IllegalArgumentException;
    move v11, v6

    .line 520
    .local v11, "suspended":Z
    :goto_50
    :try_start_50
    invoke-virtual {v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v12
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_54} :catch_4b
    .catchall {:try_start_50 .. :try_end_54} :catchall_76

    or-int/2addr v10, v12

    .line 523
    .end local v11    # "suspended":Z
    goto :goto_5e

    .line 521
    :goto_56
    nop

    .line 522
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_57
    const-string v12, "AppWidgetServiceImpl"

    const-string v13, "Failed to query application info"

    invoke-static {v12, v13, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_5e
    if-eqz v10, :cond_6e

    .line 525
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 526
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_6e

    .line 528
    :cond_6b
    invoke-direct {p0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    :try_end_6e
    .catchall {:try_start_57 .. :try_end_6e} :catchall_76

    .line 502
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v9    # "providerUserId":I
    .end local v10    # "changed":Z
    :cond_6e
    :goto_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 533
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "lockedProfile":Z
    .end local v4    # "quietProfile":Z
    .end local v5    # "N":I
    .end local v7    # "i":I
    :cond_71
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    nop

    .line 535
    return-void

    .line 533
    :catchall_76
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private removeHostsAndProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3458
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeProvidersForPackageLocked(Ljava/lang/String;I)Z

    move-result v0

    .line 3463
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3464
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_2d

    .line 3465
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3466
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3467
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2a

    .line 3468
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3469
    const/4 v0, 0x1

    .line 3464
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 3473
    .end local v2    # "i":I
    :cond_2d
    return v0
.end method

.method private removeProvidersForPackageLocked(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3443
    const/4 v0, 0x0

    .line 3445
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3446
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_2e

    .line 3447
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3448
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3449
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2b

    .line 3450
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3451
    const/4 v0, 0x1

    .line 3446
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 3454
    .end local v2    # "i":I
    :cond_2e
    return v0
.end method

.method private removeWidgetsForPackageLocked(Ljava/lang/String;II)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "parentUserId"    # I

    .line 3431
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3432
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_33

    .line 3433
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3434
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3435
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_30

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 3436
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_30

    .line 3437
    invoke-direct {p0, v2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteWidgetsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V

    .line 3432
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3440
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method private resolveHostUidLocked(Ljava/lang/String;I)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 680
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 681
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_59

    .line 682
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 683
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_56

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 684
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_46

    .line 685
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " resolved to uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_46
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {v3, p2, v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    iput-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 688
    return-void

    .line 681
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 691
    .end local v1    # "i":I
    :cond_59
    return-void
.end method

.method private saveGroupStateAsync(I)V
    .registers 4
    .param p1, "groupId"    # I

    .line 1928
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SaveStateRunnable;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1929
    return-void
.end method

.method private saveStateLocked(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 2936
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->tagProvidersAndHosts()V

    .line 2938
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 2940
    .local v0, "profileIds":[I
    array-length v1, v0

    .line 2941
    .local v1, "profileCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_4d

    .line 2942
    aget v3, v0, v2

    .line 2944
    .local v3, "profileId":I
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getSavedStateFile(I)Landroid/util/AtomicFile;

    move-result-object v4

    .line 2947
    .local v4, "file":Landroid/util/AtomicFile;
    :try_start_13
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 2948
    .local v5, "stream":Ljava/io/FileOutputStream;
    invoke-direct {p0, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2949
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2b

    .line 2951
    :cond_21
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2952
    const-string v6, "AppWidgetServiceImpl"

    const-string v7, "Failed to save state, restoring backup."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2b} :catch_2c

    .line 2956
    :goto_2b
    goto :goto_43

    .line 2954
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_2c
    move-exception v5

    .line 2955
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed open state file for write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    .end local v5    # "e":Ljava/io/IOException;
    :goto_43
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-static {v5, v6, v3}, Lcom/android/server/appwidget/AppWidgetServiceImplInjector;->updateWidgetPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V

    .line 2941
    .end local v3    # "profileId":I
    .end local v4    # "file":Landroid/util/AtomicFile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2962
    .end local v2    # "i":I
    :cond_4d
    return-void
.end method

.method private scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V
    .registers 8
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "viewId"    # I

    .line 1957
    if-eqz p2, :cond_56

    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    goto :goto_56

    .line 1962
    :cond_6
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 1963
    .local v0, "requestId":J
    if-eqz p1, :cond_13

    .line 1964
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1966
    :cond_13
    if-eqz p1, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v2, :cond_30

    goto :goto_55

    .line 1972
    :cond_30
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1973
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1974
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1975
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1976
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1977
    iput p2, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1979
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1981
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1982
    return-void

    .line 1969
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_55
    :goto_55
    return-void

    .line 1960
    .end local v0    # "requestId":J
    :cond_56
    :goto_56
    return-void
.end method

.method private scheduleNotifyGroupHostsForProvidersChangedLocked(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 2108
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getEnabledGroupProfileIds(I)[I

    move-result-object v0

    .line 2110
    .local v0, "profileIds":[I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2111
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_4f

    .line 2112
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2114
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v4, 0x0

    .line 2115
    .local v4, "hostInGroup":Z
    array-length v5, v0

    .line 2116
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1b
    if-ge v6, v5, :cond_2a

    .line 2117
    aget v7, v0, v6

    .line 2118
    .local v7, "profileId":I
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v8

    if-ne v8, v7, :cond_27

    .line 2119
    const/4 v4, 0x1

    .line 2120
    goto :goto_2a

    .line 2116
    .end local v7    # "profileId":I
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 2124
    .end local v6    # "j":I
    :cond_2a
    :goto_2a
    if-nez v4, :cond_2d

    .line 2125
    goto :goto_4c

    .line 2128
    :cond_2d
    if-eqz v3, :cond_4c

    iget-boolean v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v6, :cond_4c

    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v6, :cond_38

    .line 2129
    goto :goto_4c

    .line 2132
    :cond_38
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v6

    .line 2133
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    iput-object v3, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2134
    iget-object v7, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v7, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2136
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2138
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2111
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v4    # "hostInGroup":Z
    .end local v5    # "M":I
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 2140
    .end local v2    # "i":I
    :cond_4f
    return-void
.end method

.method private scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 7
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2071
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2072
    .local v0, "requestId":J
    if-eqz p1, :cond_13

    .line 2074
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->clear()V

    .line 2075
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->append(IJ)V

    .line 2077
    :cond_13
    if-eqz p1, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_55

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_2c

    goto :goto_55

    .line 2082
    :cond_2c
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2083
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2084
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2085
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2086
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2087
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2089
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2091
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2092
    return-void

    .line 2079
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_55
    :goto_55
    return-void
.end method

.method private scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V
    .registers 8
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "updateViews"    # Landroid/widget/RemoteViews;

    .line 2036
    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 2037
    .local v0, "requestId":J
    if-eqz p1, :cond_e

    .line 2038
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2040
    :cond_e
    if-eqz p1, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v2, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz v2, :cond_27

    goto :goto_54

    .line 2045
    :cond_27
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 2046
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2047
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2048
    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_3d

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2049
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2050
    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    iput v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 2052
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2054
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2055
    return-void

    .line 2042
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_54
    :goto_54
    return-void
.end method

.method private sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 3497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3499
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 3501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3502
    nop

    .line 3503
    return-void

    .line 3501
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeletedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2337
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2338
    const-string v1, "appWidgetId"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2339
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2340
    return-void
.end method

.method private sendDisabledIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2344
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2345
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2346
    return-void
.end method

.method private sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 4
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2324
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2325
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2326
    return-void
.end method

.method private sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V
    .registers 5
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "appWidgetIds"    # [I

    .line 2329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2330
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 2331
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2332
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2333
    return-void
.end method

.method private static serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 10
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2470
    const-string v0, "g"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2471
    const-string v0, "id"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2472
    const-string/jumbo v0, "rid"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2473
    const-string v0, "h"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2474
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_3c

    .line 2475
    const-string/jumbo v0, "p"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2477
    :cond_3c
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v0, :cond_ad

    .line 2478
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v2, "appWidgetMinWidth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2479
    .local v0, "minWidth":I
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2480
    .local v2, "minHeight":I
    iget-object v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v4, "appWidgetMaxWidth"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2481
    .local v3, "maxWidth":I
    iget-object v4, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v5, "appWidgetMaxHeight"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2482
    .local v4, "maxHeight":I
    const-string/jumbo v5, "min_width"

    const/4 v6, 0x0

    if-lez v0, :cond_68

    move v7, v0

    goto :goto_69

    :cond_68
    move v7, v6

    :goto_69
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2483
    const-string/jumbo v5, "min_height"

    if-lez v2, :cond_77

    move v7, v2

    goto :goto_78

    :cond_77
    move v7, v6

    :goto_78
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2484
    const-string/jumbo v5, "max_width"

    if-lez v3, :cond_86

    move v7, v3

    goto :goto_87

    :cond_86
    move v7, v6

    :goto_87
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2485
    const-string/jumbo v5, "max_height"

    if-lez v4, :cond_95

    move v6, v4

    nop

    :cond_95
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2486
    const-string v5, "host_category"

    iget-object v6, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v7, "appWidgetCategory"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2489
    .end local v0    # "minWidth":I
    .end local v2    # "minHeight":I
    .end local v3    # "maxWidth":I
    .end local v4    # "maxHeight":I
    :cond_ad
    const-string v0, "g"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2490
    return-void
.end method

.method private static serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2462
    const-string v0, "h"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2463
    const-string/jumbo v0, "pkg"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2464
    const-string v0, "id"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2465
    const-string/jumbo v0, "tag"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2466
    const-string v0, "h"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2467
    return-void
.end method

.method private static serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 5
    .param p0, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2451
    const-string/jumbo v0, "p"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2452
    const-string/jumbo v0, "pkg"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2453
    const-string v0, "cl"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2454
    const-string/jumbo v0, "tag"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2455
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2456
    const-string v0, "info_tag"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-interface {p0, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2458
    :cond_3d
    const-string/jumbo v0, "p"

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2459
    return-void
.end method

.method private setMinAppWidgetIdLocked(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "minWidgetId"    # I

    .line 1778
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->peekNextAppWidgetIdLocked(I)I

    move-result v0

    .line 1779
    .local v0, "nextAppWidgetId":I
    if-ge v0, p2, :cond_b

    .line 1780
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1782
    :cond_b
    return-void
.end method

.method private tagProvidersAndHosts()V
    .registers 5

    .line 2965
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2966
    .local v0, "providerCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_17

    .line 2967
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2968
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iput v2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 2966
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2971
    .end local v2    # "i":I
    :cond_17
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2972
    .local v2, "hostCount":I
    nop

    .local v1, "i":I
    :goto_1e
    if-ge v1, v2, :cond_2d

    .line 2973
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 2974
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iput v1, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 2972
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2976
    .end local v1    # "i":I
    :cond_2d
    return-void
.end method

.method private unbindService(Landroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .line 3518
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3520
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 3522
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3523
    nop

    .line 3524
    return-void

    .line 3522
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .registers 6
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 670
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 671
    .local v0, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 672
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 673
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 674
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 671
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 677
    .end local v1    # "j":I
    :cond_21
    return-void
.end method

.method private updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V
    .registers 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;
    .param p4, "partially"    # Z

    .line 1744
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1746
    .local v0, "userId":I
    if-eqz p2, :cond_31

    array-length v1, p2

    if-nez v1, :cond_a

    goto :goto_31

    .line 1751
    :cond_a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1752
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1753
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1755
    array-length v2, p2

    .line 1756
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_2c

    .line 1757
    aget v4, p2, v3

    .line 1761
    .local v4, "appWidgetId":I
    nop

    .line 1762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1761
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 1764
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_29

    .line 1765
    invoke-direct {p0, v5, p3, p4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1756
    .end local v4    # "appWidgetId":I
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1768
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2c
    monitor-exit v1

    .line 1769
    return-void

    .line 1768
    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_2e

    throw v2

    .line 1747
    :cond_31
    :goto_31
    return-void
.end method

.method private updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V
    .registers 8
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .param p3, "isPartialUpdate"    # Z

    .line 1933
    if-eqz p1, :cond_6c

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_6c

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v0, :cond_6c

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-boolean v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-nez v0, :cond_6c

    .line 1936
    if-eqz p3, :cond_1e

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1e

    .line 1938
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p2}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_20

    .line 1941
    :cond_1e
    iput-object p2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1944
    :goto_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_65

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_65

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1946
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v0

    move v1, v0

    .local v1, "memoryUsage":I
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    if-gt v0, v2, :cond_3c

    .end local v1    # "memoryUsage":I
    goto :goto_65

    .line 1947
    .restart local v1    # "memoryUsage":I
    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 1948
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteViews for widget update exceeds maximum bitmap memory usage (used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mMaxWidgetBitmapMemory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1952
    .end local v1    # "memoryUsage":I
    :cond_65
    :goto_65
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyUpdateAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;)V

    .line 1954
    :cond_6c
    return-void
.end method

.method private updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;",
            ">;)Z"
        }
    .end annotation

    .local p3, "removedProviders":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3353
    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 3355
    .local v4, "providersUpdated":Z
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3356
    .local v5, "keep":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;>;"
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3357
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3358
    invoke-direct {v0, v6, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->queryIntentReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 3361
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_20

    const/4 v9, 0x0

    goto :goto_24

    :cond_20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 3362
    .local v9, "N":I
    :goto_24
    move v10, v4

    const/4 v4, 0x0

    .local v4, "i":I
    .local v10, "providersUpdated":Z
    :goto_26
    if-ge v4, v9, :cond_d8

    .line 3363
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 3364
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3366
    .local v12, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x40000

    and-int/2addr v13, v14

    if-eqz v13, :cond_3d

    .line 3367
    nop

    .line 3362
    move-object/from16 v16, v6

    goto :goto_6c

    .line 3370
    :cond_3d
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 3371
    new-instance v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v14, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v15, Landroid/content/ComponentName;

    iget-object v8, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .end local v6    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    invoke-direct {v15, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v13, v14, v15, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    move-object v8, v13

    .line 3374
    .local v8, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v13

    .line 3375
    .local v13, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v13, :cond_71

    .line 3376
    invoke-direct {v0, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 3377
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3378
    const/4 v6, 0x1

    .line 3362
    .end local v10    # "providersUpdated":Z
    .local v6, "providersUpdated":Z
    move v10, v6

    .end local v6    # "providersUpdated":Z
    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v9    # "N":I
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v10    # "providersUpdated":Z
    .local v19, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v21, "N":I
    :cond_6c
    :goto_6c
    move-object/from16 v19, v7

    move/from16 v21, v9

    goto :goto_ce

    .line 3381
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "N":I
    .restart local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v9    # "N":I
    .restart local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_71
    invoke-direct {v0, v8, v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseProviderInfoXml(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ResolveInfo;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v14

    .line 3382
    .local v14, "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v14, :cond_bf

    .line 3383
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3385
    iget-object v15, v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v15, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 3387
    iget-object v15, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3388
    .local v15, "M":I
    if-lez v15, :cond_bf

    .line 3389
    iget-object v6, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v6

    .line 3393
    .local v6, "appWidgetIds":[I
    invoke-direct {v0, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cancelBroadcasts(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3394
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 3397
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_94
    move/from16 v18, v17

    .end local v17    # "j":I
    .local v18, "j":I
    move-object/from16 v19, v7

    move/from16 v7, v18

    if-ge v7, v15, :cond_b7

    .line 3398
    .end local v18    # "j":I
    .local v7, "j":I
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v20, v8

    iget-object v8, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .local v20, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3399
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move/from16 v21, v9

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    .line 3400
    .end local v9    # "N":I
    .restart local v21    # "N":I
    invoke-direct {v0, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3397
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "j":I
    .restart local v17    # "j":I
    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    goto :goto_94

    .line 3403
    .end local v17    # "j":I
    .end local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v21    # "N":I
    .local v8, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v9    # "N":I
    :cond_b7
    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v9    # "N":I
    .restart local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v21    # "N":I
    invoke-direct {v0, v13, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .end local v6    # "appWidgetIds":[I
    .end local v15    # "M":I
    goto :goto_c5

    .line 3406
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v21    # "N":I
    .local v7, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v9    # "N":I
    :cond_bf
    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v9    # "N":I
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v21    # "N":I
    :goto_c5
    const/4 v6, 0x1

    .line 3362
    .end local v10    # "providersUpdated":Z
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v12    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v13    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "parsed":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v20    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .local v6, "providersUpdated":Z
    move v10, v6

    goto :goto_ce

    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "N":I
    .local v6, "intent":Landroid/content/Intent;
    .restart local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "N":I
    .restart local v10    # "providersUpdated":Z
    :cond_c8
    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move/from16 v21, v9

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "N":I
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "N":I
    :goto_ce
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v16

    move-object/from16 v7, v19

    move/from16 v9, v21

    goto/16 :goto_26

    .line 3412
    .end local v4    # "i":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v21    # "N":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "N":I
    :cond_d8
    move-object/from16 v16, v6

    move-object/from16 v19, v7

    move/from16 v21, v9

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "N":I
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "N":I
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3413
    .end local v21    # "N":I
    .local v4, "N":I
    add-int/lit8 v6, v4, -0x1

    .local v6, "i":I
    :goto_e6
    if-ltz v6, :cond_11b

    .line 3414
    iget-object v7, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3415
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_118

    .line 3416
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-ne v8, v2, :cond_118

    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 3417
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_118

    .line 3418
    if-eqz v3, :cond_113

    .line 3419
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3421
    :cond_113
    invoke-direct {v0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3422
    const/4 v7, 0x1

    .line 3413
    .end local v10    # "providersUpdated":Z
    .local v7, "providersUpdated":Z
    move v10, v7

    .end local v7    # "providersUpdated":Z
    .restart local v10    # "providersUpdated":Z
    :cond_118
    add-int/lit8 v6, v6, -0x1

    goto :goto_e6

    .line 3426
    .end local v6    # "i":I
    :cond_11b
    return v10
.end method

.method private updateWidgetPackageSuspensionMaskedState(Landroid/content/Intent;ZI)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "suspended"    # Z
    .param p3, "profileId"    # I

    .line 542
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "packagesArray":[Ljava/lang/String;
    if-nez v0, :cond_9

    .line 544
    return-void

    .line 546
    :cond_9
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 547
    .local v1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 548
    :try_start_15
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 549
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_52

    .line 550
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 551
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v6

    .line 552
    .local v6, "providerUserId":I
    if-ne v6, p3, :cond_4f

    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 553
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 554
    goto :goto_4f

    .line 556
    :cond_3b
    invoke-virtual {v5, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->setMaskedBySuspendedPackageLocked(Z)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 557
    invoke-virtual {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 558
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_4f

    .line 560
    :cond_4c
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->unmaskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 549
    .end local v5    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v6    # "providerUserId":I
    :cond_4f
    :goto_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 564
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_52
    monitor-exit v2

    .line 565
    return-void

    .line 564
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_15 .. :try_end_56} :catchall_54

    throw v3
.end method

.method private writeProfileStateToFileLocked(Ljava/io/FileOutputStream;I)Z
    .registers 12
    .param p1, "stream"    # Ljava/io/FileOutputStream;
    .param p2, "userId"    # I

    .line 2996
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2997
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2998
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2999
    const-string v3, "gs"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3000
    const-string/jumbo v3, "version"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3002
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3003
    .local v3, "N":I
    move v5, v0

    .line 3003
    .local v5, "i":I
    :goto_2e
    if-ge v5, v3, :cond_4b

    .line 3004
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3006
    .local v6, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v7

    if-eq v7, p2, :cond_3f

    .line 3007
    goto :goto_48

    .line 3009
    :cond_3f
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 3010
    invoke-static {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 3003
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_48
    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 3014
    .end local v5    # "i":I
    :cond_4b
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 3015
    move v5, v0

    .line 3015
    .restart local v5    # "i":I
    :goto_53
    if-ge v5, v3, :cond_6a

    .line 3016
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3018
    .local v6, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-eq v7, p2, :cond_64

    .line 3019
    goto :goto_67

    .line 3021
    :cond_64
    invoke-static {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3015
    .end local v6    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :goto_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 3024
    .end local v5    # "i":I
    :cond_6a
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 3025
    move v5, v0

    .line 3025
    .restart local v5    # "i":I
    :goto_72
    if-ge v5, v3, :cond_8b

    .line 3026
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3028
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-eq v7, p2, :cond_85

    .line 3029
    goto :goto_88

    .line 3031
    :cond_85
    invoke-static {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3025
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :goto_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 3034
    .end local v5    # "i":I
    :cond_8b
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 3035
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_91
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 3036
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 3038
    .local v6, "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, p2, :cond_a8

    .line 3039
    goto :goto_91

    .line 3041
    :cond_a8
    const-string v7, "b"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3042
    const-string/jumbo v7, "packageName"

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3043
    const-string v7, "b"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3044
    .end local v6    # "binding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_91

    .line 3046
    :cond_bd
    const-string v6, "gs"

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3047
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c5} :catch_c6

    .line 3048
    return v2

    .line 3049
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "N":I
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :catch_c6
    move-exception v1

    .line 3050
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    return v0
.end method


# virtual methods
.method addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2846
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2848
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2849
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 902
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 904
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 905
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allocateAppWidgetId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_26
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 914
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot host app widgets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 918
    :cond_4c
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 920
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_5d

    .line 921
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    :cond_5d
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I

    move-result v2

    .line 928
    .local v2, "appWidgetId":I
    new-instance v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v3, v4, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 929
    .local v3, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v4

    .line 931
    .local v4, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    new-instance v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 932
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iput v2, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 933
    iput-object v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 935
    iget-object v6, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 938
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 940
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_a7

    .line 941
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allocated widget id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_a7
    monitor-exit v1

    return v2

    .line 946
    .end local v2    # "appWidgetId":I
    .end local v3    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v4    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_a9
    move-exception v2

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_26 .. :try_end_ab} :catchall_a9

    throw v2
.end method

.method public bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .registers 23
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "providerProfileId"    # I
    .param p4, "providerComponent"    # Landroid/content/ComponentName;
    .param p5, "options"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 1090
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1092
    .local v6, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 1093
    const-string v0, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindAppWidgetId() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_28
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1100
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_37

    .line 1101
    return v7

    .line 1106
    :cond_37
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 1107
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1106
    invoke-virtual {v0, v8, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1108
    return v7

    .line 1111
    :cond_44
    iget-object v8, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1112
    :try_start_47
    invoke-direct {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1115
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1117
    monitor-exit v8

    return v7

    .line 1122
    :cond_54
    nop

    .line 1123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1122
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    .line 1125
    .local v0, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v0, :cond_77

    .line 1126
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad widget id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    monitor-exit v8

    return v7

    .line 1130
    :cond_77
    iget-object v9, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v9, :cond_9f

    .line 1131
    const-string v9, "AppWidgetServiceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Widget id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " already bound to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    monitor-exit v8

    return v7

    .line 1136
    :cond_9f
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v9

    .line 1138
    .local v9, "providerUid":I
    if-gez v9, :cond_cd

    .line 1139
    const-string v10, "AppWidgetServiceImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " not installed  for profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    monitor-exit v8

    return v7

    .line 1146
    :cond_cd
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v5, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1147
    .local v10, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {v1, v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v11

    .line 1149
    .local v11, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v11, :cond_f9

    .line 1150
    const-string v12, "AppWidgetServiceImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No widget provider "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " for profile "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    monitor-exit v8

    return v7

    .line 1155
    :cond_f9
    iget-boolean v12, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v12, :cond_115

    .line 1156
    const-string v12, "AppWidgetServiceImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t bind to a 3rd party provider in safe mode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    monitor-exit v8

    return v7

    .line 1161
    :cond_115
    iput-object v11, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1162
    if-eqz p5, :cond_11e

    invoke-static/range {p5 .. p5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    goto :goto_123

    :cond_11e
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    :goto_123
    iput-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 1165
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v14, "appWidgetCategory"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_137

    .line 1166
    iget-object v13, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    const-string v15, "appWidgetCategory"

    invoke-virtual {v13, v15, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1170
    :cond_137
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    invoke-virtual {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1174
    iget-object v13, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1175
    .local v13, "widgetCount":I
    if-ne v13, v14, :cond_14a

    .line 1177
    invoke-direct {v1, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 1184
    :cond_14a
    new-array v15, v14, [I

    aput v3, v15, v7

    invoke-direct {v1, v11, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1187
    iget-object v7, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v7

    invoke-direct {v1, v11, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 1189
    invoke-direct {v1, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1191
    sget-boolean v7, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v7, :cond_181

    .line 1192
    const-string v7, "AppWidgetServiceImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bound widget "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " to provider "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    .end local v0    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v9    # "providerUid":I
    .end local v10    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v11    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v13    # "widgetCount":I
    :cond_181
    monitor-exit v8

    .line 1196
    const/4 v0, 0x1

    return v0

    .line 1194
    :catchall_184
    move-exception v0

    monitor-exit v8
    :try_end_186
    .catchall {:try_start_47 .. :try_end_186} :catchall_184

    throw v0
.end method

.method public bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/IServiceConnection;I)Z
    .registers 32
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "caller"    # Landroid/app/IApplicationThread;
    .param p5, "activtiyToken"    # Landroid/os/IBinder;
    .param p6, "connection"    # Landroid/app/IServiceConnection;
    .param p7, "flags"    # I

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v12, p3

    .line 1257
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 1258
    .local v13, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1259
    const-string v0, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindRemoteViewsService() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_24
    iget-object v14, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1263
    :try_start_27
    invoke-direct {v1, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1267
    nop

    .line 1268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1267
    move-object/from16 v15, p1

    invoke-direct {v1, v2, v0, v15}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    move-object v11, v0

    .line 1270
    .local v11, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v11, :cond_119

    .line 1275
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_fd

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object v10, v0

    .line 1284
    .local v10, "componentName":Landroid/content/ComponentName;
    iget-object v0, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1285
    .local v9, "providerPackage":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1286
    .local v8, "servicePackage":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1293
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v3, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1294
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    .line 1293
    invoke-virtual {v0, v10, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V

    .line 1299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_66
    .catchall {:try_start_27 .. :try_end_66} :catchall_126

    move-wide v6, v3

    .line 1303
    .local v6, "callingIdentity":J
    :try_start_67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1305
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    .line 1306
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v4, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1307
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v17
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_81} :catch_d6
    .catchall {:try_start_67 .. :try_end_81} :catchall_c5

    .line 1303
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-wide v13, v6

    move-object v6, v12

    .end local v6    # "callingIdentity":J
    .local v13, "callingIdentity":J
    .local v18, "userId":I
    move-object v7, v0

    move-object/from16 v20, v8

    move-object/from16 v8, p6

    .end local v8    # "servicePackage":Ljava/lang/String;
    .local v20, "servicePackage":Ljava/lang/String;
    move-object/from16 v21, v9

    move/from16 v9, p7

    .end local v9    # "providerPackage":Ljava/lang/String;
    .local v21, "providerPackage":Ljava/lang/String;
    move-object/from16 v22, v10

    move-object/from16 v10, v16

    .end local v10    # "componentName":Landroid/content/ComponentName;
    .local v22, "componentName":Landroid/content/ComponentName;
    move-object v15, v11

    move/from16 v11, v17

    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v15, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :try_start_9b
    invoke-interface/range {v3 .. v11}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_bd

    .line 1312
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    .line 1313
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Landroid/content/Intent$FilterComparison;

    invoke-direct {v3, v12}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1312
    invoke-direct {v1, v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAppWidgetServiceRefCount(ILandroid/util/Pair;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_b7} :catch_c3
    .catchall {:try_start_9b .. :try_end_b7} :catchall_c1

    .line 1314
    const/4 v0, 0x1

    .line 1319
    :try_start_b8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    .line 1314
    return v0

    .line 1319
    :cond_bd
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e6

    :catchall_c1
    move-exception v0

    goto :goto_d2

    .line 1316
    :catch_c3
    move-exception v0

    goto :goto_e3

    .line 1319
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "callingIdentity":J
    .restart local v8    # "servicePackage":Ljava/lang/String;
    .restart local v9    # "providerPackage":Ljava/lang/String;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :catchall_c5
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-wide v13, v6

    .end local v6    # "callingIdentity":J
    .end local v8    # "servicePackage":Ljava/lang/String;
    .end local v9    # "providerPackage":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "callingIdentity":J
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    .restart local v20    # "servicePackage":Ljava/lang/String;
    .restart local v21    # "providerPackage":Ljava/lang/String;
    .restart local v22    # "componentName":Landroid/content/ComponentName;
    :goto_d2
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1316
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "callingIdentity":J
    .restart local v8    # "servicePackage":Ljava/lang/String;
    .restart local v9    # "providerPackage":Ljava/lang/String;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :catch_d6
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    move-wide v13, v6

    .line 1319
    .end local v6    # "callingIdentity":J
    .end local v8    # "servicePackage":Ljava/lang/String;
    .end local v9    # "providerPackage":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "callingIdentity":J
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    .restart local v20    # "servicePackage":Ljava/lang/String;
    .restart local v21    # "providerPackage":Ljava/lang/String;
    .restart local v22    # "componentName":Landroid/content/ComponentName;
    :goto_e3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1320
    :goto_e6
    nop

    .line 1321
    .end local v13    # "callingIdentity":J
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    monitor-exit v19

    .line 1324
    const/4 v0, 0x0

    return v0

    .line 1287
    .end local v18    # "userId":I
    .restart local v8    # "servicePackage":Ljava/lang/String;
    .restart local v9    # "providerPackage":Ljava/lang/String;
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v13, "userId":I
    :cond_ea
    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v8    # "servicePackage":Ljava/lang/String;
    .end local v9    # "providerPackage":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "userId":I
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    .restart local v20    # "servicePackage":Ljava/lang/String;
    .restart local v21    # "providerPackage":Ljava/lang/String;
    .restart local v22    # "componentName":Landroid/content/ComponentName;
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "The taget service not in the same package as the widget provider"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1276
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .end local v20    # "servicePackage":Ljava/lang/String;
    .end local v21    # "providerPackage":Ljava/lang/String;
    .end local v22    # "componentName":Landroid/content/ComponentName;
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v13    # "userId":I
    :cond_fd
    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "userId":I
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider for widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .restart local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v13    # "userId":I
    :cond_119
    move-object v15, v11

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v11    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v13    # "userId":I
    .restart local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v18    # "userId":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad widget id"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    .end local v15    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v18    # "userId":I
    .restart local v13    # "userId":I
    :catchall_126
    move-exception v0

    move/from16 v18, v13

    move-object/from16 v19, v14

    .end local v13    # "userId":I
    .restart local v18    # "userId":I
    :goto_12b
    monitor-exit v19
    :try_end_12c
    .catchall {:try_start_b8 .. :try_end_12c} :catchall_12d

    throw v0

    :catchall_12d
    move-exception v0

    goto :goto_12b
.end method

.method clearWidgetsLocked()V
    .registers 2

    .line 2912
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2914
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetsClearedLocked()V

    .line 2915
    return-void
.end method

.method public createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;
    .registers 23
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "intentFlags"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1039
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1041
    .local v4, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_24

    .line 1042
    const-string v0, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createAppWidgetConfigIntentSender() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_24
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1048
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1049
    :try_start_2c
    invoke-direct {v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1053
    nop

    .line 1054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1053
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v0

    move-object v6, v0

    .line 1056
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v6, :cond_aa

    .line 1060
    iget-object v0, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_c3

    move-object v7, v0

    .line 1061
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v7, :cond_91

    .line 1066
    move/from16 v8, p3

    and-int/lit16 v9, v8, -0xc4

    .line 1068
    .local v9, "secureFlags":I
    :try_start_44
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 1069
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "appWidgetId"

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1070
    iget-object v0, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1071
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1074
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_c8

    move-wide v14, v11

    .line 1076
    .local v14, "identity":J
    :try_start_60
    iget-object v11, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/16 v16, 0x0

    new-instance v13, Landroid/os/UserHandle;

    .line 1079
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_8b

    .line 1076
    move-object v0, v13

    move-object v13, v10

    move-wide/from16 v17, v14

    const/high16 v14, 0x54000000

    .end local v14    # "identity":J
    .local v17, "identity":J
    move-object/from16 v15, v16

    move-object/from16 v16, v0

    :try_start_78
    invoke-static/range {v11 .. v16}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_87

    .line 1082
    move-wide/from16 v11, v17

    :try_start_82
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v17    # "identity":J
    .local v11, "identity":J
    monitor-exit v5

    .line 1076
    return-object v0

    .line 1082
    .end local v11    # "identity":J
    .restart local v17    # "identity":J
    :catchall_87
    move-exception v0

    move-wide/from16 v11, v17

    .end local v17    # "identity":J
    .restart local v11    # "identity":J
    goto :goto_8d

    .end local v11    # "identity":J
    .restart local v14    # "identity":J
    :catchall_8b
    move-exception v0

    move-wide v11, v14

    .end local v14    # "identity":J
    .restart local v11    # "identity":J
    :goto_8d
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1062
    .end local v9    # "secureFlags":I
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "identity":J
    :cond_91
    move/from16 v8, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Widget not bound "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_aa
    move/from16 v8, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad widget id "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_c3
    move-exception v0

    move/from16 v8, p3

    :goto_c6
    monitor-exit v5
    :try_end_c7
    .catchall {:try_start_82 .. :try_end_c7} :catchall_c8

    throw v0

    :catchall_c8
    move-exception v0

    goto :goto_c6
.end method

.method public deleteAllHosts()V
    .registers 10

    .line 1362
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1364
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1365
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllHosts() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1369
    :try_start_21
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1371
    const/4 v2, 0x0

    .line 1373
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1374
    .local v3, "N":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_2d
    if-ltz v4, :cond_64

    .line 1375
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 1378
    .local v5, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-ne v6, v7, :cond_61

    .line 1379
    invoke-direct {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1380
    const/4 v2, 0x1

    .line 1382
    sget-boolean v6, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v6, :cond_61

    .line 1383
    const-string v6, "AppWidgetServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted host "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .end local v5    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_61
    add-int/lit8 v4, v4, -0x1

    goto :goto_2d

    .line 1388
    .end local v4    # "i":I
    :cond_64
    if-eqz v2, :cond_69

    .line 1389
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1391
    .end local v2    # "changed":Z
    .end local v3    # "N":I
    :cond_69
    monitor-exit v1

    .line 1392
    return-void

    .line 1391
    :catchall_6b
    move-exception v2

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_21 .. :try_end_6d} :catchall_6b

    throw v2
.end method

.method public deleteAppWidgetId(Ljava/lang/String;I)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 951
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 953
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 954
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAppWidgetId() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 961
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 965
    nop

    .line 966
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 965
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 968
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v2, :cond_36

    .line 969
    monitor-exit v1

    return-void

    .line 972
    :cond_36
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteAppWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 974
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 976
    sget-boolean v3, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v3, :cond_62

    .line 977
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted widget id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_62
    monitor-exit v1

    .line 981
    return-void

    .line 980
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public deleteHost(Ljava/lang/String;I)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 1329
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1331
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1332
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteHost() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1339
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1343
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1344
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 1346
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-nez v3, :cond_3a

    .line 1347
    monitor-exit v1

    return-void

    .line 1350
    :cond_3a
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 1352
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1354
    sget-boolean v4, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v4, :cond_5c

    .line 1355
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_5c
    monitor-exit v1

    .line 1358
    return-void

    .line 1357
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_26 .. :try_end_60} :catchall_5e

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 751
    :cond_b
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_e
    array-length v1, p3

    if-lez v1, :cond_20

    const-string v1, "--proto"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_23

    .line 755
    :cond_20
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 757
    :goto_23
    monitor-exit v0

    .line 758
    return-void

    .line 757
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1201
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1203
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1204
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetIds() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1211
    :try_start_2a
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1215
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1216
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1218
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_45

    .line 1219
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1222
    :cond_45
    const/4 v4, 0x0

    new-array v4, v4, [I

    monitor-exit v1

    return-object v4

    .line 1223
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public getAppWidgetIdsForHost(Ljava/lang/String;I)[I
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 1228
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1230
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1231
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetIdsForHost() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1237
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1238
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1242
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 1243
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 1245
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_40

    .line 1246
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1249
    :cond_40
    const/4 v4, 0x0

    new-array v4, v4, [I

    monitor-exit v1

    return-object v4

    .line 1250
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_45

    throw v2
.end method

.method public getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 1396
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1398
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1399
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetInfo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1405
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1406
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1410
    nop

    .line 1411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1410
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1413
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_48

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_48

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-boolean v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v3, :cond_48

    .line 1414
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1417
    :cond_48
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1418
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 1483
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1485
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1486
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetOptions() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1492
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1493
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1497
    nop

    .line 1498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1497
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1500
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_40

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    if-eqz v3, :cond_40

    .line 1501
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1504
    :cond_40
    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v1

    return-object v3

    .line 1505
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_26 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I

    .line 1423
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1425
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1426
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppWidgetViews() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1432
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1433
    :try_start_26
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1437
    nop

    .line 1438
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1437
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1440
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v2, :cond_3e

    .line 1441
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1444
    :cond_3e
    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 1445
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_41

    throw v2
.end method

.method public getInstalledProvidersForProfile(IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 16
    .param p1, "categoryFilter"    # I
    .param p2, "profileId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1694
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1696
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 1697
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstalledProvidersForProfiles() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_1e
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isEnabledGroupProfile(I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1702
    const/4 v1, 0x0

    return-object v1

    .line 1705
    :cond_28
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1706
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1707
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot access widget providers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 1712
    :cond_58
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1714
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1717
    .local v3, "providerCount":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_68
    if-ge v5, v3, :cond_b8

    .line 1718
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 1719
    .local v6, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1723
    .local v7, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p3, :cond_87

    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1724
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    goto :goto_87

    :cond_85
    move v8, v4

    goto :goto_88

    :cond_87
    :goto_87
    const/4 v8, 0x1

    .line 1725
    .local v8, "inPackage":Z
    :goto_88
    iget-boolean v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v9, :cond_b5

    iget v9, v7, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v9, p1

    if-eqz v9, :cond_b5

    if-nez v8, :cond_94

    .line 1726
    goto :goto_b5

    .line 1730
    :cond_94
    invoke-virtual {v7}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 1731
    .local v9, "providerProfileId":I
    if-ne v9, p2, :cond_b5

    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    iget-object v11, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v11, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 1733
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1732
    invoke-virtual {v10, v11, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b5

    .line 1734
    invoke-static {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->cloneIfLocalBinder(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    .end local v6    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v7    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8    # "inPackage":Z
    .end local v9    # "providerProfileId":I
    :cond_b5
    :goto_b5
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 1738
    .end local v5    # "i":I
    :cond_b8
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v4

    .line 1739
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .end local v3    # "providerCount":I
    :catchall_bf
    move-exception v2

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_2b .. :try_end_c1} :catchall_bf

    throw v2
.end method

.method public getWidgetParticipants(I)Ljava/util/List;
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

    .line 2494
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2499
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public hasBindAppWidgetPermission(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I

    .line 985
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 986
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasBindAppWidgetPermission() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_1e
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 994
    :try_start_26
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 996
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 997
    .local v1, "packageUid":I
    if-gez v1, :cond_32

    .line 998
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1001
    :cond_32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1002
    .local v2, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 1003
    .end local v1    # "packageUid":I
    .end local v2    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2923
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_21

    .line 2926
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2927
    :try_start_b
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2928
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_1b

    .line 2929
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2931
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1b
    monitor-exit v0

    .line 2932
    const/4 v0, 0x0

    return v0

    .line 2931
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v1

    .line 2924
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system process can call this"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRequestPinAppWidgetSupported()Z
    .registers 5

    .line 1649
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1650
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerInstantAppLocked()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1651
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instant uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " query information about app widgets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1655
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_40

    .line 1656
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    .line 1657
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ShortcutServiceInternal;->isRequestPinItemSupported(II)Z

    move-result v0

    .line 1656
    return v0

    .line 1655
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "viewId"    # I

    .line 1531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1533
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1534
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAppWidgetViewDataChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1540
    if-eqz p2, :cond_4c

    array-length v1, p2

    if-nez v1, :cond_2a

    goto :goto_4c

    .line 1544
    :cond_2a
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1545
    :try_start_2d
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1547
    array-length v2, p2

    .line 1548
    .local v2, "N":I
    const/4 v3, 0x0

    .line 1548
    .local v3, "i":I
    :goto_32
    if-ge v3, v2, :cond_47

    .line 1549
    aget v4, p2, v3

    .line 1553
    .local v4, "appWidgetId":I
    nop

    .line 1554
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1553
    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 1556
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-eqz v5, :cond_44

    .line 1557
    invoke-direct {p0, v5, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyAppWidgetViewDataChanged(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)V

    .line 1548
    .end local v4    # "appWidgetId":I
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1560
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_47
    monitor-exit v1

    .line 1561
    return-void

    .line 1560
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_49

    throw v2

    .line 1541
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3528
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3532
    .local v0, "parentId":I
    if-eq v0, p1, :cond_73

    .line 3533
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3534
    const/4 v2, 0x0

    .line 3536
    .local v2, "providersChanged":Z
    :try_start_c
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 3537
    .local v3, "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3538
    .local v4, "providerCount":I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_19
    if-ge v6, v4, :cond_37

    .line 3539
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3540
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-ne v8, p1, :cond_34

    .line 3541
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v8, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3538
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 3545
    .end local v6    # "i":I
    :cond_37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 3546
    .local v6, "packageCount":I
    move v7, v2

    move v2, v5

    .local v2, "i":I
    .local v7, "providersChanged":Z
    :goto_3d
    if-ge v2, v6, :cond_51

    .line 3547
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3548
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3549
    const/4 v9, 0x0

    invoke-direct {p0, v8, p1, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateProvidersForPackageLocked(Ljava/lang/String;ILjava/util/Set;)Z

    move-result v9

    or-int/2addr v7, v9

    .line 3546
    .end local v8    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 3554
    .end local v2    # "i":I
    :cond_51
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 3555
    .local v2, "removedCount":I
    nop

    .local v5, "i":I
    :goto_56
    if-ge v5, v2, :cond_64

    .line 3556
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetsForPackageLocked(Ljava/lang/String;II)V

    .line 3555
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 3560
    .end local v5    # "i":I
    :cond_64
    if-nez v7, :cond_68

    if-lez v2, :cond_6e

    .line 3561
    :cond_68
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3562
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 3564
    .end local v2    # "removedCount":I
    .end local v3    # "previousPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "providerCount":I
    .end local v6    # "packageCount":I
    .end local v7    # "providersChanged":Z
    :cond_6e
    monitor-exit v1

    goto :goto_73

    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_c .. :try_end_72} :catchall_70

    throw v2

    .line 3566
    :cond_73
    :goto_73
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 254
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 255
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 256
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 257
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 258
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 259
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mDevicePolicyManagerInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 260
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 261
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSaveStateHandler:Landroid/os/Handler;

    .line 262
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$CallbackHandler;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    .line 264
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-direct {v0, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    .line 265
    new-instance v0, Lcom/android/server/policy/IconUtilities;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/policy/IconUtilities;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mIconUtilities:Lcom/android/server/policy/IconUtilities;

    .line 267
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->computeMaximumWidgetBitmapMemory()V

    .line 268
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerBroadcastReceiver()V

    .line 269
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerOnCrossProfileProvidersChangedListener()V

    .line 271
    const-class v0, Landroid/appwidget/AppWidgetManagerInternal;

    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;

    invoke-direct {v2, p0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetManagerLocal;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method onUserStopped(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 3277
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3278
    const/4 v1, 0x0

    .line 3281
    .local v1, "crossProfileWidgetsChanged":Z
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3282
    .local v2, "widgetCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_c
    const/4 v4, 0x1

    if-ltz v3, :cond_57

    .line 3283
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 3285
    .local v5, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, p1, :cond_22

    move v6, v4

    goto :goto_23

    :cond_22
    move v6, v7

    .line 3286
    .local v6, "hostInUser":Z
    :goto_23
    iget-object v8, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v8, :cond_29

    move v8, v4

    goto :goto_2a

    :cond_29
    move v8, v7

    .line 3287
    .local v8, "hasProvider":Z
    :goto_2a
    if-eqz v8, :cond_35

    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v9

    if-ne v9, p1, :cond_35

    goto :goto_36

    :cond_35
    move v4, v7

    .line 3292
    .local v4, "providerInUser":Z
    :goto_36
    if-eqz v6, :cond_54

    if-eqz v8, :cond_3c

    if-eqz v4, :cond_54

    .line 3293
    :cond_3c
    invoke-virtual {p0, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 3294
    iget-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v7, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3295
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3296
    if-eqz v8, :cond_54

    .line 3297
    iget-object v9, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v9, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3298
    iput-object v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3282
    .end local v4    # "providerInUser":Z
    .end local v5    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v6    # "hostInUser":Z
    .end local v8    # "hasProvider":Z
    :cond_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 3304
    .end local v3    # "i":I
    :cond_57
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3305
    .local v3, "hostCount":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_5f
    if-ltz v5, :cond_7d

    .line 3306
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 3307
    .local v6, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v7

    if-ne v7, p1, :cond_7a

    .line 3308
    iget-object v7, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v4

    or-int/2addr v1, v7

    .line 3309
    invoke-direct {p0, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->deleteHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 3305
    .end local v6    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_7a
    add-int/lit8 v5, v5, -0x1

    goto :goto_5f

    .line 3317
    .end local v5    # "i":I
    :cond_7d
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 3318
    .local v4, "grantCount":I
    add-int/lit8 v5, v4, -0x1

    .restart local v5    # "i":I
    :goto_85
    if-ltz v5, :cond_a1

    .line 3319
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 3320
    .local v6, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_9e

    .line 3321
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 3318
    .end local v6    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_9e
    add-int/lit8 v5, v5, -0x1

    goto :goto_85

    .line 3326
    .end local v5    # "i":I
    :cond_a1
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    .line 3327
    .local v5, "userIndex":I
    if-ltz v5, :cond_ae

    .line 3328
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLoadedUserIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3332
    :cond_ae
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    .line 3333
    .local v6, "nextIdIndex":I
    if-ltz v6, :cond_bb

    .line 3334
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mNextAppWidgetIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3339
    :cond_bb
    if-eqz v1, :cond_c0

    .line 3340
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 3342
    .end local v1    # "crossProfileWidgetsChanged":Z
    .end local v2    # "widgetCount":I
    .end local v3    # "hostCount":I
    .end local v4    # "grantCount":I
    .end local v5    # "userIndex":I
    .end local v6    # "nextIdIndex":I
    :cond_c0
    monitor-exit v0

    .line 3343
    return-void

    .line 3342
    :catchall_c2
    move-exception v1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_4 .. :try_end_c4} :catchall_c2

    throw v1
.end method

.method onUserUnlocked(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 2701
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->isProfileWithLockedParent(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2702
    return-void

    .line 2704
    :cond_7
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2705
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is no longer unlocked - exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    return-void

    .line 2708
    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2709
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2710
    :try_start_32
    const-string v3, "appwidget ensure"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2711
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 2712
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2713
    const-string v3, "appwidget reload"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2714
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedStateForGroup(I)V

    .line 2715
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2717
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2718
    .local v3, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_57
    if-ge v6, v3, :cond_a1

    .line 2719
    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 2722
    .local v7, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v8

    if-eq v8, p1, :cond_68

    .line 2723
    goto :goto_9e

    .line 2726
    :cond_68
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9e

    .line 2727
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appwidget init "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2728
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2727
    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2729
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendEnableIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 2730
    iget-object v8, v7, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getWidgetIds(Ljava/util/ArrayList;)[I

    move-result-object v8

    .line 2731
    .local v8, "appWidgetIds":[I
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendUpdateIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2732
    invoke-direct {p0, v7, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->registerForBroadcastsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;[I)V

    .line 2733
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2718
    .end local v7    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v8    # "appWidgetIds":[I
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 2736
    .end local v3    # "N":I
    .end local v6    # "i":I
    :cond_a1
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_32 .. :try_end_a2} :catchall_cb

    .line 2737
    const-string v2, "AppWidgetServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Async processing of onUserUnlocked u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2738
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2737
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    return-void

    .line 2736
    :catchall_cb
    move-exception v3

    :try_start_cc
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v3
.end method

.method onWidgetProviderAddedOrChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 6
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2856
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-nez v0, :cond_5

    return-void

    .line 2858
    :cond_5
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    .line 2859
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 2860
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_20

    .line 2861
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgetPackages:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2863
    :cond_20
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2867
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isMaskedLocked()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2868
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {p0, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->maskWidgetsViewsLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_3e

    .line 2870
    :cond_3b
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->clearMaskedViewsLocked()Z
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->access$1000(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)Z

    .line 2872
    :goto_3e
    return-void
.end method

.method public partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    .line 1521
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1522
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "partiallyUpdateAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1f
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1526
    return-void
.end method

.method reloadWidgetsMaskedStateForGroup(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 482
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 483
    return-void

    .line 485
    :cond_9
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 487
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v1

    .line 488
    .local v1, "profileIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget v4, v1, v3

    .line 489
    .local v4, "profileId":I
    invoke-direct {p0, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->reloadWidgetsMaskedState(I)V

    .line 488
    .end local v4    # "profileId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 491
    .end local v1    # "profileIds":[I
    :cond_21
    monitor-exit v0

    .line 492
    return-void

    .line 491
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_23

    throw v1
.end method

.method removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 3
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2880
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2882
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->onWidgetRemovedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 2883
    return-void
.end method

.method public requestPinAppWidget(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/content/IntentSender;)Z
    .registers 14
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "resultSender"    # Landroid/content/IntentSender;

    .line 1664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1665
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1667
    .local v7, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_23

    .line 1668
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPinAppWidget() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_23
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1674
    :try_start_26
    invoke-direct {p0, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1677
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v2

    .line 1678
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const/4 v3, 0x0

    if-eqz v2, :cond_59

    iget-boolean v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v4, :cond_3b

    goto :goto_59

    .line 1681
    :cond_3b
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object v8, v4

    .line 1682
    .local v8, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v8, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_46

    .line 1683
    monitor-exit v1

    return v3

    .line 1685
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_5b

    .line 1687
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 1688
    move-object v2, p1

    move-object v3, v8

    move-object v4, p3

    move-object v5, p4

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->requestPinAppWidget(Ljava/lang/String;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;I)Z

    move-result v1

    .line 1687
    return v1

    .line 1679
    .end local v8    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_59
    :goto_59
    :try_start_59
    monitor-exit v1

    return v3

    .line 1685
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method public restoreFinished(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2514
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreFinished(I)V

    .line 2515
    return-void
.end method

.method public restoreStarting(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2504
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreStarting(I)V

    .line 2505
    return-void
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    .line 2509
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mBackupRestoreController:Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 2510
    return-void
.end method

.method public sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    .registers 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 2349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2350
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2351
    const-string v1, "appWidgetId"

    iget v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2352
    const-string v1, "appWidgetOptions"

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2353
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2354
    return-void
.end method

.method public setBindAppWidgetPermission(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "grantId"    # I
    .param p3, "grantPermission"    # Z

    .line 1009
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1010
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBindAppWidgetPermission() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_1f
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1018
    :try_start_27
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I

    move-result v1

    .line 1021
    .local v1, "packageUid":I
    if-gez v1, :cond_32

    .line 1022
    monitor-exit v0

    return-void

    .line 1025
    :cond_32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 1026
    .local v2, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p3, :cond_42

    .line 1027
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 1029
    :cond_42
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mPackagesWithBindWidgetPermission:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1032
    :goto_47
    invoke-direct {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1033
    .end local v1    # "packageUid":I
    .end local v2    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    monitor-exit v0

    .line 1034
    return-void

    .line 1033
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method public setSafeMode(Z)V
    .registers 2
    .param p1, "safeMode"    # Z

    .line 330
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSafeMode:Z

    .line 331
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;
    .registers 25
    .param p1, "callbacks"    # Lcom/android/internal/appwidget/IAppWidgetHost;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "hostId"    # I
    .param p4, "appWidgetIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I[I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 830
    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 832
    .local v4, "userId":I
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 833
    const-string v0, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startListening() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_25
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 839
    iget-object v5, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 841
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isInstantAppLocked(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 842
    const-string v0, "AppWidgetServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instant package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot host app widgets"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 846
    :cond_56
    invoke-direct {v1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 850
    new-instance v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_c0

    move/from16 v7, p3

    :try_start_61
    invoke-direct {v0, v6, v7, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 851
    .local v0, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {v1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v6
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_bc

    .line 852
    .local v6, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    move-object/from16 v8, p1

    :try_start_6a
    iput-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 854
    sget-object v9, Lcom/android/server/appwidget/AppWidgetServiceImpl;->UPDATE_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    .line 855
    .local v9, "updateSequenceNo":J
    array-length v11, v3

    .line 856
    .local v11, "N":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 857
    .local v12, "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    new-instance v13, Landroid/util/LongSparseArray;

    invoke-direct {v13}, Landroid/util/LongSparseArray;-><init>()V

    .line 858
    .local v13, "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    const/4 v15, 0x0

    .line 858
    .local v15, "i":I
    :goto_7e
    if-ge v15, v11, :cond_b1

    .line 859
    aget v14, v3, v15

    invoke-virtual {v6, v14, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getPendingUpdatesForId(ILandroid/util/LongSparseArray;)Z

    move-result v14

    if-eqz v14, :cond_a8

    .line 862
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v14

    .line 863
    .local v14, "M":I
    const/16 v16, 0x0

    .line 863
    .local v16, "j":I
    :goto_8e
    move/from16 v17, v16

    .line 863
    .end local v16    # "j":I
    .local v17, "j":I
    move-object/from16 v18, v0

    move/from16 v0, v17

    if-ge v0, v14, :cond_aa

    .line 864
    .end local v17    # "j":I
    .local v0, "j":I
    .local v18, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroid/appwidget/PendingHostUpdate;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    add-int/lit8 v16, v0, 0x1

    .line 863
    .end local v0    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    goto :goto_8e

    .line 858
    .end local v14    # "M":I
    .end local v16    # "j":I
    .end local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .local v0, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_a8
    move-object/from16 v18, v0

    .line 858
    .end local v0    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_aa
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    goto :goto_7e

    .line 869
    .end local v15    # "i":I
    .end local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v0    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :cond_b1
    move-object/from16 v18, v0

    .line 869
    .end local v0    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .restart local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iput-wide v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 870
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v12}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v5

    return-object v0

    .line 871
    .end local v6    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v9    # "updateSequenceNo":J
    .end local v11    # "N":I
    .end local v12    # "outUpdates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v13    # "updatesMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/appwidget/PendingHostUpdate;>;"
    .end local v18    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    :catchall_bc
    move-exception v0

    move-object/from16 v8, p1

    goto :goto_c5

    :catchall_c0
    move-exception v0

    move-object/from16 v8, p1

    move/from16 v7, p3

    :goto_c5
    monitor-exit v5
    :try_end_c6
    .catchall {:try_start_6a .. :try_end_c6} :catchall_c7

    throw v0

    :catchall_c7
    move-exception v0

    goto :goto_c5
.end method

.method public stopListening(Ljava/lang/String;I)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "hostId"    # I

    .line 876
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 878
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 879
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopListening() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 886
    const/4 v2, 0x0

    :try_start_28
    invoke-direct {p0, v0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(IZ)V

    .line 890
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 891
    .local v2, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v3

    .line 893
    .local v3, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    if-eqz v3, :cond_40

    .line 894
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 895
    invoke-direct {p0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->pruneHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 897
    .end local v2    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v3    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_40
    monitor-exit v1

    .line 898
    return-void

    .line 897
    :catchall_42
    move-exception v2

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_42

    throw v2
.end method

.method public updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetIds"    # [I
    .param p3, "views"    # Landroid/widget/RemoteViews;

    .line 1511
    sget-boolean v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 1512
    const-string v0, "AppWidgetServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppWidgetIds() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_1f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;Z)V

    .line 1516
    return-void
.end method

.method public updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "appWidgetId"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 1450
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1452
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1453
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppWidgetOptions() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1459
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1460
    :try_start_27
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1464
    nop

    .line 1465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1464
    invoke-direct {p0, p2, v2, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupWidgetLocked(IILjava/lang/String;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v2

    .line 1467
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v2, :cond_37

    .line 1468
    monitor-exit v1

    return-void

    .line 1472
    :cond_37
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    invoke-virtual {v3, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1475
    invoke-virtual {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendOptionsChangedIntentLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1477
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1478
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    monitor-exit v1

    .line 1479
    return-void

    .line 1478
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_44

    throw v2
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 1565
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1567
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1568
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppWidgetProvider() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1574
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1575
    :try_start_2b
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1579
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1580
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1582
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v3, :cond_56

    .line 1583
    const-string v4, "AppWidgetServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider doesn\'t exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    monitor-exit v1

    return-void

    .line 1587
    :cond_56
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 1588
    .local v4, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1589
    .local v5, "N":I
    const/4 v6, 0x0

    move v7, v6

    .line 1589
    .local v7, "i":I
    :goto_5e
    if-ge v7, v5, :cond_6c

    .line 1590
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1591
    .local v8, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v8, p2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1589
    .end local v8    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    .line 1593
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;>;"
    .end local v5    # "N":I
    .end local v7    # "i":I
    :cond_6c
    monitor-exit v1

    .line 1594
    return-void

    .line 1593
    :catchall_6e
    move-exception v2

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_2b .. :try_end_70} :catchall_6e

    throw v2
.end method

.method public updateAppWidgetProviderInfo(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 14
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "metadataKey"    # Ljava/lang/String;

    .line 1598
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1599
    .local v0, "userId":I
    sget-boolean v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1600
    const-string v1, "AppWidgetServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppWidgetProvider() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_1f
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mSecurityPolicy:Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->enforceCallFromPackage(Ljava/lang/String;)V

    .line 1606
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1607
    :try_start_2b
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->ensureGroupStateLoadedLocked(I)V

    .line 1611
    new-instance v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 1612
    .local v2, "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    invoke-direct {p0, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupProviderLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v3

    .line 1613
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v3, :cond_9d

    .line 1617
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1619
    monitor-exit v1

    return-void

    .line 1622
    :cond_48
    if-nez p2, :cond_4d

    .line 1623
    const-string v4, "android.appwidget.provider"

    goto :goto_4e

    :cond_4d
    move-object v4, p2

    .line 1624
    .local v4, "keyToUse":Ljava/lang/String;
    :goto_4e
    iget-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    .line 1625
    invoke-direct {p0, v2, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    .line 1626
    .local v5, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v5, :cond_81

    .line 1631
    iput-object v5, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1632
    iput-object p2, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    .line 1635
    iget-object v6, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1636
    .local v6, "N":I
    const/4 v7, 0x0

    move v8, v7

    .line 1636
    .local v8, "i":I
    :goto_64
    if-ge v8, v6, :cond_79

    .line 1637
    iget-object v9, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 1638
    .local v9, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v9}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyProviderChangedLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 1639
    iget-object v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->views:Landroid/widget/RemoteViews;

    invoke-direct {p0, v9, v10, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->updateAppWidgetInstanceLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;Landroid/widget/RemoteViews;Z)V

    .line 1636
    .end local v9    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    add-int/lit8 v8, v8, 0x1

    goto :goto_64

    .line 1642
    .end local v8    # "i":I
    :cond_79
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V

    .line 1643
    invoke-direct {p0, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->scheduleNotifyGroupHostsForProvidersChangedLocked(I)V

    .line 1644
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v4    # "keyToUse":Ljava/lang/String;
    .end local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "N":I
    monitor-exit v1

    .line 1645
    return-void

    .line 1627
    .restart local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .restart local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v4    # "keyToUse":Ljava/lang/String;
    .restart local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_81
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " meta-data to a valid AppWidget provider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1614
    .end local v4    # "keyToUse":Ljava/lang/String;
    .end local v5    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_9d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not a valid AppWidget provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1644
    .end local v2    # "providerId":Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :catchall_b4
    move-exception v2

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_2b .. :try_end_b6} :catchall_b4

    throw v2
.end method
