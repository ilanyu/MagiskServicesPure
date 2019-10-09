.class public final Lcom/android/server/notification/NotificationRecord;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationRecord$Light;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final MAX_LOGTAG_LENGTH:I = 0x23

.field static final TAG:Ljava/lang/String; = "NotificationRecord"


# instance fields
.field isCanceled:Z

.field public isUpdate:Z

.field private final mAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field mAm:Landroid/app/IActivityManager;

.field private mAttributes:Landroid/media/AudioAttributes;

.field private mAuthoritativeRank:I

.field private mChannel:Landroid/app/NotificationChannel;

.field private mChannelIdLogTag:Ljava/lang/String;

.field private mContactAffinity:F

.field private final mContext:Landroid/content/Context;

.field private mCreationTimeMs:J

.field private mGlobalSortKey:Ljava/lang/String;

.field private mGrantableUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupLogTag:Ljava/lang/String;

.field private mHasSeenSmartReplies:Z

.field private mHidden:Z

.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIntercept:Z

.field private mIsAppImportanceLocked:Z

.field private mIsInterruptive:Z

.field private mLastIntrusive:J

.field private mLight:Lcom/android/server/notification/NotificationRecord$Light;

.field private mLogMaker:Landroid/metrics/LogMaker;

.field private mNumberOfSmartRepliesAdded:I

.field final mOriginalFlags:I

.field private mPackagePriority:I

.field private mPackageVisibility:I

.field private mPeopleExplanation:Ljava/lang/String;

.field private mPeopleOverride:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreChannelsNotification:Z

.field private mRankingTimeMs:J

.field private mRecentlyIntrusive:Z

.field private mRecordedInterruption:Z

.field private mShowBadge:Z

.field private mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mSound:Landroid/net/Uri;

.field private final mStats:Landroid/service/notification/NotificationStats;

.field private mStatusBarCheckedImportance:Z

.field private mSuppressedVisualEffects:I

.field final mTargetSdkVersion:I

.field private mTextChanged:Z

.field private mUpdateTimeMs:J

.field private mUserExplanation:Ljava/lang/String;

.field private mUserImportance:I

.field private mUserSentiment:I

