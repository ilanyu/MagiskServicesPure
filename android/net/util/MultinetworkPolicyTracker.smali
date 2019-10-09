.class public Landroid/net/util/MultinetworkPolicyTracker;
.super Ljava/lang/Object;
.source "MultinetworkPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private volatile mAvoidBadWifi:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mMeteredMultipathPreference:I

.field private final mReevaluateRunnable:Ljava/lang/Runnable;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

.field private final mSettingsUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/MultinetworkPolicyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/util/MultinetworkPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "avoidBadWifiCallback"    # Ljava/lang/Runnable;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    .line 78
    iput-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v1, Landroid/net/util/-$$Lambda$MultinetworkPolicyTracker$0siHK6f4lHJz8hbdHbT6G4Kp-V4;

    invoke-direct {v1, p0, p3}, Landroid/net/util/-$$Lambda$MultinetworkPolicyTracker$0siHK6f4lHJz8hbdHbT6G4Kp-V4;-><init>(Landroid/net/util/MultinetworkPolicyTracker;Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v2, "network_avoid_bad_wifi"

    .line 87
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "network_metered_multipath_preference"

    .line 88
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v1, v0

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingsUris:Ljava/util/List;

    .line 89
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    .line 90
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    invoke-direct {v0, p0}, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;-><init>(Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    .line 91
    new-instance v0, Landroid/net/util/MultinetworkPolicyTracker$1;

    invoke-direct {v0, p0}, Landroid/net/util/MultinetworkPolicyTracker$1;-><init>(Landroid/net/util/MultinetworkPolicyTracker;)V

    iput-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateAvoidBadWifi()Z

    .line 99
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateMeteredMultipathPreference()V

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 59
    sget-object v0, Landroid/net/util/MultinetworkPolicyTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/util/MultinetworkPolicyTracker;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/net/util/MultinetworkPolicyTracker;

    .line 59
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingsUris:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic lambda$new$0(Landroid/net/util/MultinetworkPolicyTracker;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "avoidBadWifiCallback"    # Ljava/lang/Runnable;

    .line 81
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateAvoidBadWifi()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 82
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 84
    :cond_b
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->updateMeteredMultipathPreference()V

    .line 85
    return-void
.end method


# virtual methods
.method public configMeteredMultipathPreference()I
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public configRestrictsAvoidBadWifi()Z
    .registers 3

    .line 134
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public getAvoidBadWifi()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    return v0
.end method

.method public getAvoidBadWifiSetting()Ljava/lang/String;
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeteredMultipathPreference()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mMeteredMultipathPreference:I

    return v0
.end method

.method public reevaluate()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public shouldNotifyWifiUnvalidated()Z
    .registers 2

    .line 141
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public shutdown()V
    .registers 3

    .line 116
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 118
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method

.method public start()V
    .registers 8

    .line 103
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingsUris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 104
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/util/MultinetworkPolicyTracker;->mSettingObserver:Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 105
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_6

    .line 107
    :cond_1b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->reevaluate()V

    .line 113
    return-void
.end method

.method public updateAvoidBadWifi()Z
    .registers 6

    .line 154
    const-string v0, "1"

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 155
    .local v0, "settingAvoidBadWifi":Z
    iget-boolean v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    .line 156
    .local v1, "prev":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_19

    :cond_17
    move v4, v3

    goto :goto_1a

    :cond_19
    :goto_19
    move v4, v2

    :goto_1a
    iput-boolean v4, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    .line 157
    iget-boolean v4, p0, Landroid/net/util/MultinetworkPolicyTracker;->mAvoidBadWifi:Z

    if-eq v4, v1, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    return v2
.end method

.method public updateMeteredMultipathPreference()V
    .registers 4

    .line 169
    iget-object v0, p0, Landroid/net/util/MultinetworkPolicyTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_metered_multipath_preference"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "setting":Ljava/lang/String;
    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/net/util/MultinetworkPolicyTracker;->mMeteredMultipathPreference:I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_10

    .line 174
    goto :goto_17

    .line 172
    :catch_10
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/net/util/MultinetworkPolicyTracker;->configMeteredMultipathPreference()I

    move-result v2

    iput v2, p0, Landroid/net/util/MultinetworkPolicyTracker;->mMeteredMultipathPreference:I

    .line 175
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_17
    return-void
.end method
