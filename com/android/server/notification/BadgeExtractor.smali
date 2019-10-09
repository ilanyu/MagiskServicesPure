.class public Lcom/android/server/notification/BadgeExtractor;
.super Ljava/lang/Object;
.source "BadgeExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BadgeExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 34
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 37
    const/4 v0, 0x0

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_65

    .line 42
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    .line 44
    return-object v0

    .line 46
    :cond_f
    iget-object v1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/notification/RankingConfig;->badgingEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    .line 47
    .local v1, "userWantsBadges":Z
    iget-object v2, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 48
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/notification/RankingConfig;->canShowBadge(Ljava/lang/String;I)Z

    move-result v2

    .line 49
    .local v2, "appCanShowBadge":Z
    const/4 v3, 0x0

    if-eqz v1, :cond_50

    if-nez v2, :cond_33

    goto :goto_50

    .line 52
    :cond_33
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 53
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v4

    if-eqz v4, :cond_47

    if-eqz v2, :cond_47

    const/4 v4, 0x1

    goto :goto_48

    :cond_47
    move v4, v3

    :goto_48
    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_53

    .line 55
    :cond_4c
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    goto :goto_53

    .line 50
    :cond_50
    :goto_50
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 59
    :goto_53
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 60
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_64

    .line 61
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setShowBadge(Z)V

    .line 64
    :cond_64
    return-object v0

    .line 39
    .end local v1    # "userWantsBadges":Z
    .end local v2    # "appCanShowBadge":Z
    :cond_65
    :goto_65
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 69
    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 70
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 74
    return-void
.end method