.field private mVibration:[J

.field private mVisibleSinceMs:J

.field permissionOwner:Landroid/os/IBinder;

.field final sbn:Landroid/service/notification/StatusBarNotification;

.field stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    const-string v0, "NotificationRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationRecord;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "channel"    # Landroid/app/NotificationChannel;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    .line 139
    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 177
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 178
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 179
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    .line 180
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAm:Landroid/app/IActivityManager;

    .line 181
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    .line 182
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 183
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 184
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 185
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 186
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 187
    iput-object p3, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 188
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->isPreChannelsNotification()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    .line 189
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateSound()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    .line 190
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateVibration()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    .line 191
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    .line 192
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 193
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateLights()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    .line 195
    new-instance v0, Landroid/service/notification/NotificationStats;

    invoke-direct {v0}, Landroid/service/notification/NotificationStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 196
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->calculateGrantableUris()V

    .line 198
    return-void
.end method

.method private applyUserImportance()V
    .registers 3

    .line 710
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_10

    .line 711
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 712
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->getUserExplanation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 714
    :cond_10
    return-void
.end method

.method private calculateAttributes()Landroid/media/AudioAttributes;
    .registers 8

    .line 290
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 291
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 292
    .local v1, "attributes":Landroid/media/AudioAttributes;
    if-nez v1, :cond_12

    .line 293
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 296
    :cond_12
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_61

    .line 297
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_61

    .line 299
    iget-object v2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v2, :cond_29

    .line 301
    iget-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    goto :goto_61

    .line 302
    :cond_29
    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v2, :cond_45

    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 303
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 305
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v3, v0, Landroid/app/Notification;->audioStreamType:I

    .line 306
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    goto :goto_61

    .line 308
    :cond_45
    iget v2, v0, Landroid/app/Notification;->audioStreamType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_61

    .line 309
    const-string v2, "NotificationRecord"

    const-string v3, "Invalid stream type: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_61
    :goto_61
    return-object v1
.end method

.method private calculateImportance()I
    .registers 7

    .line 316
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 317
    .local v0, "n":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 318
    .local v1, "importance":I
    const/4 v2, 0x3

    .line 321
    .local v2, "requestedImportance":I
    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x80

    const/4 v4, 0x2

    if-eqz v3, :cond_18

    .line 322
    iput v4, v0, Landroid/app/Notification;->priority:I

    .line 325
    :cond_18
    iget v3, v0, Landroid/app/Notification;->priority:I

    const/4 v5, -0x2

    invoke-static {v3, v5, v4}, Lcom/android/server/notification/NotificationManagerService;->clamp(III)I

    move-result v3

    iput v3, v0, Landroid/app/Notification;->priority:I

    .line 327
    iget v3, v0, Landroid/app/Notification;->priority:I

    packed-switch v3, :pswitch_data_76

    goto :goto_2f

    .line 339
    :pswitch_27
    const/4 v2, 0x4

    goto :goto_2f

    .line 335
    :pswitch_29
    const/4 v2, 0x3

    .line 336
    goto :goto_2f

    .line 332
    :pswitch_2b
    const/4 v2, 0x2

    .line 333
    goto :goto_2f

    .line 329
    :pswitch_2d
    const/4 v2, 0x1

    .line 330
    nop

    .line 342
    :goto_2f
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v2, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    .line 343
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    if-nez v5, :cond_40

    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    if-eqz v5, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v5, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v5, 0x1

    :goto_41
    iput-boolean v5, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    .line 345
    iget-boolean v3, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v3, :cond_70

    const/16 v3, -0x3e8

    if-eq v1, v3, :cond_57

    .line 347
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_70

    .line 349
    :cond_57
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v3, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-nez v3, :cond_60

    if-le v2, v4, :cond_60

    .line 350
    const/4 v2, 0x2

    .line 353
    :cond_60
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v3, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v3, :cond_6a

    .line 354
    const/4 v3, 0x3

    if-ge v2, v3, :cond_6a

    .line 355
    const/4 v2, 0x3

    .line 359
    :cond_6a
    iget-object v3, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_6f

    .line 360
    const/4 v2, 0x4

    .line 362
    :cond_6f
    move v1, v2

    .line 365
    :cond_70
    iget-object v3, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iput v1, v3, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    .line 366
    return v1

    nop

    :pswitch_data_76
    .packed-switch -0x2
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method private calculateLights()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 11

    .line 232
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 234
    .local v0, "defaultLightColor":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 236
    .local v1, "defaultLightOn":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 239
    .local v2, "defaultLightOff":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    goto :goto_3b

    .line 240
    :cond_3a
    move v3, v0

    .line 241
    .local v3, "channelLightColor":I
    :goto_3b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v4

    if-eqz v4, :cond_4b

    new-instance v4, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    goto :goto_4c

    .line 242
    :cond_4b
    const/4 v4, 0x0

    .line 243
    .local v4, "light":Lcom/android/server/notification/NotificationRecord$Light;
    :goto_4c
    iget-boolean v5, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v5, :cond_82

    .line 244
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_82

    .line 246
    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 247
    .local v5, "notification":Landroid/app/Notification;
    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_81

    .line 248
    new-instance v6, Lcom/android/server/notification/NotificationRecord$Light;

    iget v7, v5, Landroid/app/Notification;->ledARGB:I

    iget v8, v5, Landroid/app/Notification;->ledOnMS:I

    iget v9, v5, Landroid/app/Notification;->ledOffMS:I

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    move-object v4, v6

    .line 250
    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_82

    .line 251
    new-instance v6, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    move-object v4, v6

    goto :goto_82

    .line 255
    :cond_81
    const/4 v4, 0x0

    .line 258
    .end local v5    # "notification":Landroid/app/Notification;
    :cond_82
    :goto_82
    return-object v4
.end method

.method private calculateRankingTimeMs(J)J
    .registers 10
    .param p1, "previousRankingTimeMs"    # J

    .line 829
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 831
    .local v0, "n":Landroid/app/Notification;
    iget-wide v1, v0, Landroid/app/Notification;->when:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    iget-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1b

    .line 832
    iget-wide v1, v0, Landroid/app/Notification;->when:J

    return-wide v1

    .line 836
    :cond_1b
    cmp-long v1, p1, v3

    if-lez v1, :cond_20

    .line 837
    return-wide p1

    .line 839
    :cond_20
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    return-wide v1
.end method

.method private calculateSound()Landroid/net/Uri;
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 213
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 214
    const/4 v1, 0x0

    return-object v1

    .line 217
    :cond_16
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    .line 218
    .local v1, "sound":Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_3c

    .line 221
    iget v2, v0, Landroid/app/Notification;->defaults:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_33

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    move v2, v3

    .line 222
    .local v2, "useDefaultSound":Z
    if-eqz v2, :cond_3a

    .line 223
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_3c

    .line 225
    :cond_3a
    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 228
    .end local v2    # "useDefaultSound":Z
    :cond_3c
    :goto_3c
    return-object v1
.end method

.method private calculateUserSentiment()V
    .registers 2

    .line 986
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-eqz v0, :cond_13

    .line 988
    :cond_10
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 990
    :cond_13
    return-void
.end method

.method private calculateVibration()[J
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 263
    const v2, 0x1070021

    const/16 v3, 0x11

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    .line 268
    .local v0, "defaultVibration":[J
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 269
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    if-nez v1, :cond_27

    .line 270
    move-object v1, v0

    goto :goto_2f

    :cond_27
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    .local v1, "vibration":[J
    :goto_2f
    goto :goto_31

    .line 272
    .end local v1    # "vibration":[J
    :cond_30
    const/4 v1, 0x0

    .line 274
    .restart local v1    # "vibration":[J
    :goto_31
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v2, :cond_56

    .line 275
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_56

    .line 277
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 278
    .local v2, "notification":Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    .line 280
    .local v3, "useDefaultVibrate":Z
    :goto_50
    if-eqz v3, :cond_54

    .line 281
    move-object v1, v0

    goto :goto_56

    .line 283
    :cond_54
    iget-object v1, v2, Landroid/app/Notification;->vibrate:[J

    .line 286
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "useDefaultVibrate":Z
    :cond_56
    :goto_56
    return-object v1
.end method

.method private getChannelIdLogTag()Ljava/lang/String;
    .registers 2

    .line 888
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannelIdLogTag:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 889
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationRecord;->shortenTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannelIdLogTag:Ljava/lang/String;

    .line 891
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannelIdLogTag:Ljava/lang/String;

    return-object v0
.end method

.method private getGroupLogTag()Ljava/lang/String;
    .registers 2

    .line 881
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGroupLogTag:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 882
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationRecord;->shortenTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGroupLogTag:Ljava/lang/String;

    .line 884
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGroupLogTag:Ljava/lang/String;

    return-object v0
.end method

.method private getPeopleExplanation()Ljava/lang/String;
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleExplanation:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 703
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleExplanation:Ljava/lang/String;

    .line 706
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleExplanation:Ljava/lang/String;

    return-object v0
.end method

.method private getUserExplanation()Ljava/lang/String;
    .registers 3

    .line 694
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 695
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    .line 698
    :cond_13
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserExplanation:Ljava/lang/String;

    return-object v0
.end method

.method static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p0, "baseContext"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 572
    if-eqz p1, :cond_c

    .line 574
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_7} :catch_8

    .line 577
    .local v0, "c":Landroid/content/Context;
    :goto_7
    goto :goto_d

    .line 575
    .end local v0    # "c":Landroid/content/Context;
    :catch_8
    move-exception v0

    .line 576
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    goto :goto_7

    .line 579
    :cond_c
    move-object v0, p0

    .line 582
    .local v0, "c":Landroid/content/Context;
    :goto_d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 584
    .local v1, "r":Landroid/content/res/Resources;
    :try_start_11
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_15} :catch_16

    return-object v2

    .line 585
    :catch_16
    move-exception v2

    .line 586
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    return-object v3
.end method

.method private isPreChannelsNotification()Z
    .registers 3

    .line 201
    const-string/jumbo v0, "miscellaneous"

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 202
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_19

    .line 203
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$calculateGrantableUris$0(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;Z)V

    .line 1057
    return-void
.end method

.method private setUserSentiment(I)V
    .registers 2
    .param p1, "userSentiment"    # I

    .line 993
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 994
    return-void
.end method

.method private shortenTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "longTag"    # Ljava/lang/String;

    .line 895
    if-nez p1, :cond_4

    .line 896
    const/4 v0, 0x0

    return-object v0

    .line 898
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x23

    if-ge v0, v1, :cond_d

    .line 899
    return-object p1

    .line 901
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1b

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    return-object v0
.end method

.method private visitGrantableUri(Landroid/net/Uri;Z)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userOverriddenUri"    # Z

    .line 1077
    if-eqz p1, :cond_86

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_86

    .line 1080
    :cond_10
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    .line 1081
    .local v0, "sourceUid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    return-void

    .line 1083
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v7, v1

    .line 1086
    .local v7, "ident":J
    :try_start_20
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    .line 1087
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 1089
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 1086
    move v2, v0

    invoke-interface/range {v1 .. v6}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 1091
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    if-nez v1, :cond_3f

    .line 1092
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    .line 1094
    :cond_3f
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_44} :catch_80
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_44} :catch_47
    .catchall {:try_start_20 .. :try_end_44} :catchall_45

    goto :goto_81

    .line 1106
    :catchall_45
    move-exception v1

    goto :goto_7c

    .line 1097
    :catch_47
    move-exception v1

    .line 1098
    .local v1, "e":Ljava/lang/SecurityException;
    if-nez p2, :cond_81

    .line 1099
    :try_start_4a
    iget v2, p0, Lcom/android/server/notification/NotificationRecord;->mTargetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_7b

    .line 1102
    const-string v2, "NotificationRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/SecurityException;
    goto :goto_81

    .line 1100
    .restart local v1    # "e":Ljava/lang/SecurityException;
    :cond_7b
    throw v1
    :try_end_7c
    .catchall {:try_start_4a .. :try_end_7c} :catchall_45

    .line 1106
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_7c
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1095
    :catch_80
    move-exception v1

    .line 1106
    :cond_81
    :goto_81
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    nop

    .line 1108
    return-void

    .line 1077
    .end local v0    # "sourceUid":I
    .end local v7    # "ident":J
    :cond_86
    :goto_86
    return-void
.end method


# virtual methods
.method public addAdjustment(Landroid/service/notification/Adjustment;)V
    .registers 4
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 602
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 603
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    monitor-exit v0

    .line 605
    return-void

    .line 604
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public applyAdjustments()V
    .registers 8

    .line 608
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    monitor-enter v0

    .line 609
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/Adjustment;

    .line 610
    .local v2, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v3

    .line 611
    .local v3, "signals":Landroid/os/Bundle;
    const-string/jumbo v4, "key_people"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 612
    nop

    .line 613
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_people"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 614
    .local v4, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setPeopleOverride(Ljava/util/ArrayList;)V

    .line 616
    .end local v4    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    const-string/jumbo v4, "key_snooze_criteria"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 617
    nop

    .line 618
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_snooze_criteria"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 620
    .local v4, "snoozeCriterionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setSnoozeCriteria(Ljava/util/ArrayList;)V

    .line 622
    .end local v4    # "snoozeCriterionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    :cond_49
    const-string/jumbo v4, "key_group_key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 623
    nop

    .line 624
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_group_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, "groupOverrideKey":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 627
    .end local v4    # "groupOverrideKey":Ljava/lang/String;
    :cond_61
    const-string/jumbo v4, "key_user_sentiment"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 630
    iget-boolean v4, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    if-nez v4, :cond_89

    .line 631
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_89

    .line 632
    invoke-virtual {v2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_user_sentiment"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/notification/NotificationRecord;->setUserSentiment(I)V

    .line 636
    .end local v2    # "adjustment":Landroid/service/notification/Adjustment;
    .end local v3    # "signals":Landroid/os/Bundle;
    :cond_89
    goto :goto_9

    .line 637
    :cond_8a
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method protected calculateGrantableUris()V
    .registers 5

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1055
    .local v0, "notification":Landroid/app/Notification;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;

    invoke-direct {v1, p0}, Lcom/android/server/notification/-$$Lambda$NotificationRecord$XgkrZGcjOHPHem34oE9qLGy3siA;-><init>(Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification;->visitUris(Ljava/util/function/Consumer;)V

    .line 1059
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 1061
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz v1, :cond_2a

    .line 1062
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationRecord;->visitGrantableUri(Landroid/net/Uri;Z)V

    .line 1066
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_2a
    return-void
.end method

.method public canShowBadge()Z
    .registers 2

    .line 930
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    return v0
.end method

.method public copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "previous"    # Lcom/android/server/notification/NotificationRecord;

    .line 371
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 372
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 373
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 374
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    iput v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 375
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 376
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 377
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->calculateRankingTimeMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 378
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 379
    iget-wide v0, p1, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 380
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_45

    .line 381
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 384
    :cond_45
    return-void
.end method

.method dump(Landroid/util/proto/ProtoOutputStream;JZI)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "redact"    # Z
    .param p5, "state"    # I

    .line 405
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 407
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 408
    const-wide v2, 0x10e00000002L

    invoke-virtual {p1, v2, v3, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 409
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 410
    const-wide v2, 0x10900000004L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 412
    :cond_30
    const-wide v2, 0x10800000008L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3f

    move v4, v6

    goto :goto_40

    :cond_3f
    move v4, v5

    :goto_40
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 413
    const-wide v2, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v4

    if-eqz v4, :cond_50

    move v5, v6

    nop

    :cond_50
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 414
    const-wide v2, 0x10500000003L

    iget-object v4, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 415
    const-wide v2, 0x10900000009L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 416
    const-wide v2, 0x1110000000aL

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 417
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_91

    .line 418
    const-wide v2, 0x10900000005L

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 420
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 421
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/AudioAttributes;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 424
    :cond_a3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 425
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "baseContext"    # Landroid/content/Context;
    .param p4, "redact"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 434
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 435
    .local v4, "notification":Landroid/app/Notification;
    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 436
    .local v5, "icon":Landroid/graphics/drawable/Icon;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, "iconStr":Ljava/lang/String;
    const/4 v7, 0x2

    if-eqz v5, :cond_40

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v8

    if-ne v8, v7, :cond_40

    .line 438
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v10

    move-object/from16 v11, p3

    invoke-static {v11, v9, v10}, Lcom/android/server/notification/NotificationRecord;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_42

    .line 440
    :cond_40
    move-object/from16 v11, p3

    :goto_42
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .end local p2    # "prefix":Ljava/lang/String;
    .local v2, "prefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "icon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "flags=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Landroid/app/Notification;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Landroid/app/Notification;->priority:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "seen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v9}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "groupKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "fullscreenIntent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "contentIntent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "deleteIntent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "tickerText="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 454
    iget-object v8, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1c5

    .line 455
    iget-object v8, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "ticker":Ljava/lang/String;
    if-eqz p4, :cond_1c1

    .line 458
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v12, 0x10

    if-le v10, v12, :cond_1b6

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_1b8

    :cond_1b6
    const-string v10, ""

    :goto_1b8
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    const-string v10, "..."

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1c4

    .line 461
    :cond_1c1
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .end local v8    # "ticker":Ljava/lang/String;
    :goto_1c4
    goto :goto_1cb

    .line 464
    :cond_1c5
    const-string/jumbo v8, "null"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    :goto_1cb
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "contentView="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "bigContentView="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v10}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "headsUpContentView="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 469
    invoke-virtual {v0, v10}, Lcom/android/server/notification/NotificationRecord;->formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 468
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "color=0x%08x"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    iget v14, v4, Landroid/app/Notification;->color:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "timeout="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v4}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 471
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    iget-object v8, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v8, :cond_2d0

    iget-object v8, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v8, v8

    if-lez v8, :cond_2d0

    .line 474
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "actions={"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    iget-object v8, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v8, v8

    .line 476
    .local v8, "N":I
    move v13, v9

    .line 476
    .local v13, "i":I
    :goto_286
    if-ge v13, v8, :cond_2bc

    .line 477
    iget-object v14, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v14, v14, v13

    .line 478
    .local v14, "action":Landroid/app/Notification$Action;
    if-eqz v14, :cond_2b8

    .line 479
    const-string v15, "%s    [%d] \"%s\" -> %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v9

    .line 481
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v10, v12

    iget-object v12, v14, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    aput-object v12, v10, v7

    .line 483
    iget-object v12, v14, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v12, :cond_2a7

    const-string/jumbo v12, "null"

    goto :goto_2ad

    :cond_2a7
    iget-object v12, v14, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v12}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2ad
    const/16 v16, 0x3

    aput-object v12, v10, v16

    .line 479
    invoke-static {v15, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    .end local v14    # "action":Landroid/app/Notification$Action;
    :cond_2b8
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x1

    goto :goto_286

    .line 487
    .end local v13    # "i":I
    :cond_2bc
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  }"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .end local v8    # "N":I
    :cond_2d0
    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_404

    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->size()I

    move-result v8

    if-lez v8, :cond_404

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "extras={"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2fa
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3ef

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 492
    .local v10, "key":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    iget-object v12, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v12, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 494
    .local v12, "val":Ljava/lang/Object;
    if-nez v12, :cond_332

    .line 495
    const-string/jumbo v13, "null"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3eb

    .line 497
    :cond_332
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    if-eqz p4, :cond_349

    instance-of v13, v12, Ljava/lang/CharSequence;

    if-nez v13, :cond_3e8

    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_349

    goto/16 :goto_3e8

    .line 500
    :cond_349
    instance-of v13, v12, Landroid/graphics/Bitmap;

    if-eqz v13, :cond_375

    .line 501
    const-string v13, " (%dx%d)"

    new-array v14, v7, [Ljava/lang/Object;

    move-object v15, v12

    check-cast v15, Landroid/graphics/Bitmap;

    .line 502
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    move-object v15, v12

    check-cast v15, Landroid/graphics/Bitmap;

    .line 503
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x1

    aput-object v15, v14, v17

    .line 501
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3e8

    .line 504
    :cond_375
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v13

    if-eqz v13, :cond_3cb

    .line 505
    invoke-static {v12}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 506
    .local v13, "N":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    if-nez p4, :cond_3ca

    .line 508
    move v14, v9

    .line 508
    .local v14, "j":I
    :goto_39f
    if-ge v14, v13, :cond_3ca

    .line 509
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 510
    const-string v15, "%s      [%d] %s"

    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v9

    .line 511
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v17, 0x1

    aput-object v7, v3, v17

    invoke-static {v12, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x2

    aput-object v7, v3, v17

    .line 510
    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_39f

    .line 514
    .end local v13    # "N":I
    .end local v14    # "j":I
    :cond_3ca
    goto :goto_3e8

    .line 515
    :cond_3cb
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 517
    :cond_3e8
    :goto_3e8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 519
    .end local v10    # "key":Ljava/lang/String;
    .end local v12    # "val":Ljava/lang/Object;
    :goto_3eb
    nop

    .line 491
    const/4 v7, 0x2

    goto/16 :goto_2fa

    .line 520
    :cond_3ef
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "}"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    :cond_404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stats="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mContactAffinity="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mRecentlyIntrusive="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mPackagePriority="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mPackageVisibility="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mUserImportance="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    .line 528
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mImportance="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 530
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mImportanceExplanation="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mIsAppImportanceLocked="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mIntercept="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mHidden=="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mGlobalSortKey="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mRankingTimeMs="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mCreationTimeMs="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mVisibleSinceMs="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mUpdateTimeMs="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mSuppressedVisualEffects= "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationRecord;->mPreChannelsNotification:Z

    if-eqz v3, :cond_69b

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "defaults=0x%08x flags=0x%08x"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    iget v8, v4, Landroid/app/Notification;->defaults:I

    .line 543
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v9

    iget v8, v4, Landroid/app/Notification;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v10, v12

    .line 542
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "n.sound="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "n.audioStreamType="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "n.audioAttributes="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  led=0x%08x onMs=%d offMs=%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget v10, v4, Landroid/app/Notification;->ledARGB:I

    .line 548
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    iget v9, v4, Landroid/app/Notification;->ledOnMS:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget v9, v4, Landroid/app/Notification;->ledOffMS:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 547
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "vibrate="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/app/Notification;->vibrate:[J

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    :cond_69b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mSound= "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mVibration= "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mAttributes= "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mLight= "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mShowBadge="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mColorized="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/Notification;->isColorized()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mIsInterruptive="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "effectiveNotificationChannel="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_796

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "overridePeople= "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    :cond_796
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_7be

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "snoozeCriteria="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    :cond_7be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "mAdjustments="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/notification/NotificationRecord;->mAdjustments:Ljava/util/List;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method formatRemoteViews(Landroid/widget/RemoteViews;)Ljava/lang/String;
    .registers 6
    .param p1, "rv"    # Landroid/widget/RemoteViews;

    .line 428
    if-nez p1, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    .line 429
    :cond_6
    const-string v0, "%s/0x%08x (%d bytes): %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 430
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 429
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .line 946
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getAuthoritativeRank()I
    .registers 2

    .line 868
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    return v0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 907
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getContactAffinity()F
    .registers 2

    .line 654
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    return v0
.end method

.method public getExposureMs(J)I
    .registers 7
    .param p1, "now"    # J

    .line 798
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_f

    :cond_a
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    :goto_f
    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 397
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    return v0
.end method

.method public getFreshnessMs(J)I
    .registers 5
    .param p1, "now"    # J

    .line 782
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public getGlobalSortKey()Ljava/lang/String;
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantableUris()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGrantableUris:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .registers 2

    .line 872
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImportance()I
    .registers 2

    .line 729
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .registers 2

    .line 733
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIsAppImportanceLocked()Z
    .registers 2

    .line 914
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 399
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastIntrusive()J
    .registers 3

    .line 669
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    return-wide v0
.end method

.method public getLifespanMs(J)I
    .registers 5
    .param p1, "now"    # J

    .line 790
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method public getLight()Lcom/android/server/notification/NotificationRecord$Light;
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLight:Lcom/android/server/notification/NotificationRecord$Light;

    return-object v0
.end method

.method public getLogMaker()Landroid/metrics/LogMaker;
    .registers 3

    .line 1135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method public getLogMaker(J)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "now"    # J

    .line 1111
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLogMaker:Landroid/metrics/LogMaker;

    if-nez v0, :cond_3c

    .line 1113
    new-instance v0, Landroid/metrics/LogMaker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1114
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x31c

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1115
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x31d

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1116
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x359

    .line 1117
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLogMaker:Landroid/metrics/LogMaker;

    .line 1120
    :cond_3c
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mLogMaker:Landroid/metrics/LogMaker;

    .line 1121
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->clearCategory()Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->clearType()Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->clearSubtype()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x31e

    .line 1124
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->clearTaggedData(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x35a

    iget v2, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 1125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x3b2

    .line 1126
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->getGroupLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x3b3

    .line 1128
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1127
    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x319

    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x31b

    .line 1130
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x31a

    .line 1131
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1120
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNumSmartRepliesAdded()I
    .registers 2

    .line 1029
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    return v0
.end method

.method public getPackagePriority()I
    .registers 2

    .line 677
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    return v0
.end method

.method public getPackageVisibilityOverride()I
    .registers 2

    .line 685
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    return v0
.end method

.method public getPeopleOverride()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRankingTimeMs()J
    .registers 3

    .line 774
    iget-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    return-wide v0
.end method

.method public getSnoozeCriteria()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSound()Landroid/net/Uri;
    .registers 2

    .line 938
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mSound:Landroid/net/Uri;

    return-object v0
.end method

.method public getStats()Landroid/service/notification/NotificationStats;
    .registers 2

    .line 1001
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    return-object v0
.end method

.method public getStatusBarCheckedImportance()Z
    .registers 2

    .line 392
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mStatusBarCheckedImportance:Z

    return v0
.end method

.method public getSuppressedVisualEffects()I
    .registers 2

    .line 759
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    return v0
.end method

.method public getUserImportance()I
    .registers 2

    .line 717
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    return v0
.end method

.method public getUserSentiment()I
    .registers 2

    .line 997
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    return v0
.end method

.method public getVibration()[J
    .registers 2

    .line 942
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mVibration:[J

    return-object v0
.end method

.method public hasRecordedInterruption()Z
    .registers 2

    .line 966
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    return v0
.end method

.method public hasSeenSmartReplies()Z
    .registers 2

    .line 1033
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    return v0
.end method

.method public isAudioAttributesUsage(I)Z
    .registers 3
    .param p1, "usage"    # I

    .line 767
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-ne v0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 763
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 750
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    return v0
.end method

.method public isIntercepted()Z
    .registers 2

    .line 742
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return v0
.end method

.method public isInterruptive()Z
    .registers 2

    .line 970
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    return v0
.end method

.method public isRecentlyIntrusive()Z
    .registers 2

    .line 665
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    return v0
.end method

.method public isSeen()Z
    .registers 2

    .line 852
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    move-result v0

    return v0
.end method

.method public recordDirectReplied()V
    .registers 2

    .line 1009
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setDirectReplied()V

    .line 1010
    return-void
.end method

.method public recordDismissalSurface(I)V
    .registers 3
    .param p1, "surface"    # I

    .line 1013
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0, p1}, Landroid/service/notification/NotificationStats;->setDismissalSurface(I)V

    .line 1014
    return-void
.end method

.method public recordExpanded()V
    .registers 2

    .line 1005
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setExpanded()V

    .line 1006
    return-void
.end method

.method public recordSnoozed()V
    .registers 2

    .line 1017
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSnoozed()V

    .line 1018
    return-void
.end method

.method public recordViewedSettings()V
    .registers 2

    .line 1021
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setViewedSettings()V

    .line 1022
    return-void
.end method

.method public setAuthoritativeRank(I)V
    .registers 2
    .param p1, "authoritativeRank"    # I

    .line 864
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mAuthoritativeRank:I

    .line 865
    return-void
.end method

.method public setContactAffinity(F)V
    .registers 5
    .param p1, "contactAffinity"    # F

    .line 646
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 647
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_16

    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_16

    .line 649
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->getPeopleExplanation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/NotificationRecord;->setImportance(ILjava/lang/CharSequence;)V

    .line 651
    :cond_16
    return-void
.end method

.method public setGlobalSortKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "globalSortKey"    # Ljava/lang/String;

    .line 843
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mGlobalSortKey:Ljava/lang/String;

    .line 844
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "hidden"    # Z

    .line 746
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHidden:Z

    .line 747
    return-void
.end method

.method public setImportance(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "importance"    # I
    .param p2, "explanation"    # Ljava/lang/CharSequence;

    .line 721
    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_8

    .line 722
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 723
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecord;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 725
    :cond_8
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->applyUserImportance()V

    .line 726
    return-void
.end method

.method public setIntercepted(Z)Z
    .registers 3
    .param p1, "intercept"    # Z

    .line 737
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 738
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    return v0
.end method

.method public setInterruptive(Z)V
    .registers 2
    .param p1, "interruptive"    # Z

    .line 954
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 955
    return-void
.end method

.method public setIsAppImportanceLocked(Z)V
    .registers 2
    .param p1, "isAppImportanceLocked"    # Z

    .line 641
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 642
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 643
    return-void
.end method

.method public setNumSmartRepliesAdded(I)V
    .registers 2
    .param p1, "noReplies"    # I

    .line 1025
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mNumberOfSmartRepliesAdded:I

    .line 1026
    return-void
.end method

.method public setOverrideGroupKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "overrideGroupKey"    # Ljava/lang/String;

    .line 876
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    .line 877
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mGroupLogTag:Ljava/lang/String;

    .line 878
    return-void
.end method

.method public setPackagePriority(I)V
    .registers 2
    .param p1, "packagePriority"    # I

    .line 673
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 674
    return-void
.end method

.method public setPackageVisibilityOverride(I)V
    .registers 2
    .param p1, "packageVisibility"    # I

    .line 681
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 682
    return-void
.end method

.method protected setPeopleOverride(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 974
    .local p1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 975
    return-void
.end method

.method public setRecentlyIntrusive(Z)V
    .registers 4
    .param p1, "recentlyIntrusive"    # Z

    .line 658
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecentlyIntrusive:Z

    .line 659
    if-eqz p1, :cond_a

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/NotificationRecord;->mLastIntrusive:J

    .line 662
    :cond_a
    return-void
.end method

.method public setRecordedInterruption(Z)V
    .registers 2
    .param p1, "recorded"    # Z

    .line 962
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mRecordedInterruption:Z

    .line 963
    return-void
.end method

.method public setSeen()V
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSeen()V

    .line 858
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    if-eqz v0, :cond_c

    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 861
    :cond_c
    return-void
.end method

.method public setSeenSmartReplies(Z)V
    .registers 2
    .param p1, "hasSeenSmartReplies"    # Z

    .line 1037
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mHasSeenSmartReplies:Z

    .line 1038
    return-void
.end method

.method public setShowBadge(Z)V
    .registers 2
    .param p1, "showBadge"    # Z

    .line 926
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 927
    return-void
.end method

.method protected setSnoozeCriteria(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;)V"
        }
    .end annotation

    .line 982
    .local p1, "snoozeCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 983
    return-void
.end method

.method public setStatusBarCheckedImportance(Z)V
    .registers 2
    .param p1, "importance"    # Z

    .line 388
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mStatusBarCheckedImportance:Z

    .line 389
    return-void
.end method

.method public setSuppressedVisualEffects(I)V
    .registers 2
    .param p1, "effects"    # I

    .line 755
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 756
    return-void
.end method

.method public setTextChanged(Z)V
    .registers 2
    .param p1, "textChanged"    # Z

    .line 958
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecord;->mTextChanged:Z

    .line 959
    return-void
.end method

.method public setUserImportance(I)V
    .registers 2
    .param p1, "importance"    # I

    .line 689
    iput p1, p0, Lcom/android/server/notification/NotificationRecord;->mUserImportance:I

    .line 690
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->applyUserImportance()V

    .line 691
    return-void
.end method

.method public setVisibility(ZII)V
    .registers 15
    .param p1, "visible"    # Z
    .param p2, "rank"    # I
    .param p3, "count"    # I

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 806
    .local v0, "now":J
    if-eqz p1, :cond_8

    move-wide v2, v0

    goto :goto_a

    :cond_8
    iget-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    :goto_a
    iput-wide v2, p0, Lcom/android/server/notification/NotificationRecord;->mVisibleSinceMs:J

    .line 807
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    .line 808
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x80

    .line 809
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 810
    if-eqz p1, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x2

    :goto_20
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    .line 811
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    .line 812
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 808
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 813
    if-eqz p1, :cond_4c

    .line 814
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 815
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "note_freshness"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 817
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 818
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v7

    .line 819
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v8

    const/4 v9, 0x0

    .line 817
    move v6, p1

    move v10, p2

    invoke-static/range {v5 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationVisibility(Ljava/lang/String;IIIII)V

    .line 822
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 592
    const-string v0, "NotificationRecord(0x%08x: pkg=%s user=%s id=%d tag=%s importance=%d key=%sappImportanceLocked=%s: %s)"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    .line 595
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 596
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 597
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationRecord;->mIsAppImportanceLocked:Z

    .line 598
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 592
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateNotificationChannel(Landroid/app/NotificationChannel;)V
    .registers 2
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 918
    if-eqz p1, :cond_a

    .line 919
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 920
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()I

    .line 921
    invoke-direct {p0}, Lcom/android/server/notification/NotificationRecord;->calculateUserSentiment()V

    .line 923
    :cond_a
    return-void
.end method
