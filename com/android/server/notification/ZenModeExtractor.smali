.class public Lcom/android/server/notification/ZenModeExtractor;
.super Ljava/lang/Object;
.source "ZenModeExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeExtractor"


# instance fields
.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-string v0, "ZenModeExtractor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 36
    sget-boolean v0, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "ZenModeExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_27
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 40
    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3b

    .line 45
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    if-nez v1, :cond_1b

    .line 46
    sget-boolean v1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    if-eqz v1, :cond_1a

    const-string v1, "ZenModeExtractor"

    const-string/jumbo v2, "skipping - no zen info available"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1a
    return-object v0

    .line 50
    :cond_1b
    iget-object v1, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 51
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 52
    iget-object v1, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 53
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 52
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_3a

    .line 55
    :cond_36
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 58
    :goto_3a
    return-object v0

    .line 41
    :cond_3b
    :goto_3b
    sget-boolean v1, Lcom/android/server/notification/ZenModeExtractor;->DBG:Z

    if-eqz v1, :cond_47

    const-string v1, "ZenModeExtractor"

    const-string/jumbo v2, "skipping empty notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_47
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 64
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 68
    iput-object p1, p0, Lcom/android/server/notification/ZenModeExtractor;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 69
    return-void
.end method
