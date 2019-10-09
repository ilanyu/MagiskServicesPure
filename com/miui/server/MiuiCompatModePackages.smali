.class public final Lcom/miui/server/MiuiCompatModePackages;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;,
        Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field private static final ATTR_CONFIG_NOTIFY_SUGGEST_APPS:Ljava/lang/String; = "notifySuggestApps"

.field private static final MODULE_CUTOUT_MODE:Ljava/lang/String; = "cutout_mode"

.field private static final MSG_DONT_SHOW_AGAIN:I = 0x69

.field private static final MSG_ON_APP_LAUNCH:I = 0x68

.field private static final MSG_READ:I = 0x65

.field private static final MSG_REGISTER_OBSERVER:I = 0x66

.field private static final MSG_UNREGISTER_OBSERVER:I = 0x67

.field private static final MSG_UPDATE_CLOUD_DATA:I = 0x6c

.field private static final MSG_WRITE:I = 0x64

.field private static final MSG_WRITE_CUTOUT_MODE:I = 0x6b

.field private static final MSG_WRITE_SPECIAL_MODE:I = 0x6a

.field private static final TAG:Ljava/lang/String; = "MiuiCompatModePackages"

.field private static final TAG_NAME_CONFIG:Ljava/lang/String; = "config"

.field private static final URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;


# instance fields
.field private mAlertDialog:Lmiui/app/AlertDialog;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCloudCutoutModePackages:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloudDataObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private final mCutoutModeFile:Landroid/util/AtomicFile;

.field private mDefaultAspect:F

.field private final mDefaultType:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNotchConfig:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotchSpecialModePackages:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifySuggestApps:Z

.field private final mPackages:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessObserver:Landroid/app/IMiuiProcessObserver;

.field private final mRestrictList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialModeFile:Landroid/util/AtomicFile;

.field private final mSuggestList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportNotchList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserCutoutModePackages:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    .line 70
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/server/MiuiCompatModePackages;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mUserCutoutModePackages:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mCloudCutoutModePackages:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    .line 439
    new-instance v0, Lcom/miui/server/MiuiCompatModePackages$3;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiCompatModePackages$3;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    .line 161
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    const-string v1, "android.dpi.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_f4

    .line 164
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "android.view.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.google.android.projection.gearhead"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.books"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.subcast.radio.android.prod"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.waze"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "tunein.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.stitcher.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string/jumbo v1, "org.npr.one"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.gaana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.quanticapps.quranandroid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.itunestoppodcastplayer.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    const-string/jumbo v0, "sirius"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    const-string v0, "dipper"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    const-string/jumbo v0, "sakura"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 181
    :cond_ed
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    const-string v1, "com.tencent.tmgp.pubgmhdce"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_f4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v0, "systemDir":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "miui-packages-compat.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 187
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "miui-specail-mode-v2.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    .line 188
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "cutout-mode.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mCutoutModeFile:Landroid/util/AtomicFile;

    .line 190
    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;-><init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    .line 191
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 193
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 199
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 200
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->getDeviceAspect()F

    .line 201
    new-instance v2, Lcom/miui/server/MiuiCompatModePackages$1;

    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-direct {v2, p0, v3}, Lcom/miui/server/MiuiCompatModePackages$1;-><init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mCloudDataObserver:Landroid/database/ContentObserver;

    .line 207
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mMainHandler:Landroid/os/Handler;

    .line 208
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/miui/server/MiuiCompatModePackages$2;

    invoke-direct {v3, p0}, Lcom/miui/server/MiuiCompatModePackages$2;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readCutoutModeConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readSpecialModeConfig()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/MiuiCompatModePackages;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mCloudDataObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miui/server/MiuiCompatModePackages;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleUpdatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleRemovePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/server/MiuiCompatModePackages;)Lmiui/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/server/MiuiCompatModePackages;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;
    .param p1, "x1"    # Lmiui/app/AlertDialog;

    .line 60
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->gotoMaxAspectSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readPackagesConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readSuggestApps()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleRegisterObservers()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleUnregisterObservers()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleOnAppLaunch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleDontShowAgain()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 60
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->updateCloudData()V

    return-void
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .registers 1

    .line 60
    sget-object v0, Lcom/miui/server/MiuiCompatModePackages;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    return-object v0
