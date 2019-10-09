.class public Lcom/android/server/display/PaperModeService;
.super Lcom/android/server/SystemService;
.source "PaperModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PaperModeService$ScreenOnReceiver;,
        Lcom/android/server/display/PaperModeService$UserSwitchReceiver;,
        Lcom/android/server/display/PaperModeService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaperModeService"

.field private static final URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

.field private static final URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPaperModeEnabled:Z

.field private mPaperModeTimeEnabled:Z

.field private mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-string/jumbo v0, "screen_paper_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    .line 37
    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/PaperModeService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/PaperModeService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/PaperModeService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/PaperModeService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/PaperModeService;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    return v0
.end method

.method private initColorService(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    const-string/jumbo v0, "is_xiaomi"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "com.qti.snapdragon.sdk.display.IColorService"

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_28

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.qti.service.colorservice"

    const-string v3, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    new-instance v2, Lcom/android/server/display/PaperModeService$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/PaperModeService$1;-><init>(Lcom/android/server/display/PaperModeService;)V

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_paper_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_57

    .line 93
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 95
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 98
    :cond_57
    return v2
.end method

.method private updatePaperMode()V
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    invoke-static {v0}, Landroid/provider/MiuiSettings$ScreenEffect;->setScreenPaperMode(Z)V

    .line 146
    return-void
.end method

.method private updateSettings()V
    .registers 6

    .line 116
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v3

    :goto_17
    iput-boolean v0, p0, Lcom/android/server/display/PaperModeService;->mPaperModeEnabled:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/server/display/PaperModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_paper_mode_time_enabled"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    iput-boolean v1, p0, Lcom/android/server/display/PaperModeService;->mPaperModeTimeEnabled:Z

    .line 124
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 58
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5a

    .line 59
    new-instance v0, Lcom/android/server/display/PaperModeService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/PaperModeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/PaperModeService$SettingsObserver;-><init>(Lcom/android/server/display/PaperModeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    .line 60
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_ENABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 62
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/PaperModeService;->URI_PAPER_MODE_TIME_ENABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/display/PaperModeService;->mSettingsObserver:Lcom/android/server/display/PaperModeService$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 64
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/PaperModeService$UserSwitchReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/PaperModeService$ScreenOnReceiver;-><init>(Lcom/android/server/display/PaperModeService;Lcom/android/server/display/PaperModeService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updateSettings()V

    .line 68
    iget-object v0, p0, Lcom/android/server/display/PaperModeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/display/PaperModeService;->initColorService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 69
    invoke-direct {p0}, Lcom/android/server/display/PaperModeService;->updatePaperMode()V

    .line 72
    :cond_5a
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 54
    return-void
.end method
