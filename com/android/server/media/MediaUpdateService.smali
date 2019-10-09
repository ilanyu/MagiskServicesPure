.class public Lcom/android/server/media/MediaUpdateService;
.super Lcom/android/server/SystemService;
.source "MediaUpdateService.java"


# static fields
.field private static final DEBUG:Z

.field private static final EXTRACTOR_UPDATE_SERVICE_NAME:Ljava/lang/String; = "media.extractor.update"

.field private static final MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaUpdateService"


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-string v0, "MediaUpdateService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaUpdateService;->DEBUG:Z

    .line 42
    const-string/jumbo v0, "ro.mediacomponents.package"

    .line 43
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaUpdateService;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/media/MediaUpdateService;Landroid/media/IMediaExtractorUpdateService;)Landroid/media/IMediaExtractorUpdateService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaUpdateService;
    .param p1, "x1"    # Landroid/media/IMediaExtractorUpdateService;

    .line 39
    iput-object p1, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaUpdateService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaUpdateService;

    .line 39
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->connect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaUpdateService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaUpdateService;

    .line 39
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->packageStateChanged()V

    return-void
.end method

.method private connect()V
    .registers 4

    .line 64
    const-string/jumbo v0, "media.extractor.update"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 65
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_15

    .line 67
    :try_start_9
    new-instance v1, Lcom/android/server/media/MediaUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaUpdateService$1;-><init>(Lcom/android/server/media/MediaUpdateService;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_13

    .line 77
    goto :goto_15

    .line 75
    :catch_13
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_15
    if-eqz v0, :cond_28

    .line 80
    invoke-static {v0}, Landroid/media/IMediaExtractorUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaExtractorUpdateService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    .line 81
    iget-object v1, p0, Lcom/android/server/media/MediaUpdateService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/media/MediaUpdateService$2;

    invoke-direct {v2, p0}, Lcom/android/server/media/MediaUpdateService$2;-><init>(Lcom/android/server/media/MediaUpdateService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 88
    :cond_28
    const-string v1, "MediaUpdateService"

    const-string/jumbo v2, "media.extractor.update not found."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_30
    return-void
.end method

.method private loadExtractorPlugins(Ljava/lang/String;)V
    .registers 5
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    if-eqz v0, :cond_9

    .line 154
    iget-object v0, p0, Lcom/android/server/media/MediaUpdateService;->mMediaExtractorUpdateService:Landroid/media/IMediaExtractorUpdateService;

    invoke-interface {v0, p1}, Landroid/media/IMediaExtractorUpdateService;->loadPlugins(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 158
    :cond_9
    goto :goto_12

    .line 156
    :catch_a
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaUpdateService"

    const-string v2, "Error in loadPlugins"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method private packageStateChanged()V
    .registers 7

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "packageInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    .line 135
    .local v1, "pluginsAvailable":Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/media/MediaUpdateService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object v0, v2

    .line 137
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move v1, v2

    .line 140
    goto :goto_36

    .line 138
    :catch_17
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MediaUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' not installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_36
    if-eqz v0, :cond_61

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v2, v3, :cond_61

    .line 142
    const-string v2, "MediaUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This update package is not for this platform version. Ignoring. platform:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targetSdk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    .line 147
    :cond_61
    nop

    .line 148
    if-eqz v0, :cond_69

    if-eqz v1, :cond_69

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_6b

    :cond_69
    const-string v2, ""

    .line 147
    :goto_6b
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaUpdateService;->loadExtractorPlugins(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private registerBroadcastReceiver()V
    .registers 8

    .line 93
    new-instance v1, Lcom/android/server/media/MediaUpdateService$3;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaUpdateService$3;-><init>(Lcom/android/server/media/MediaUpdateService;)V

    .line 120
    .local v1, "updateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v6, v0

    .line 121
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/media/MediaUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 129
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 56
    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_15
    sget-object v0, Lcom/android/server/media/MediaUpdateService;->MEDIA_UPDATE_PACKAGE_NAME:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 58
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->connect()V

    .line 59
    invoke-direct {p0}, Lcom/android/server/media/MediaUpdateService;->registerBroadcastReceiver()V

    .line 61
    :cond_23
    return-void
.end method