.end method

.method private createDialog()V
    .registers 4

    .line 937
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 938
    const v1, 0x110b00f0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 939
    const v1, 0x110b00f1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    .line 940
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 941
    const v2, 0x110b00f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 940
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$6;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$6;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 942
    const v2, 0x110b00f3

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$5;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$5;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    .line 950
    const v2, 0x110b00f4

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    .line 961
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 962
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 964
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$7;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$7;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 970
    return-void
.end method

.method private getDefaultMode(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 668
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getDefaultNotchConfig(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 737
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 738
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 739
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 741
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    .line 743
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->resolveNotchConfig(Ljava/lang/String;)I

    move-result v1

    .line 744
    .local v1, "type":I
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 745
    :try_start_21
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    monitor-exit v2

    .line 747
    return v1

    .line 746
    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v0

    .line 741
    .end local v1    # "type":I
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private getDeviceAspect()F
    .registers 7

    .line 655
    iget v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_30

    .line 656
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 657
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 658
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 659
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 660
    .local v3, "min":I
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 661
    .local v4, "max":I
    if-nez v3, :cond_28

    goto :goto_2e

    :cond_28
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v5, v4

    mul-float/2addr v1, v5

    int-to-float v5, v3

    div-float/2addr v1, v5

    .line 662
    .local v1, "ratio":F
    :goto_2e
    iput v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    .line 664
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "ratio":F
    .end local v2    # "point":Landroid/graphics/Point;
    .end local v3    # "min":I
    .end local v4    # "max":I
    :cond_30
    iget v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    return v0
.end method

.method private getPackageMode(Ljava/lang/String;)F
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "mode":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_4
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    .line 462
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1c

    .line 463
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_14
    int-to-float v1, v1

    goto :goto_1b

    :cond_16
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultMode(Ljava/lang/String;)I

    move-result v1

    goto :goto_14

    :goto_1b
    return v1

    .line 462
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method private getSpecialMode(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "mode":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 469
    :try_start_4
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    .line 470
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_17

    .line 471
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1

    .line 470
    :catchall_17
    move-exception v2

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private gotoMaxAspectSettings()V
    .registers 4

    .line 980
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 981
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const-string v1, ":settings:show_fragment"

    const-string v2, "com.android.settings.MaxAspectRatioSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 985
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 988
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_28

    .line 986
    :catch_20
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiCompatModePackages"

    const-string v2, "error when goto max aspect settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method private handleDontShowAgain()V
    .registers 3

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    .line 974
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 975
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 976
    return-void
.end method

.method private handleOnAppLaunch(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 922
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    .line 924
    :try_start_d
    const-string v0, "MiuiCompatModePackages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launching suggest app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    if-nez v0, :cond_2b

    .line 926
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->createDialog()V

    .line 929
    :cond_2b
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_30} :catch_31

    .line 932
    goto :goto_39

    .line 930
    :catch_31
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiCompatModePackages"

    const-string v2, "error showing suggest dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_39
    :goto_39
    return-void
.end method

.method private handleRegisterObservers()V
    .registers 4

    .line 887
    iget-boolean v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    if-nez v0, :cond_5

    .line 888
    return-void

    .line 891
    :cond_5
    new-instance v0, Lcom/miui/server/MiuiCompatModePackages$4;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiCompatModePackages$4;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    .line 900
    :try_start_c
    const-string v0, "MiuiCompatModePackages"

    const-string/jumbo v1, "registering process observer..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    .line 905
    goto :goto_29

    .line 902
    :catch_1e
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    .line 904
    const-string v1, "MiuiCompatModePackages"

    const-string v2, "error when registering process observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method private handleRemovePackage(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 700
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 701
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removeSpecialModePackage(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method private handleUnregisterObservers()V
    .registers 5

    .line 909
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    if-eqz v0, :cond_27

    .line 910
    const-string v0, "MiuiCompatModePackages"

    const-string/jumbo v1, "unregistering process observer..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v0, 0x0

    :try_start_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_1b
    .catchall {:try_start_d .. :try_end_16} :catchall_19

    .line 916
    :goto_16
    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    .line 917
    goto :goto_27

    .line 916
    :catchall_19
    move-exception v1

    goto :goto_24

    .line 913
    :catch_1b
    move-exception v1

    .line 914
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1c
    const-string v2, "MiuiCompatModePackages"

    const-string v3, "error when unregistering process observer"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 914
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_16

    .line 916
    :goto_24
    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    throw v1

    .line 919
    :cond_27
    :goto_27
    return-void
.end method

.method private handleUpdatePackage(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3f

    .line 709
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v0

    .line 710
    .local v0, "isDefaultRestrict":Z
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v1

    .line 711
    .local v1, "isRestrict":Z
    if-eq v0, v1, :cond_1f

    .line 712
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 713
    :cond_1f
    const-string v2, "MiuiCompatModePackages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " updated, removing config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 716
    :cond_3e
    return-void

    .line 708
    .end local v0    # "isDefaultRestrict":Z
    .end local v1    # "isRestrict":Z
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private isDefaultRestrict(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 650
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    .line 651
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isNotchSpecailMode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 795
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getSpecialMode(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private readCutoutModeConfig()V
    .registers 13

    .line 318
    const/4 v0, 0x0

    move-object v1, v0

    .line 320
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mCutoutModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 321
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 322
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 323
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 324
    .local v3, "eventType":I
    :goto_1a
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_26

    if-eq v3, v4, :cond_26

    .line 326
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_9a
    .catchall {:try_start_2 .. :try_end_24} :catchall_98

    move v3, v4

    goto :goto_1a

    .line 328
    :cond_26
    if-ne v3, v4, :cond_30

    .line 365
    if-eqz v1, :cond_2f

    .line 367
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 369
    goto :goto_2f

    .line 368
    :catch_2e
    move-exception v0

    .line 329
    :cond_2f
    :goto_2f
    return-void

    .line 332
    :cond_30
    :try_start_30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v6, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "cutout-mode"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 335
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    .line 337
    :cond_46
    if-ne v3, v5, :cond_7d

    .line 338
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 339
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v5, :cond_7d

    .line 340
    const-string/jumbo v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 341
    const-string/jumbo v8, "name"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "pkg":Ljava/lang/String;
    if-eqz v8, :cond_7d

    .line 343
    const-string/jumbo v9, "mode"

    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6c} :catch_9a
    .catchall {:try_start_30 .. :try_end_6c} :catchall_98

    .line 344
    .local v9, "mode":Ljava/lang/String;
    const/4 v10, 0x0

    .line 345
    .local v10, "modeInt":I
    if-eqz v9, :cond_7d

    .line 347
    :try_start_6f
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move v10, v11

    .line 348
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_7b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7b} :catch_9a
    .catchall {:try_start_6f .. :try_end_7b} :catchall_98

    .line 350
    goto :goto_7d

    .line 349
    :catch_7c
    move-exception v11

    .line 356
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "modeInt":I
    :cond_7d
    :goto_7d
    :try_start_7d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    .line 357
    if-ne v3, v4, :cond_46

    .line 359
    :cond_84
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_87} :catch_9a
    .catchall {:try_start_7d .. :try_end_87} :catchall_98

    .line 360
    :try_start_87
    iget-object v4, p0, Lcom/miui/server/MiuiCompatModePackages;->mUserCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 361
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_95

    .line 365
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_a8

    .line 367
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    .line 369
    :goto_92
    goto :goto_a8

    .line 368
    :catch_93
    move-exception v0

    goto :goto_92

    .line 361
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "eventType":I
    .restart local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "tagName":Ljava/lang/String;
    :catchall_95
    move-exception v4

    :try_start_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    :try_start_97
    throw v4
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_98} :catch_9a
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    .line 365
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "tagName":Ljava/lang/String;
    :catchall_98
    move-exception v0

    goto :goto_a9

    .line 362
    :catch_9a
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9b
    const-string v2, "MiuiCompatModePackages"

    const-string v3, "Error reading compat-packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_98

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_a8

    .line 367
    :try_start_a4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_93

    goto :goto_92

    .line 372
    :cond_a8
    :goto_a8
    return-void

    .line 365
    :goto_a9
    if-eqz v1, :cond_b0

    .line 367
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 369
    goto :goto_b0

    .line 368
    :catch_af
    move-exception v2

    .line 369
    :cond_b0
    :goto_b0
    throw v0
.end method

.method private readPackagesConfig()V
    .registers 13

    .line 375
    const/4 v0, 0x0

    move-object v1, v0

    .line 377
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 378
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 379
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 380
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 381
    .local v3, "eventType":I
    :goto_1a
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_26

    if-eq v3, v4, :cond_26

    .line 383
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_b4
    .catchall {:try_start_2 .. :try_end_24} :catchall_b2

    move v3, v4

    goto :goto_1a

    .line 385
    :cond_26
    if-ne v3, v4, :cond_30

    .line 425
    if-eqz v1, :cond_2f

    .line 427
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 429
    goto :goto_2f

    .line 428
    :catch_2e
    move-exception v0

    .line 386
    :cond_2f
    :goto_2f
    return-void

    .line 389
    :cond_30
    :try_start_30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 390
    .local v6, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 391
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 392
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    .line 394
    :cond_46
    if-ne v3, v5, :cond_97

    .line 395
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 396
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v5, :cond_97

    .line 397
    const-string/jumbo v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 398
    const-string/jumbo v8, "name"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "pkg":Ljava/lang/String;
    if-eqz v8, :cond_7d

    .line 400
    const-string/jumbo v9, "mode"

    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6c} :catch_b4
    .catchall {:try_start_30 .. :try_end_6c} :catchall_b2

    .line 401
    .local v9, "mode":Ljava/lang/String;
    const/4 v10, 0x0

    .line 402
    .local v10, "modeInt":I
    if-eqz v9, :cond_76

    .line 404
    :try_start_6f
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_73} :catch_75
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_73} :catch_b4
    .catchall {:try_start_6f .. :try_end_73} :catchall_b2

    move v10, v11

    .line 406
    goto :goto_76

    .line 405
    :catch_75
    move-exception v11

    .line 408
    :cond_76
    :goto_76
    :try_start_76
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "modeInt":I
    :cond_7d
    goto :goto_97

    :cond_7e
    const-string v8, "config"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 411
    const-string/jumbo v8, "notifySuggestApps"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 412
    .local v8, "notifySuggestApps":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    .line 416
    .end local v8    # "notifySuggestApps":Ljava/lang/String;
    :cond_97
    :goto_97
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    .line 417
    if-ne v3, v4, :cond_46

    .line 419
    :cond_9e
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a1} :catch_b4
    .catchall {:try_start_76 .. :try_end_a1} :catchall_b2

    .line 420
    :try_start_a1
    iget-object v4, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 421
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_af

    .line 425
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_c2

    .line 427
    :try_start_a9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 429
    :goto_ac
    goto :goto_c2

    .line 428
    :catch_ad
    move-exception v0

    goto :goto_ac

    .line 421
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "eventType":I
    .restart local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "tagName":Ljava/lang/String;
    :catchall_af
    move-exception v4

    :try_start_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v4
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b2} :catch_b4
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 425
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "tagName":Ljava/lang/String;
    :catchall_b2
    move-exception v0

    goto :goto_c3

    .line 422
    :catch_b4
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b5
    const-string v2, "MiuiCompatModePackages"

    const-string v3, "Error reading compat-packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_b2

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_c2

    .line 427
    :try_start_be
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_ad

    goto :goto_ac

    .line 432
    :cond_c2
    :goto_c2
    return-void

    .line 425
    :goto_c3
    if-eqz v1, :cond_ca

    .line 427
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 429
    goto :goto_ca

    .line 428
    :catch_c9
    move-exception v2

    .line 429
    :cond_ca
    :goto_ca
    throw v0
