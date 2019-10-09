.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public alertRate:Lcom/android/server/notification/AlertRateLimiter;

.field public enqueueRate:Lcom/android/server/notification/RateEstimator;

.field public finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public final key:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:J

.field public mLastAccessTime:J

.field private mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public numAlertViolations:I

.field public numAutoCancel:I

.field public numBlocked:I

.field public numEnqueuedByApp:I

.field public numForegroundService:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPrivate:I

.field public numQuotaViolations:I

.field public numRateViolations:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numSuspendedByAdmin:I

.field public numUpdatedByApp:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I

.field public quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    .line 410
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    .line 412
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_imp_noisy_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 413
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_imp_quiet_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 414
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_importance_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    .line 415
    new-instance v0, Lcom/android/server/notification/RateEstimator;

    invoke-direct {v0}, Lcom/android/server/notification/RateEstimator;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    .line 416
    new-instance v0, Lcom/android/server/notification/AlertRateLimiter;

    invoke-direct {v0}, Lcom/android/server/notification/AlertRateLimiter;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    .line 417
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V
    .registers 8
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 725
    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b

    .line 726
    float-to-double v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 728
    :cond_b
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 4
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 719
    if-lez p3, :cond_5

    .line 720
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 722
    :cond_5
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "indent"    # Ljava/lang/String;

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v0, "output":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AggregatedStats{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "indentPlusTwo":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v2, "key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string/jumbo v2, "numEnqueuedByApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string/jumbo v2, "numPostedByApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string/jumbo v2, "numUpdatedByApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string/jumbo v2, "numRemovedByApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string/jumbo v2, "numPeopleCacheHit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string/jumbo v2, "numWithStaredPeople="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string/jumbo v2, "numWithValidPeople="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string/jumbo v2, "numPeopleCacheMiss="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string/jumbo v2, "numBlocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string/jumbo v2, "numSuspendedByAdmin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string/jumbo v2, "numWithActions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string/jumbo v2, "numPrivate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string/jumbo v2, "numSecret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string/jumbo v2, "numInterrupt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string/jumbo v2, "numWithBigText="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string/jumbo v2, "numWithBigPicture="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string/jumbo v2, "numForegroundService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string/jumbo v2, "numOngoing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    const-string/jumbo v2, "numAutoCancel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string/jumbo v2, "numWithLargeIcon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string/jumbo v2, "numWithInbox="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string/jumbo v2, "numWithMediaSession="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string/jumbo v2, "numWithTitle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string/jumbo v2, "numWithText="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string/jumbo v2, "numWithSubText="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string/jumbo v2, "numWithInfoText="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string/jumbo v2, "numRateViolations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    const-string/jumbo v2, "numAlertViolations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string/jumbo v2, "numQuotaViolations="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 427
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 428
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_e

    .line 429
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 432
    :cond_e
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1a

    .line 433
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 436
    :cond_1a
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_26

    .line 437
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 440
    :cond_26
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_32

    .line 441
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 444
    :cond_32
    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_46

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_46

    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v1, :cond_46

    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_4c

    .line 447
    :cond_46
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 450
    :cond_4c
    iget v1, v0, Landroid/app/Notification;->visibility:I

    packed-switch v1, :pswitch_data_13e

    goto :goto_5f

    .line 452
    :pswitch_52
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 453
    goto :goto_5f

    .line 455
    :pswitch_59
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 459
    :goto_5f
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v1, :cond_6f

    .line 460
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    goto :goto_78

    .line 462
    :cond_6f
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 464
    :goto_78
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    .line 466
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 467
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "android.bigText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 468
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 470
    :cond_95
    const-string v2, "android.picture"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 471
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 473
    :cond_a3
    const-string v2, "android.largeIcon"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 474
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 476
    :cond_b1
    const-string v2, "android.textLines"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 477
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 479
    :cond_bf
    const-string v2, "android.mediaSession"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 480
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 482
    :cond_cd
    const-string v2, "android.title"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    .line 483
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 484
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 486
    :cond_e9
    const-string v2, "android.text"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    .line 487
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_105

    .line 488
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 490
    :cond_105
    const-string v2, "android.subText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.subText"

    .line 491
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_121

    .line 492
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 494
    :cond_121
    const-string v2, "android.infoText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.infoText"

    .line 495
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13d

    .line 496
    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 498
    :cond_13d
    return-void

    :pswitch_data_13e
    .packed-switch -0x1
        :pswitch_59
        :pswitch_52
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .line 576
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 678
    .local v0, "previous":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 679
    .local v1, "dump":Lorg/json/JSONObject;
    const-string/jumbo v2, "key"

    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string v2, "duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mCreated:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 681
    const-string/jumbo v2, "numEnqueuedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 682
    const-string/jumbo v2, "numPostedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 683
    const-string/jumbo v2, "numUpdatedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 684
    const-string/jumbo v2, "numRemovedByApp"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 685
    const-string/jumbo v2, "numPeopleCacheHit"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 686
    const-string/jumbo v2, "numPeopleCacheMiss"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 687
    const-string/jumbo v2, "numWithStaredPeople"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 688
    const-string/jumbo v2, "numWithValidPeople"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 689
    const-string/jumbo v2, "numBlocked"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 690
    const-string/jumbo v2, "numSuspendedByAdmin"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 691
    const-string/jumbo v2, "numWithActions"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 692
    const-string/jumbo v2, "numPrivate"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 693
    const-string/jumbo v2, "numSecret"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 694
    const-string/jumbo v2, "numInterrupt"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 695
    const-string/jumbo v2, "numWithBigText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 696
    const-string/jumbo v2, "numWithBigPicture"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 697
    const-string/jumbo v2, "numForegroundService"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 698
    const-string/jumbo v2, "numOngoing"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 699
    const-string/jumbo v2, "numAutoCancel"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 700
    const-string/jumbo v2, "numWithLargeIcon"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 701
    const-string/jumbo v2, "numWithInbox"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 702
    const-string/jumbo v2, "numWithMediaSession"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 703
    const-string/jumbo v2, "numWithTitle"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 704
    const-string/jumbo v2, "numWithText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 705
    const-string/jumbo v2, "numWithSubText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 706
    const-string/jumbo v2, "numWithInfoText"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 707
    const-string/jumbo v2, "numRateViolations"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 708
    const-string/jumbo v2, "numQuotaLViolations"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 709
    const-string/jumbo v2, "notificationEnqueueRate"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V

    .line 710
    const-string/jumbo v2, "numAlertViolations"

    iget v3, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 711
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 712
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 713
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 715
    return-object v1
.end method

.method public emit()V
    .registers 5

    .line 501
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    .line 502
    .local v0, "previous":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const-string/jumbo v1, "note_enqueued"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 503
    const-string/jumbo v1, "note_post"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 504
    const-string/jumbo v1, "note_update"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 505
    const-string/jumbo v1, "note_remove"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 506
    const-string/jumbo v1, "note_with_people"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 507
    const-string/jumbo v1, "note_with_stars"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v1, "people_cache_hit"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v1, "people_cache_miss"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 510
    const-string/jumbo v1, "note_blocked"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 511
    const-string/jumbo v1, "note_suspended"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 512
    const-string/jumbo v1, "note_with_actions"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 513
    const-string/jumbo v1, "note_private"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 514
    const-string/jumbo v1, "note_secret"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 515
    const-string/jumbo v1, "note_interupt"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 516
    const-string/jumbo v1, "note_big_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 517
    const-string/jumbo v1, "note_big_pic"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 518
    const-string/jumbo v1, "note_fg"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 519
    const-string/jumbo v1, "note_ongoing"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 520
    const-string/jumbo v1, "note_auto"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 521
    const-string/jumbo v1, "note_large_icon"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 522
    const-string/jumbo v1, "note_inbox"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 523
    const-string/jumbo v1, "note_media"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 524
    const-string/jumbo v1, "note_title"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 525
    const-string/jumbo v1, "note_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 526
    const-string/jumbo v1, "note_sub_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 527
    const-string/jumbo v1, "note_info_text"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 528
    const-string/jumbo v1, "note_over_rate"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 529
    const-string/jumbo v1, "note_over_alert_rate"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 530
    const-string/jumbo v1, "note_over_quota"

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iget v3, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->maybeCount(Ljava/lang/String;I)V

    .line 531
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 532
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 533
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 535
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    .line 536
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    .line 537
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    .line 538
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    .line 539
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    .line 540
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    .line 541
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    .line 542
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    .line 543
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    .line 544
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    .line 545
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithActions:I

    .line 546
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPrivate:I

    .line 547
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSecret:I

    .line 548
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numInterrupt:I

    .line 549
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigText:I

    .line 550
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithBigPicture:I

    .line 551
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numForegroundService:I

    .line 552
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numOngoing:I

    .line 553
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAutoCancel:I

    .line 554
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithLargeIcon:I

    .line 555
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInbox:I

    .line 556
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithMediaSession:I

    .line 557
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithTitle:I

    .line 558
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithText:I

    .line 559
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithSubText:I

    .line 560
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithInfoText:I

    .line 561
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    .line 562
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 563
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    iput v1, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    .line 564
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 565
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 566
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    .line 567
    return-void
.end method

.method public getEnqueueRate()F
    .registers 3

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F

    move-result v0

    return v0
.end method

.method public getEnqueueRate(J)F
    .registers 4
    .param p1, "now"    # J

    .line 590
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getRate(J)F

    move-result v0

    return v0
.end method

.method public getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_f

    .line 421
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 423
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-object v0
.end method

.method public isAlertRateLimited()Z
    .registers 4

    .line 598
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->alertRate:Lcom/android/server/notification/AlertRateLimiter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/AlertRateLimiter;->shouldRateLimitAlert(J)Z

    move-result v0

    .line 599
    .local v0, "limited":Z
    if-eqz v0, :cond_12

    .line 600
    iget v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numAlertViolations:I

    .line 602
    :cond_12
    return v0
.end method

.method maybeCount(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 570
    if-lez p2, :cond_7

    .line 571
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 573
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 581
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInterarrivalEstimate(J)V
    .registers 4
    .param p1, "now"    # J

    .line 594
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->update(J)F

    .line 595
    return-void
.end method
