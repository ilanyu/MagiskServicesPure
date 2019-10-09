.class public Lcom/android/server/NetworkScorerAppManager;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScorerAppManager$SettingsFacade;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkScorerAppManager"

.field private static final VERBOSE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    const-string v0, "NetworkScorerAppManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    .line 50
    const-string v0, "NetworkScorerAppManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    invoke-direct {v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager$SettingsFacade;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingsFacade"    # Lcom/android/server/NetworkScorerAppManager$SettingsFacade;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    .line 62
    return-void
.end method

.method private canAccessLocation(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 214
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 216
    .local v1, "appOpsManager":Landroid/app/AppOpsManager;
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->isLocationModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 217
    invoke-virtual {v0, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_27

    .line 219
    invoke-virtual {v1, v3, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_27

    const/4 v3, 0x1

    nop

    .line 216
    :cond_27
    return v3
.end method

.method private findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 9
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 122
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 123
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 124
    const-string v0, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No metadata found on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_23
    return-object v1

    .line 128
    :cond_24
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.net.wifi.use_open_wifi_package"

    .line 129
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "useOpenWifiPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 131
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v2, :cond_50

    .line 132
    const-string v2, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No use_open_wifi_package metadata found on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_50
    return-object v1

    .line 137
    :cond_51
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 139
    .local v2, "enableUseOpenWifiIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 140
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 141
    .local v3, "resolveActivityInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v4, :cond_89

    .line 142
    const-string v4, "NetworkScorerAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_89
    if-eqz v3, :cond_96

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_96

    .line 146
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 149
    :cond_96
    return-object v1
.end method

.method private getDefaultPackageSetting()Ljava/lang/String;
    .registers 3

    .line 363
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 154
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_24

    .line 155
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 156
    const-string v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No metadata found on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_22
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_24
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.net.wifi.notification_channel_id_network_available"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkRecommendationsEnabledSetting()I
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkRecommendationsPackage()Ljava/lang/String;
    .registers 4

    .line 368
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_package"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 5
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .line 109
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.net.scoring.recommendation_service_label"

    .line 111
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 113
    return-object v0

    .line 116
    .end local v0    # "label":Ljava/lang/String;
    :cond_13
    invoke-virtual {p1, p2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    return-object v1
.end method

.method private getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 186
    return-object v1

    .line 190
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScorerAppData;

    .line 193
    .local v3, "app":Landroid/net/NetworkScorerAppData;
    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 194
    return-object v3

    .line 191
    .end local v3    # "app":Landroid/net/NetworkScorerAppData;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 198
    .end local v2    # "i":I
    :cond_27
    return-object v1
.end method

.method private hasPermissions(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 202
    invoke-direct {p0, p2}, Lcom/android/server/NetworkScorerAppManager;->hasScoreNetworksPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScorerAppManager;->canAccessLocation(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 202
    :goto_f
    return v0
.end method

.method private hasScoreNetworksPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 208
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private isLocationModeEnabled()Z
    .registers 5

    .line 224
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getSecureInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v3, 0x1

    nop

    :cond_10
    return v3
.end method

.method private setNetworkRecommendationsEnabledSetting(I)V
    .registers 5
    .param p1, "value"    # I

    .line 384
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_enabled"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 386
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_25

    .line 387
    const-string v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network_recommendations_enabled set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_25
    return-void
.end method

.method private setNetworkRecommendationsPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_recommendations_package"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_25

    .line 375
    const-string v0, "NetworkScorerAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network_recommendations_package set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_25
    return-void
.end method


# virtual methods
.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v0

    .line 177
    .local v0, "enabledSetting":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 178
    const/4 v1, 0x0

    return-object v1

    .line 181
    :cond_9
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v1

    return-object v1
.end method

.method public getAllValidScorers()Ljava/util/List;
    .registers 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .line 70
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v1, :cond_d

    const-string v1, "NetworkScorerAppManager"

    const-string v2, "getAllValidScorers()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_d
    iget-object v1, v0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.action.RECOMMEND_NETWORKS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "serviceIntent":Landroid/content/Intent;
    const/16 v3, 0x80

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 75
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_b1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    goto/16 :goto_b1

    .line 80
    :cond_2a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "appDataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_b0

    .line 82
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 83
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lcom/android/server/NetworkScorerAppManager;->hasPermissions(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 84
    sget-boolean v7, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v7, :cond_66

    .line 85
    const-string v7, "NetworkScorerAppManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is a valid scorer/recommender."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_66
    new-instance v11, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v11, "serviceComponentName":Landroid/content/ComponentName;
    invoke-direct {v0, v6, v1}, Lcom/android/server/NetworkScorerAppManager;->getRecommendationServiceLabel(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "serviceLabel":Ljava/lang/String;
    nop

    .line 91
    invoke-direct {v0, v6}, Lcom/android/server/NetworkScorerAppManager;->findUseOpenWifiNetworksActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 92
    .local v8, "useOpenWifiNetworksActivity":Landroid/content/ComponentName;
    nop

    .line 93
    invoke-static {v6}, Lcom/android/server/NetworkScorerAppManager;->getNetworkAvailableNotificationChannelId(Landroid/content/pm/ServiceInfo;)Ljava/lang/String;

    move-result-object v15

    .line 94
    .local v15, "networkAvailableNotificationChannelId":Ljava/lang/String;
    new-instance v14, Landroid/net/NetworkScorerAppData;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v9, v14

    move-object v12, v7

    move-object v13, v8

    move-object v0, v14

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Landroid/net/NetworkScorerAppData;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v7    # "serviceLabel":Ljava/lang/String;
    .end local v8    # "useOpenWifiNetworksActivity":Landroid/content/ComponentName;
    .end local v11    # "serviceComponentName":Landroid/content/ComponentName;
    .end local v15    # "networkAvailableNotificationChannelId":Ljava/lang/String;
    goto :goto_ab

    .line 99
    :cond_8f
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v0, :cond_ab

    const-string v0, "NetworkScorerAppManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is NOT a valid scorer/recommender."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_ab
    :goto_ab
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_30

    .line 104
    .end local v5    # "i":I
    :cond_b0
    return-object v4

    .line 76
    .end local v4    # "appDataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    :cond_b1
    :goto_b1
    sget-boolean v0, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v0, :cond_cb

    const-string v0, "NetworkScorerAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found 0 Services able to handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_cb
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public migrateNetworkScorerAppSettingIfNeeded()V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v1, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "network_scorer_app"

    .line 317
    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "scorerAppPkgNameSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 320
    return-void

    .line 323
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    .line 324
    .local v1, "currentAppData":Landroid/net/NetworkScorerAppData;
    if-nez v1, :cond_19

    .line 326
    return-void

    .line 329
    :cond_19
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v2, :cond_38

    .line 330
    const-string v2, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrating Settings.Global.NETWORK_SCORER_APP ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_38
    nop

    .line 338
    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 339
    .local v2, "enableUseOpenWifiActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v4, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "use_open_wifi_package"

    .line 340
    invoke-virtual {v3, v4, v5}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "useOpenWifiSetting":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_83

    if-eqz v2, :cond_83

    .line 343
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 344
    iget-object v4, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "use_open_wifi_package"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v4, :cond_83

    .line 347
    const-string v4, "NetworkScorerAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings.Global.USE_OPEN_WIFI_PACKAGE set to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_83
    iget-object v4, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "network_scorer_app"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v4, :cond_bf

    .line 355
    const-string v4, "NetworkScorerAppManager"

    const-string v5, "Settings.Global.NETWORK_SCORER_APP migration complete."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v4, p0, Lcom/android/server/NetworkScorerAppManager;->mSettingsFacade:Lcom/android/server/NetworkScorerAppManager$SettingsFacade;

    iget-object v5, p0, Lcom/android/server/NetworkScorerAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "use_open_wifi_package"

    .line 357
    invoke-virtual {v4, v5, v6}, Lcom/android/server/NetworkScorerAppManager$SettingsFacade;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "setting":Ljava/lang/String;
    const-string v5, "NetworkScorerAppManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings.Global.USE_OPEN_WIFI_PACKAGE is: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v4    # "setting":Ljava/lang/String;
    :cond_bf
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "oldPackageName":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 245
    return v2

    .line 248
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 249
    const-string v1, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network scorer forced off, was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 251
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 253
    return v2

    .line 257
    :cond_31
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 258
    const-string v1, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changing network scorer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 261
    return v2

    .line 263
    :cond_5c
    const-string v1, "NetworkScorerAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested network scorer is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v1, 0x0

    return v1
.end method

.method public updateState()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 280
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsEnabledSetting()I

    move-result v0

    .line 281
    .local v0, "enabledSetting":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 283
    sget-boolean v1, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v1, :cond_12

    const-string v1, "NetworkScorerAppManager"

    const-string v2, "Recommendations forced off."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_12
    return-void

    .line 288
    :cond_13
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getNetworkRecommendationsPackage()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "currentPackageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 290
    sget-boolean v2, Lcom/android/server/NetworkScorerAppManager;->VERBOSE:Z

    if-eqz v2, :cond_37

    const-string v2, "NetworkScorerAppManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is the active scorer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_37
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 292
    return-void

    .line 295
    :cond_3c
    const/4 v2, 0x0

    .line 297
    .local v2, "newEnabledSetting":I
    invoke-direct {p0}, Lcom/android/server/NetworkScorerAppManager;->getDefaultPackageSetting()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "defaultPackageName":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 299
    invoke-direct {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->getScorer(Ljava/lang/String;)Landroid/net/NetworkScorerAppData;

    move-result-object v4

    if-eqz v4, :cond_6b

    .line 300
    sget-boolean v4, Lcom/android/server/NetworkScorerAppManager;->DEBUG:Z

    if-eqz v4, :cond_67

    .line 301
    const-string v4, "NetworkScorerAppManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Defaulting the network recommendations app to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_67
    invoke-direct {p0, v3}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsPackage(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x1

    .line 308
    :cond_6b
    invoke-direct {p0, v2}, Lcom/android/server/NetworkScorerAppManager;->setNetworkRecommendationsEnabledSetting(I)V

    .line 309
    return-void
.end method