.end method

.method private readSpecialModeConfig()V
    .registers 13

    .line 261
    const/4 v0, 0x0

    move-object v1, v0

    .line 263
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 264
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 265
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 266
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 267
    .local v3, "eventType":I
    :goto_1a
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_26

    if-eq v3, v4, :cond_26

    .line 269
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_9b
    .catchall {:try_start_2 .. :try_end_24} :catchall_99

    move v3, v4

    goto :goto_1a

    .line 271
    :cond_26
    if-ne v3, v4, :cond_30

    .line 308
    if-eqz v1, :cond_2f

    .line 310
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 312
    goto :goto_2f

    .line 311
    :catch_2e
    move-exception v0

    .line 272
    :cond_2f
    :goto_2f
    return-void

    .line 275
    :cond_30
    :try_start_30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v6, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "special-mode"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 278
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    .line 280
    :cond_47
    if-ne v3, v5, :cond_7e

    .line 281
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 282
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v5, :cond_7e

    .line 283
    const-string/jumbo v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 284
    const-string/jumbo v8, "name"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, "pkg":Ljava/lang/String;
    if-eqz v8, :cond_7e

    .line 286
    const-string/jumbo v9, "mode"

    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6d} :catch_9b
    .catchall {:try_start_30 .. :try_end_6d} :catchall_99

    .line 287
    .local v9, "mode":Ljava/lang/String;
    const/4 v10, 0x0

    .line 288
    .local v10, "modeInt":I
    if-eqz v9, :cond_77

    .line 290
    :try_start_70
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_74} :catch_76
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_9b
    .catchall {:try_start_70 .. :try_end_74} :catchall_99

    move v10, v11

    .line 292
    goto :goto_77

    .line 291
    :catch_76
    move-exception v11

    .line 294
    :cond_77
    :goto_77
    :try_start_77
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "modeInt":I
    :cond_7e
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v3, v8

    .line 300
    if-ne v3, v4, :cond_47

    .line 302
    :cond_85
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_88} :catch_9b
    .catchall {:try_start_77 .. :try_end_88} :catchall_99

    .line 303
    :try_start_88
    iget-object v4, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 304
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_96

    .line 308
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_a9

    .line 310
    :try_start_90
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 312
    :goto_93
    goto :goto_a9

    .line 311
    :catch_94
    move-exception v0

    goto :goto_93

    .line 304
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "eventType":I
    .restart local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "tagName":Ljava/lang/String;
    :catchall_96
    move-exception v4

    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    :try_start_98
    throw v4
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_99} :catch_9b
    .catchall {:try_start_98 .. :try_end_99} :catchall_99

    .line 308
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "eventType":I
    .end local v6    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "tagName":Ljava/lang/String;
    :catchall_99
    move-exception v0

    goto :goto_aa

    .line 305
    :catch_9b
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9c
    const-string v2, "MiuiCompatModePackages"

    const-string v3, "Error reading compat-packages"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_99

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_a9

    .line 310
    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_94

    goto :goto_93

    .line 315
    :cond_a9
    :goto_a9
    return-void

    .line 308
    :goto_aa
    if-eqz v1, :cond_b1

    .line 310
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 312
    goto :goto_b1

    .line 311
    :catch_b0
    move-exception v2

    .line 312
    :cond_b1
    :goto_b1
    throw v0
.end method

.method private readSuggestApps()V
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "arr":[Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 437
    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "realRemove":Z
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_4
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 676
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const/4 v0, 0x1

    .line 679
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1e

    .line 680
    if-eqz v0, :cond_1d

    .line 681
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWrite()V

    .line 683
    :cond_1d
    return-void

    .line 679
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private removeSpecialModePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "realRemove":Z
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_4
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchConfig:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 690
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const/4 v0, 0x1

    .line 693
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1e

    .line 694
    if-eqz v0, :cond_1d

    .line 695
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWriteSpecialMode()V

    .line 697
    :cond_1d
    return-void

    .line 693
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private resolveDefaultAspectType(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 844
    const/4 v0, 0x4

    return v0

    .line 847
    :cond_a
    const/4 v0, 0x0

    .line 849
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    move-object v0, v2

    .line 851
    goto :goto_19

    .line 850
    :catch_18
    move-exception v2

    .line 852
    :goto_19
    if-nez v0, :cond_1c

    .line 853
    return v1

    .line 855
    :cond_1c
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 856
    .local v1, "metadata":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 857
    .local v2, "aspect":F
    if-eqz v1, :cond_27

    .line 858
    const-string v3, "android.max_aspect"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 860
    :cond_27
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->getDeviceAspect()F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_31

    .line 861
    const/4 v3, 0x1

    return v3

    .line 864
    :cond_31
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 865
    const/4 v3, 0x3

    return v3

    .line 867
    :cond_3b
    const/4 v3, 0x5

    return v3
.end method

.method private resolveNotchConfig(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSupportNotchList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 752
    const/16 v0, 0x700

    return v0

    .line 756
    :cond_b
    const/4 v0, 0x0

    .line 758
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_19

    move-object v0, v2

    .line 761
    goto :goto_1a

    .line 760
    :catch_19
    move-exception v2

    .line 762
    :goto_1a
    if-nez v0, :cond_1d

    .line 763
    return v1

    .line 765
    :cond_1d
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 766
    .local v1, "metadata":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 767
    .local v2, "config":I
    if-eqz v1, :cond_47

    .line 768
    const-string/jumbo v3, "notch.config"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "notch":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 770
    or-int/lit16 v2, v2, 0x100

    .line 771
    const-string/jumbo v4, "portrait"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 772
    or-int/lit16 v2, v2, 0x200

    .line 774
    :cond_3c
    const-string/jumbo v4, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 775
    or-int/lit16 v2, v2, 0x400

    .line 779
    .end local v3    # "notch":Ljava/lang/String;
    :cond_47
    return v2
.end method

.method private scheduleWrite()V
    .registers 5

    .line 475
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    .line 476
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 477
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 478
    return-void
.end method

.method private scheduleWriteCutoutMode()V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 489
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 490
    return-void
.end method

.method private scheduleWriteSpecialMode()V
    .registers 5

    .line 481
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 483
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 484
    return-void
.end method

.method private updateCloudData()V
    .registers 10

    .line 228
    const-string v0, "MiuiCompatModePackages"

    const-string/jumbo v1, "updateCloudData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_b
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mCloudCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 231
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_7a

    .line 232
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    .line 233
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cutout_mode"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 234
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    if-eqz v0, :cond_79

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_26

    goto :goto_79

    .line 238
    :cond_26
    :try_start_26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 239
    .local v1, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 240
    .local v3, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    invoke-virtual {v3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "json":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 242
    goto :goto_2f

    .line 245
    :cond_46
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 246
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "pkg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "pkg":Ljava/lang/String;
    const-string/jumbo v7, "mode"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 248
    .local v7, "mode":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 249
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v3    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "mode":I
    :cond_66
    goto :goto_2f

    .line 252
    :cond_67
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_6a} :catch_74

    .line 253
    :try_start_6a
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mCloudCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 254
    monitor-exit v2

    .line 257
    .end local v1    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_78

    .line 254
    .restart local v1    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_71
    move-exception v3

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_71

    :try_start_73
    throw v3
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_74} :catch_74

    .line 255
    .end local v1    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_74
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_78
    return-void

    .line 235
    :cond_79
    :goto_79
    return-void

    .line 231
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v1
.end method


# virtual methods
.method public getAspectRatio(Ljava/lang/String;)F
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 719
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    goto :goto_b

    :cond_9
    const/high16 v0, 0x40400000    # 3.0f

    :goto_b
    return v0
.end method

.method public getCutoutMode(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mUserCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 809
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mUserCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 811
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_44

    .line 812
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 813
    :try_start_1d
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mCloudCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 814
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mCloudCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 816
    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_41

    .line 817
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultNotchConfig(Ljava/lang/String;)I

    move-result v0

    .line 818
    .local v0, "flag":I
    const/16 v1, 0x700

    .line 821
    .local v1, "notchFlag":I
    const/4 v2, 0x0

    .line 822
    .local v2, "mode":I
    and-int v3, v0, v1

    if-ne v3, v1, :cond_40

    .line 823
    const/4 v2, 0x1

    .line 825
    :cond_40
    return v2

    .line 816
    .end local v0    # "flag":I
    .end local v1    # "notchFlag":I
    .end local v2    # "mode":I
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0

    .line 811
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public getDefaultAspectType(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 831
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 833
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    .line 835
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->resolveDefaultAspectType(Ljava/lang/String;)I

    move-result v1

    .line 836
    .local v1, "type":I
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 837
    :try_start_21
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    monitor-exit v2

    .line 839
    return v1

    .line 838
    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw v0

    .line 833
    .end local v1    # "type":I
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public getNotchConfig(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "config":I
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_4
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 726
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 727
    .local v2, "mode":Ljava/lang/Integer;
    if-eqz v2, :cond_21

    .line 728
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1f

    const/16 v3, 0x80

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    move v0, v3

    .line 731
    .end local v2    # "mode":Ljava/lang/Integer;
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_28

    .line 732
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultNotchConfig(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    .line 733
    return v0

    .line 731
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public isRestrictAspect(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 871
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getPackageMode(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method saveCompatModes()V
    .registers 13

    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v0, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 495
    :try_start_8
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 496
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_d6

    .line 498
    const/4 v1, 0x0

    move-object v2, v1

    .line 501
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 502
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 503
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 504
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 505
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 506
    const-string v5, "compat-packages"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    const-string v5, "config"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    const-string/jumbo v5, "notifySuggestApps"

    iget-boolean v6, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 511
    const-string v5, "config"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 514
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 515
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 516
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 517
    .local v7, "pkg":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 518
    .local v8, "mode":I
    if-lez v8, :cond_75

    move v9, v4

    goto :goto_76

    :cond_75
    const/4 v9, 0x0

    .line 519
    .local v9, "restrict":Z
    :goto_76
    invoke-direct {p0, v7}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v10

    if-ne v9, v10, :cond_7d

    .line 520
    goto :goto_55

    .line 524
    :cond_7d
    invoke-virtual {p0, v7}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v4, :cond_84

    .line 525
    goto :goto_55

    .line 528
    :cond_84
    const-string/jumbo v10, "pkg"

    invoke-interface {v3, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 529
    const-string/jumbo v10, "name"

    invoke-interface {v3, v1, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 530
    const-string/jumbo v10, "mode"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v1, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    const-string/jumbo v10, "pkg"

    invoke-interface {v3, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "mode":I
    .end local v9    # "restrict":Z
    goto :goto_55

    .line 534
    :cond_a1
    const-string v4, "compat-packages"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 537
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_ae} :catch_b8
    .catchall {:try_start_10 .. :try_end_ae} :catchall_b6

    .line 544
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz v2, :cond_cd

    .line 546
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b4

    .line 548
    :goto_b3
    goto :goto_cd

    .line 547
    :catch_b4
    move-exception v1

    goto :goto_b3

    .line 544
    :catchall_b6
    move-exception v1

    goto :goto_ce

    .line 538
    :catch_b8
    move-exception v1

    .line 539
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_b9
    const-string v3, "MiuiCompatModePackages"

    const-string v4, "Error writing compat packages"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    if-eqz v2, :cond_c7

    .line 541
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_c7
    .catchall {:try_start_b9 .. :try_end_c7} :catchall_b6

    .line 544
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_c7
    if-eqz v2, :cond_cd

    .line 546
    :try_start_c9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_b4

    goto :goto_b3

    .line 551
    :cond_cd
    :goto_cd
    return-void

    .line 544
    :goto_ce
    if-eqz v2, :cond_d5

    .line 546
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    .line 548
    goto :goto_d5

    .line 547
    :catch_d4
    move-exception v3

    .line 548
    :cond_d5
    :goto_d5
    throw v1

    .line 496
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_d6
    move-exception v2

    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v2
.end method

.method saveCutoutModeFile()V
    .registers 11

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v0, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 607
    :try_start_8
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mUserCutoutModePackages:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 608
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_ad

    .line 610
    const/4 v1, 0x0

    move-object v2, v1

    .line 613
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mCutoutModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 614
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 615
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 616
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 617
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 618
    const-string v4, "cutout-mode"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 620
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 621
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 622
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 623
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 624
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 625
    .local v7, "mode":I
    const-string/jumbo v8, "pkg"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    const-string/jumbo v8, "name"

    invoke-interface {v3, v1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    const-string/jumbo v8, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    const-string/jumbo v8, "pkg"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "mode":I
    goto :goto_3f

    .line 631
    :cond_78
    const-string v5, "cutout-mode"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 634
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mCutoutModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_85} :catch_8f
    .catchall {:try_start_10 .. :try_end_85} :catchall_8d

    .line 641
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz v2, :cond_a4

    .line 643
    :try_start_87
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 645
    :goto_8a
    goto :goto_a4

    .line 644
    :catch_8b
    move-exception v1

    goto :goto_8a

    .line 641
    :catchall_8d
    move-exception v1

    goto :goto_a5

    .line 635
    :catch_8f
    move-exception v1

    .line 636
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_90
    const-string v3, "MiuiCompatModePackages"

    const-string v4, "Error writing cutout packages"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    if-eqz v2, :cond_9e

    .line 638
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mCutoutModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9e
    .catchall {:try_start_90 .. :try_end_9e} :catchall_8d

    .line 641
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_9e
    if-eqz v2, :cond_a4

    .line 643
    :try_start_a0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_8b

    goto :goto_8a

    .line 648
    :cond_a4
    :goto_a4
    return-void

    .line 641
    :goto_a5
    if-eqz v2, :cond_ac

    .line 643
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    .line 645
    goto :goto_ac

    .line 644
    :catch_ab
    move-exception v3

    .line 645
    :cond_ac
    :goto_ac
    throw v1

    .line 608
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v2
.end method

.method saveSpecialModeFile()V
    .registers 13

    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 555
    .local v0, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_8
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 557
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_b7

    .line 559
    const/4 v1, 0x0

    move-object v2, v1

    .line 562
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 563
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 564
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 565
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 566
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 567
    const-string/jumbo v5, "special-mode"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 570
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 571
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 572
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 573
    .local v7, "pkg":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 574
    .local v8, "mode":I
    if-lez v8, :cond_60

    move v9, v4

    goto :goto_61

    :cond_60
    const/4 v9, 0x0

    .line 575
    .local v9, "special":Z
    :goto_61
    if-nez v9, :cond_64

    .line 576
    goto :goto_40

    .line 579
    :cond_64
    const-string/jumbo v10, "pkg"

    invoke-interface {v3, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    const-string/jumbo v10, "name"

    invoke-interface {v3, v1, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 581
    const-string/jumbo v10, "mode"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v1, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    const-string/jumbo v10, "pkg"

    invoke-interface {v3, v1, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "mode":I
    .end local v9    # "special":Z
    goto :goto_40

    .line 585
    :cond_81
    const-string/jumbo v4, "special-mode"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 588
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8f} :catch_99
    .catchall {:try_start_10 .. :try_end_8f} :catchall_97

    .line 595
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz v2, :cond_ae

    .line 597
    :try_start_91
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    .line 599
    :goto_94
    goto :goto_ae

    .line 598
    :catch_95
    move-exception v1

    goto :goto_94

    .line 595
    :catchall_97
    move-exception v1

    goto :goto_af

    .line 589
    :catch_99
    move-exception v1

    .line 590
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_9a
    const-string v3, "MiuiCompatModePackages"

    const-string v4, "Error writing compat packages"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    if-eqz v2, :cond_a8

    .line 592
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mSpecialModeFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_97

    .line 595
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_a8
    if-eqz v2, :cond_ae

    .line 597
    :try_start_aa
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_95

    goto :goto_94

    .line 602
    :cond_ae
    :goto_ae
    return-void

    .line 595
    :goto_af
    if-eqz v2, :cond_b6

    .line 597
    :try_start_b1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    .line 599
    goto :goto_b6

    .line 598
    :catch_b5
    move-exception v3

    .line 599
    :cond_b6
    :goto_b6
    throw v1

    .line 557
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_b7
    move-exception v2

    :try_start_b8
    monitor-exit v1
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw v2
.end method

.method public setCutoutMode(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 799
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mUserCutoutModePackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    .line 802
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWriteCutoutMode()V

    .line 803
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 804
    return-void

    .line 801
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public setNotchSpecialMode(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "special"    # Z

    .line 783
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isNotchSpecailMode(Ljava/lang/String;)Z

    move-result v0

    .line 785
    .local v0, "oldSpecail":Z
    if-eq p2, v0, :cond_27

    .line 786
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_9
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotchSpecialModePackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_24

    .line 789
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWriteSpecialMode()V

    .line 790
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_27

    .line 788
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 792
    :cond_27
    :goto_27
    return-void
.end method

.method public setRestrictAspect(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "restrict"    # Z

    .line 875
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    .line 877
    .local v0, "curRestrict":Z
    if-eq p2, v0, :cond_27

    .line 878
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    :try_start_9
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_24

    .line 881
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWrite()V

    .line 882
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_27

    .line 880
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 884
    :cond_27
    :goto_27
    return-void
.end method

.method public updateCloudDataAsync()V
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 225
    return-void
.end method
