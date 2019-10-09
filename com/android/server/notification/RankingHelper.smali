.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingHelper$Record;,
        Lcom/android/server/notification/RankingHelper$LockableAppFields;
    }
.end annotation


# static fields
.field private static final ATT_APP_USER_LOCKED_FIELDS:Ljava/lang/String; = "app_user_locked_fields"

.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_LOCKED_APP_FIELDS:I = 0x0

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private mAreChannelsBypassingDnd:Z

.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p4, "zenHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p5, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p6, "extractorNames"    # [Ljava/lang/String;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v0}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 126
    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 127
    iput-object p3, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 128
    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 129
    iput-object p4, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 131
    new-instance v0, Lcom/android/server/notification/NotificationComparator;

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationComparator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 133
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateBadgingEnabled()V

    .line 135
    array-length v0, p6

    .line 136
    .local v0, "N":I
    new-array v1, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v1, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 137
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_3a
    if-ge v2, v0, :cond_c0

    .line 139
    :try_start_3c
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    aget-object v4, p6, v2

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 140
    .local v3, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 141
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 142
    .local v4, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p5}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 143
    invoke-interface {v4, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 144
    invoke-interface {v4, p4}, Lcom/android/server/notification/NotificationSignalExtractor;->setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V

    .line 145
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v4, v5, v2
    :try_end_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_5e} :catch_9d
    .catch Ljava/lang/InstantiationException; {:try_start_3c .. :try_end_5e} :catch_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_5e} :catch_5f

    .end local v3    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    goto :goto_bb

    .line 150
    :catch_5f
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem accessing extractor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_bc

    .line 148
    :catch_7e
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t instantiate extractor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/InstantiationException;
    goto :goto_bb

    .line 146
    :catch_9d
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find extractor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_bb
    nop

    .line 137
    :goto_bc
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a

    .line 155
    .end local v2    # "i":I
    :cond_c0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_ce

    move v1, v3

    nop

    :cond_ce
    iput-boolean v1, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 158
    return-void
.end method

.method private createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 360
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    const-string/jumbo v1, "miscellaneous"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x10401c5

    if-eqz v0, :cond_23

    .line 361
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    const-string/jumbo v2, "miscellaneous"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 363
    return-void

    .line 366
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 368
    return-void

    .line 373
    :cond_2a
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v2, "miscellaneous"

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 377
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_42

    move v1, v2

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 378
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 379
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v4, -0x3e8

    if-eq v1, v4, :cond_55

    .line 380
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 382
    :cond_55
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v1, :cond_5c

    .line 383
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 385
    :cond_5c
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v1, v4, :cond_63

    .line 386
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 388
    :cond_63
    iget-object v1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    return-void
.end method

.method private deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 345
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    const-string/jumbo v1, "miscellaneous"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 347
    return-void

    .line 350
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 352
    return-void

    .line 356
    :cond_13
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    const-string/jumbo v1, "miscellaneous"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    return-void
.end method

.method private static dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 14
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .line 1171
    .local p4, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1173
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_9a

    .line 1174
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 1175
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 1176
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1178
    .local v3, "fToken":J
    const-wide v5, 0x10900000001L

    iget-object v7, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1179
    const-wide v5, 0x10500000002L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1180
    const-wide v5, 0x11100000003L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1181
    const-wide v5, 0x10500000004L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1182
    const-wide v5, 0x11100000005L

    iget v7, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1183
    const-wide v5, 0x10800000006L

    iget-boolean v7, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1185
    iget-object v5, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1186
    .local v6, "channel":Landroid/app/NotificationChannel;
    const-wide v7, 0x20b00000007L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannel;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1187
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    goto :goto_5f

    .line 1188
    :cond_74
    iget-object v5, v2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 1189
    .local v6, "group":Landroid/app/NotificationChannelGroup;
    const-wide v7, 0x20b00000008L

    invoke-virtual {v6, p0, v7, v8}, Landroid/app/NotificationChannelGroup;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1190
    .end local v6    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_7e

    .line 1192
    :cond_93
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1173
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v3    # "fToken":J
    :cond_96
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1195
    .end local v1    # "i":I
    :cond_9a
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .line 1200
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1201
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_d9

    .line 1202
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 1203
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 1204
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1205
    const-string v3, "  AppSettings: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1206
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1207
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1208
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_30

    const-string v3, "UNKNOWN_UID"

    goto :goto_36

    :cond_30
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_36
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1209
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1210
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_52

    .line 1211
    const-string v3, " importance="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1212
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1214
    :cond_52
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_64

    .line 1215
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1216
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1218
    :cond_64
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v3, v4, :cond_76

    .line 1219
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    :cond_76
    const-string v3, " showBadge="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1223
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1225
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1226
    .local v4, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1227
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1230
    .end local v4    # "channel":Landroid/app/NotificationChannel;
    goto :goto_91

    .line 1231
    :cond_ae
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 1232
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1233
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1234
    const-string v5, "  "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1236
    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_b8

    .line 1201
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_d5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1239
    .end local v1    # "i":I
    :cond_d9
    return-void
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1480
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1481
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1482
    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1484
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1480
    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1470
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 1471
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1472
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1474
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1473
    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1476
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1475
    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1470
    return-object v0
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 297
    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/16 v5, -0x3e8

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I
    .param p4, "priority"    # I
    .param p5, "visibility"    # I
    .param p6, "showBadge"    # Z

    .line 303
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 305
    :try_start_7
    sget v2, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne p2, v2, :cond_14

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_11
    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    goto :goto_1b

    :cond_14
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_11

    .line 307
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    :goto_1b
    if-nez v2, :cond_5c

    .line 308
    new-instance v3, Lcom/android/server/notification/RankingHelper$Record;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$1;)V

    move-object v2, v3

    .line 309
    iput-object p1, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    .line 310
    iput p2, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 311
    iput p3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 312
    iput p4, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 313
    iput p5, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 314
    iput-boolean p6, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_5e

    .line 317
    :try_start_30
    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_5e

    .line 320
    goto :goto_4b

    .line 318
    :catch_34
    move-exception v3

    .line 319
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_35
    const-string v4, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4b
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_57

    .line 323
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c

    .line 325
    :cond_57
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_5c
    :goto_5c
    monitor-exit v1

    return-object v2

    .line 329
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_5e

    throw v2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1368
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1369
    .local v0, "packageChannels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 1371
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 1372
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v4, 0x0

    .line 1376
    .local v4, "channelCount":I
    iget-object v5, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1377
    .local v6, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_38

    .line 1379
    add-int/lit8 v4, v4, 0x1

    .line 1381
    .end local v6    # "nc":Landroid/app/NotificationChannel;
    :cond_38
    goto :goto_24

    .line 1382
    :cond_39
    iget-object v5, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v4    # "channelCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1384
    .end local v2    # "i":I
    :cond_45
    monitor-exit v1

    .line 1385
    return-object v0

    .line 1384
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_47

    throw v2
.end method

.method private getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 290
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 292
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    monitor-exit v1

    return-object v2

    .line 293
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v2
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 333
    iget v0, p1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 334
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 335
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_16

    .line 337
    return v3

    .line 341
    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method private updateConfig()V
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 454
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 455
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 457
    .end local v1    # "i":I
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 458
    return-void
.end method


# virtual methods
.method public areChannelsBypassingDnd()Z
    .registers 2

    .line 1068
    iget-boolean v0, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    return v0
.end method

.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1508
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1509
    .local v0, "userId":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1510
    return v1

    .line 1512
    :cond_9
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_29

    .line 1513
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    .line 1514
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_25

    .line 1513
    move v1, v3

    goto :goto_26

    .line 1514
    :cond_25
    nop

    .line 1513
    :goto_26
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1518
    :cond_29
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    return v0
.end method

.method clearLockedFields(Landroid/app/NotificationChannel;)V
    .registers 3
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .line 706
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 707
    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromTargetApp"    # Z
    .param p5, "hasDndAccess"    # Z

    .line 604
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 609
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v2, 0x0

    .line 610
    .local v2, "needsPolicyFileChange":Z
    if-eqz v0, :cond_178

    .line 613
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    iget-object v3, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_3c

    .line 614
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 616
    :cond_3c
    :goto_3c
    const-string/jumbo v3, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_170

    .line 619
    iget-object v3, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 621
    .local v3, "existing":Landroid/app/NotificationChannel;
    const/4 v4, 0x0

    if-eqz v3, :cond_10f

    if-eqz p4, :cond_10f

    .line 622
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 623
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 626
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 630
    :cond_6e
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 631
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 632
    const/4 v2, 0x1

    .line 634
    :cond_90
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 635
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 636
    const/4 v2, 0x1

    .line 638
    :cond_a6
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v4

    if-eq v1, v4, :cond_b8

    .line 639
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 640
    const/4 v2, 0x1

    .line 642
    :cond_b8
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_cc

    .line 643
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 644
    const/4 v2, 0x1

    .line 649
    :cond_cc
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    .line 650
    .local v1, "previousExistingImportance":I
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-nez v4, :cond_e8

    .line 651
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-ge v4, v5, :cond_e8

    .line 652
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 653
    const/4 v2, 0x1

    .line 658
    :cond_e8
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v4

    if-nez v4, :cond_10b

    if-eqz p5, :cond_10b

    .line 659
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    .line 660
    .local v4, "bypassDnd":Z
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    if-eq v4, v5, :cond_10b

    .line 661
    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 662
    const/4 v2, 0x1

    .line 663
    iget-boolean v5, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-ne v4, v5, :cond_108

    .line 664
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-eq v1, v5, :cond_10b

    .line 665
    :cond_108
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 669
    .end local v4    # "bypassDnd":Z
    :cond_10b
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 670
    return v2

    .line 673
    .end local v1    # "previousExistingImportance":I
    :cond_10f
    const/4 v2, 0x1

    .line 675
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    if-ltz v5, :cond_168

    .line 676
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_168

    .line 681
    if-eqz p4, :cond_12c

    if-nez p5, :cond_12c

    .line 682
    iget v5, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_128

    move v5, v1

    goto :goto_129

    :cond_128
    move v5, v4

    :goto_129
    invoke-virtual {p3, v5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 684
    :cond_12c
    if-eqz p4, :cond_133

    .line 685
    iget v5, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p3, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 687
    :cond_133
    invoke-virtual {p0, p3}, Lcom/android/server/notification/RankingHelper;->clearLockedFields(Landroid/app/NotificationChannel;)V

    .line 688
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v5

    if-ne v5, v1, :cond_141

    .line 689
    const/16 v5, -0x3e8

    invoke-virtual {p3, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 691
    :cond_141
    iget-boolean v5, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-nez v5, :cond_148

    .line 692
    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 695
    :cond_148
    iget-object v4, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq v4, v5, :cond_15c

    .line 697
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 699
    :cond_15c
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 702
    return v2

    .line 677
    :cond_168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid importance level"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    .end local v3    # "existing":Landroid/app/NotificationChannel;
    :cond_170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Reserved id"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromTargetApp"    # Z

    .line 578
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 583
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_5d

    .line 586
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 587
    .local v1, "oldGroup":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p3, v1}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 589
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/notification/RankingHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 591
    :cond_41
    if-eqz v1, :cond_53

    .line 592
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 594
    if-eqz p4, :cond_53

    .line 595
    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 598
    :cond_53
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void

    .line 584
    .end local v1    # "oldGroup":Landroid/app/NotificationChannelGroup;
    :cond_5d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .line 775
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 776
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_7

    .line 777
    return-void

    .line 779
    :cond_7
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 780
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz v1, :cond_2d

    .line 781
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 782
    invoke-direct {p0, v1, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 783
    .local v2, "lm":Landroid/metrics/LogMaker;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 784
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 786
    iget-boolean v3, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v3, :cond_2d

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 787
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 790
    .end local v2    # "lm":Landroid/metrics/LogMaker;
    :cond_2d
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v0, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 907
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v1, :cond_40

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_40

    .line 911
    :cond_12
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 919
    .local v3, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 920
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    .line 921
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_3e
    goto :goto_21

    .line 924
    :cond_3f
    return-object v0

    .line 908
    :cond_40
    :goto_40
    return-object v0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1156
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 1157
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_1d

    .line 1158
    const-wide v2, 0x20900000001L

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v4, v4, v1

    .line 1159
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 1158
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1161
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1162
    const-wide v2, 0x20b00000002L

    :try_start_25
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, v2, v3, p2, v4}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1163
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_36

    .line 1164
    const-wide v1, 0x20b00000003L

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1166
    return-void

    .line 1163
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1133
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 1134
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v1, "mSignalExtractors.length = "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1137
    const/4 v1, 0x0

    .line 1137
    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_2c

    .line 1138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1139
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1143
    .end local v1    # "i":I
    :cond_2c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v1, "per-package config:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    const-string v1, "Records:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1148
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1149
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_4e

    .line 1150
    const-string v1, "Restored without uid:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v1}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 1152
    return-void

    .line 1149
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v2
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 10
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1305
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1306
    .local v0, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v1

    .line 1307
    .local v1, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1308
    .local v3, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1309
    .local v4, "userId":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1310
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_39

    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1311
    :cond_39
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1313
    .local v6, "banJson":Lorg/json/JSONObject;
    :try_start_3e
    const-string/jumbo v7, "userId"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1314
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    .line 1317
    goto :goto_4f

    .line 1315
    :catch_4b
    move-exception v7

    .line 1316
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 1318
    .end local v7    # "e":Lorg/json/JSONException;
    :goto_4f
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1320
    .end local v3    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "userId":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "banJson":Lorg/json/JSONObject;
    :cond_52
    goto :goto_11

    .line 1321
    :cond_53
    return-object v0
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 10
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1349
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1350
    .local v0, "channels":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v1

    .line 1351
    .local v1, "packageChannels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1352
    .local v3, "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1353
    .local v4, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_2b

    invoke-virtual {p1, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1354
    :cond_2b
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1356
    .local v5, "channelCountJson":Lorg/json/JSONObject;
    :try_start_30
    const-string/jumbo v6, "packageName"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1357
    const-string v6, "channelCount"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_3f} :catch_40

    .line 1360
    goto :goto_44

    .line 1358
    :catch_40
    move-exception v6

    .line 1359
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 1361
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_44
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1363
    .end local v3    # "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "channelCountJson":Lorg/json/JSONObject;
    :cond_47
    goto :goto_11

    .line 1364
    :cond_48
    return-object v0
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .registers 14
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 1242
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1243
    .local v0, "ranking":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1245
    .local v1, "records":Lorg/json/JSONArray;
    :try_start_a
    const-string/jumbo v2, "noUid"

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_16} :catch_17

    .line 1248
    goto :goto_18

    .line 1246
    :catch_17
    move-exception v2

    .line 1249
    :goto_18
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1250
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1251
    .local v3, "N":I
    const/4 v4, 0x0

    .line 1251
    .local v4, "i":I
    :goto_22
    if-ge v4, v3, :cond_ea

    .line 1252
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/RankingHelper$Record;

    .line 1253
    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p1, :cond_36

    iget-object v6, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 1254
    :cond_36
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_f4

    .line 1256
    .local v6, "record":Lorg/json/JSONObject;
    :try_start_3b
    const-string/jumbo v7, "userId"

    iget v8, v5, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1257
    const-string/jumbo v7, "packageName"

    iget-object v8, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1258
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v8, -0x3e8

    if-eq v7, v8, :cond_60

    .line 1259
    const-string v7, "importance"

    iget v9, v5, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1261
    :cond_60
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v7, :cond_70

    .line 1262
    const-string/jumbo v7, "priority"

    iget v9, v5, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1264
    :cond_70
    iget v7, v5, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v7, v8, :cond_80

    .line 1265
    const-string/jumbo v7, "visibility"

    iget v8, v5, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v8}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1267
    :cond_80
    iget-boolean v7, v5, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_91

    .line 1268
    const-string/jumbo v7, "showBadge"

    iget-boolean v8, v5, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1270
    :cond_91
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1271
    .local v7, "channels":Lorg/json/JSONArray;
    iget-object v8, v5, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 1272
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1273
    .end local v9    # "channel":Landroid/app/NotificationChannel;
    goto :goto_a0

    .line 1274
    :cond_b4
    const-string v8, "channels"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1275
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 1276
    .local v8, "groups":Lorg/json/JSONArray;
    iget-object v9, v5, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    .line 1277
    .local v10, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1278
    .end local v10    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_c8

    .line 1279
    :cond_dc
    const-string v9, "groups"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_e1} :catch_e2
    .catchall {:try_start_3b .. :try_end_e1} :catchall_f4

    .line 1282
    .end local v7    # "channels":Lorg/json/JSONArray;
    .end local v8    # "groups":Lorg/json/JSONArray;
    goto :goto_e3

    .line 1280
    :catch_e2
    move-exception v7

    .line 1283
    :goto_e3
    :try_start_e3
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1251
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v6    # "record":Lorg/json/JSONObject;
    :cond_e6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    .line 1286
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_ea
    monitor-exit v2
    :try_end_eb
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_f4

    .line 1288
    :try_start_eb
    const-string/jumbo v2, "records"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f1
    .catch Lorg/json/JSONException; {:try_start_eb .. :try_end_f1} :catch_f2

    .line 1291
    goto :goto_f3

    .line 1289
    :catch_f2
    move-exception v2

    .line 1292
    :goto_f3
    return-object v0

    .line 1286
    :catchall_f4
    move-exception v3

    :try_start_f5
    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f4

    throw v3
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 173
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 174
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_21

    .line 175
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 177
    .local v2, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_a
    invoke-interface {v2, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v3

    .line 178
    .local v3, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v3, :cond_15

    .line 179
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v4, v3}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_16

    .line 183
    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_15
    goto :goto_1e

    .line 181
    :catch_16
    move-exception v3

    .line 182
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "RankingHelper"

    const-string v5, "NotificationSignalExtractor failed."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v2    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 185
    .end local v1    # "i":I
    :cond_21
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 162
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v0

    .line 163
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_18

    .line 164
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    .line 165
    .local v2, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 166
    return-object v2

    .line 163
    .end local v2    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBlockedAppCount(I)I
    .registers 8
    .param p1, "userId"    # I

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1017
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 1018
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_26

    .line 1019
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1020
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_23

    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v5, :cond_23

    .line 1022
    add-int/lit8 v0, v0, 0x1

    .line 1018
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1025
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_26
    monitor-exit v1

    .line 1026
    return v0

    .line 1025
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 995
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const/4 v0, 0x0

    .line 997
    .local v0, "blockedCount":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 998
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_b

    .line 999
    return v0

    .line 1005
    :cond_b
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 1007
    .local v3, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-nez v4, :cond_2f

    .line 1008
    add-int/lit8 v0, v0, 0x1

    .line 1010
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_2f
    goto :goto_15

    .line 1011
    :cond_30
    return v0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 975
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "deletedCount":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 978
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_b

    .line 979
    return v0

    .line 985
    :cond_b
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 987
    .local v3, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 988
    add-int/lit8 v0, v0, 0x1

    .line 990
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_29
    goto :goto_15

    .line 991
    :cond_2a
    return v0
.end method

.method public getImportance(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    return v0
.end method

.method public getIsAppImportanceLocked(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 539
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 540
    .local v0, "userLockedFields":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 758
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 760
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 761
    return-object v1

    .line 763
    :cond_b
    if-nez p3, :cond_10

    .line 764
    const-string/jumbo p3, "miscellaneous"

    .line 766
    :cond_10
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 767
    .local v2, "nc":Landroid/app/NotificationChannel;
    if-eqz v2, :cond_23

    if-nez p4, :cond_22

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_23

    .line 768
    :cond_22
    return-object v2

    .line 770
    :cond_23
    return-object v1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 6
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 849
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 851
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_b

    .line 852
    const/4 v1, 0x0

    return-object v1

    .line 854
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    return-object v1
.end method

.method public getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .line 825
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 827
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_55

    if-eqz p3, :cond_55

    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_55

    .line 830
    :cond_14
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v1

    .line 831
    .local v1, "group":Landroid/app/NotificationChannelGroup;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 836
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 838
    .local v3, "nc":Landroid/app/NotificationChannel;
    if-nez p4, :cond_46

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_53

    .line 839
    :cond_46
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 840
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 843
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_53
    goto :goto_32

    .line 844
    :cond_54
    return-object v1

    .line 828
    .end local v1    # "group":Landroid/app/NotificationChannelGroup;
    :cond_55
    :goto_55
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .param p4, "includeNonGrouped"    # Z
    .param p5, "includeEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 860
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 862
    .local v0, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 863
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_13

    .line 864
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2

    .line 866
    :cond_13
    new-instance v2, Landroid/app/NotificationChannelGroup;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 871
    .local v2, "nonGrouped":Landroid/app/NotificationChannelGroup;
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 873
    .local v5, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_37

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v6

    if-nez v6, :cond_7b

    .line 874
    :cond_37
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 875
    iget-object v6, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7b

    .line 876
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 877
    .local v6, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v6, :cond_74

    .line 878
    iget-object v7, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v6

    .line 879
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannelGroup;->setChannels(Ljava/util/List;)V

    .line 880
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_74
    invoke-virtual {v6, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 884
    .end local v6    # "ncg":Landroid/app/NotificationChannelGroup;
    goto :goto_7b

    .line 886
    :cond_78
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .line 889
    .end local v5    # "nc":Landroid/app/NotificationChannel;
    :cond_7b
    :goto_7b
    goto :goto_23

    .line 890
    :cond_7c
    if-eqz p4, :cond_8b

    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8b

    .line 891
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :cond_8b
    if-eqz p5, :cond_b5

    .line 894
    iget-object v3, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_97
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .line 895
    .local v4, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    .line 896
    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    :cond_b4
    goto :goto_97

    .line 900
    :cond_b5
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 930
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 931
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_c

    .line 932
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 934
    :cond_c
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 940
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 943
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_13

    .line 944
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2

    .line 950
    :cond_13
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 952
    .local v3, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_31

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_34

    .line 953
    :cond_31
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_34
    goto :goto_1d

    .line 956
    :cond_35
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public getPackageBans()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1327
    .local v1, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1328
    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_2b

    .line 1329
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1330
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v5, :cond_28

    .line 1331
    iget v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1335
    .end local v3    # "i":I
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 1336
    .end local v1    # "N":I
    .end local v2    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method getPackagePriority(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    return v0
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    return v0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .line 521
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;

    .line 556
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 557
    return v0

    .line 559
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 560
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    .line 561
    .local v2, "group":Landroid/app/NotificationChannelGroup;
    if-nez v2, :cond_13

    .line 562
    return v0

    .line 564
    :cond_13
    invoke-virtual {v2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    return v0
.end method

.method lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 5
    .param p1, "original"    # Landroid/app/NotificationChannel;
    .param p2, "update"    # Landroid/app/NotificationChannel;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1106
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_e

    .line 1107
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1109
    :cond_e
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 1110
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1112
    :cond_1c
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 1113
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1115
    :cond_2a
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3e

    .line 1116
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_43

    .line 1117
    :cond_3e
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1119
    :cond_43
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1120
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1122
    :cond_56
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1123
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_73

    .line 1124
    :cond_6e
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1126
    :cond_73
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_82

    .line 1127
    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 1129
    :cond_82
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1401
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1403
    .local v1, "N":I
    const/4 v2, 0x0

    .line 1403
    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_43

    .line 1404
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 1405
    .local v3, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_40

    .line 1406
    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    const-string/jumbo v5, "miscellaneous"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1407
    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    const-string/jumbo v5, "miscellaneous"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 1408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10401c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1407
    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1403
    .end local v3    # "record":Lcom/android/server/notification/RankingHelper$Record;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1413
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_43
    monitor-exit v0

    .line 1414
    return-void

    .line 1413
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)V
    .registers 14
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .line 1418
    if-eqz p3, :cond_93

    array-length v0, p3

    if-nez v0, :cond_7

    goto/16 :goto_93

    .line 1421
    :cond_7
    const/4 v0, 0x0

    .line 1422
    .local v0, "updated":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 1424
    array-length v2, p3

    array-length v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1425
    .local v2, "size":I
    nop

    .local v1, "i":I
    :goto_12
    if-ge v1, v2, :cond_31

    .line 1426
    aget-object v3, p3, v1

    .line 1427
    .local v3, "pkg":Ljava/lang/String;
    aget v4, p4, v1

    .line 1428
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1429
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2e

    .line 1431
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    const/4 v0, 0x1

    .line 1425
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1430
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catchall_2e
    move-exception v6

    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v6

    .line 1434
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_31
    goto :goto_8d

    .line 1435
    :cond_32
    array-length v2, p3

    :goto_33
    if-ge v1, v2, :cond_8d

    aget-object v3, p3, v1

    .line 1437
    .restart local v3    # "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1438
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v4, :cond_67

    .line 1440
    :try_start_41
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 1441
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_53} :catch_66

    .line 1443
    :try_start_53
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v7, v8}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    monitor-exit v5

    .line 1445
    const/4 v0, 0x1

    .line 1448
    goto :goto_67

    .line 1444
    :catchall_63
    move-exception v6

    monitor-exit v5
    :try_end_65
    .catchall {:try_start_53 .. :try_end_65} :catchall_63

    :try_start_65
    throw v6
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_66} :catch_66

    .line 1446
    :catch_66
    move-exception v5

    .line 1452
    :cond_67
    :goto_67
    :try_start_67
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v5
    :try_end_6a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_67 .. :try_end_6a} :catch_89

    .line 1453
    :try_start_6a
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1454
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/RankingHelper$Record;

    .line 1455
    .local v7, "fullRecord":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v7, :cond_84

    .line 1456
    invoke-direct {p0, v7}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V

    .line 1457
    invoke-direct {p0, v7}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V

    .line 1459
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "fullRecord":Lcom/android/server/notification/RankingHelper$Record;
    :cond_84
    monitor-exit v5

    .line 1460
    goto :goto_8a

    .line 1459
    :catchall_86
    move-exception v6

    monitor-exit v5
    :try_end_88
    .catchall {:try_start_6a .. :try_end_88} :catchall_86

    :try_start_88
    throw v6
    :try_end_89
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_89} :catch_89

    .line 1460
    :catch_89
    move-exception v5

    .line 1435
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1464
    :cond_8d
    :goto_8d
    if-eqz v0, :cond_92

    .line 1465
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1467
    :cond_92
    return-void

    .line 1419
    .end local v0    # "updated":Z
    :cond_93
    :goto_93
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1389
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1390
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1391
    .local v1, "N":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_25

    .line 1392
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 1393
    .local v3, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 1394
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1391
    .end local v3    # "record":Lcom/android/server/notification/RankingHelper$Record;
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1397
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_25
    monitor-exit v0

    .line 1398
    return-void

    .line 1397
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 967
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    const-string/jumbo v3, "miscellaneous"

    .line 968
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 969
    return v2

    .line 971
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 795
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 798
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_d

    .line 799
    return-void

    .line 801
    :cond_d
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    return-void
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 806
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 808
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_a

    .line 809
    return-void

    .line 815
    :cond_a
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 817
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "miscellaneous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 818
    iget-object v3, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .end local v2    # "key":Ljava/lang/String;
    :cond_2e
    goto :goto_14

    .line 821
    :cond_2f
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 189
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 190
    .local v0, "type":I
    const/4 v10, 0x2

    if-eq v0, v10, :cond_c

    return-void

    .line 191
    :cond_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "tag":Ljava/lang/String;
    const-string/jumbo v2, "ranking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return-void

    .line 195
    :cond_1a
    iget-object v2, v8, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 196
    :goto_1f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v11, v2

    .line 196
    .end local v0    # "type":I
    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v2, v12, :cond_170

    .line 197
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 198
    .end local v1    # "tag":Ljava/lang/String;
    .local v13, "tag":Ljava/lang/String;
    const/4 v14, 0x3

    if-ne v11, v14, :cond_38

    const-string/jumbo v0, "ranking"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 199
    return-void

    .line 201
    :cond_38
    if-ne v11, v10, :cond_16b

    .line 202
    const-string/jumbo v0, "package"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 203
    const-string/jumbo v0, "uid"

    sget v1, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    invoke-static {v9, v0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 204
    .local v1, "uid":I
    const-string/jumbo v0, "name"

    const/4 v7, 0x0

    invoke-interface {v9, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_169

    .line 206
    const/4 v5, 0x0

    if-eqz p2, :cond_67

    .line 209
    :try_start_5d
    iget-object v0, v8, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5d .. :try_end_63} :catch_66

    .line 212
    .end local v1    # "uid":I
    .local v0, "uid":I
    nop

    .line 215
    move v15, v0

    goto :goto_68

    .line 210
    .end local v0    # "uid":I
    .restart local v1    # "uid":I
    :catch_66
    move-exception v0

    .line 215
    :cond_67
    move v15, v1

    .line 215
    .end local v1    # "uid":I
    .local v15, "uid":I
    :goto_68
    const-string v0, "importance"

    .line 216
    const/16 v4, -0x3e8

    invoke-static {v9, v0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "priority"

    .line 218
    invoke-static {v9, v1, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v16

    const-string/jumbo v1, "visibility"

    .line 219
    invoke-static {v9, v1, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v1, "show_badge"

    .line 221
    invoke-static {v9, v1, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 215
    move-object v1, v8

    move-object v2, v6

    move v3, v15

    move v10, v4

    move v4, v0

    move v14, v5

    move/from16 v5, v16

    move-object/from16 v16, v6

    move/from16 v6, v17

    .line 215
    .end local v6    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    move/from16 v7, v18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .line 223
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    const-string v0, "importance"

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 225
    const-string/jumbo v0, "priority"

    invoke-static {v9, v0, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 227
    const-string/jumbo v0, "visibility"

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 229
    const-string/jumbo v0, "show_badge"

    invoke-static {v9, v0, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 231
    const-string v0, "app_user_locked_fields"

    invoke-static {v9, v0, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 234
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 234
    .local v0, "innerDepth":I
    :goto_c6
    move v2, v0

    .line 235
    .end local v0    # "innerDepth":I
    .local v2, "innerDepth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v11, v0

    if-eq v0, v12, :cond_14d

    const/4 v3, 0x3

    if-ne v11, v3, :cond_d7

    .line 237
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_14d

    .line 238
    :cond_d7
    if-eq v11, v3, :cond_149

    const/4 v0, 0x4

    if-ne v11, v0, :cond_dd

    .line 239
    goto :goto_149

    .line 242
    :cond_dd
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "tagName":Ljava/lang/String;
    const-string v4, "channelGroup"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 245
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-interface {v9, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v9, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "groupName":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10c

    .line 248
    new-instance v7, Landroid/app/NotificationChannelGroup;

    invoke-direct {v7, v4, v6}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 250
    .local v7, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v7, v9}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 251
    iget-object v14, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v14, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "groupName":Ljava/lang/CharSequence;
    .end local v7    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_10c

    .line 255
    :cond_10b
    const/4 v5, 0x0

    :cond_10c
    :goto_10c
    const-string v4, "channel"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_148

    .line 256
    const-string v4, "id"

    invoke-interface {v9, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .restart local v4    # "id":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-interface {v9, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "channelName":Ljava/lang/String;
    const-string v7, "importance"

    invoke-static {v9, v7, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 260
    .local v7, "channelImportance":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_148

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_148

    .line 261
    new-instance v14, Landroid/app/NotificationChannel;

    invoke-direct {v14, v4, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 263
    .local v14, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_140

    .line 264
    iget-object v3, v8, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v9, v3}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    goto :goto_143

    .line 266
    :cond_140
    invoke-virtual {v14, v9}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 268
    :goto_143
    iget-object v3, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "channelName":Ljava/lang/String;
    .end local v7    # "channelImportance":I
    .end local v14    # "channel":Landroid/app/NotificationChannel;
    :cond_148
    goto :goto_14a

    .line 234
    :cond_149
    :goto_149
    const/4 v5, 0x0

    :goto_14a
    move v0, v2

    goto/16 :goto_c6

    .line 274
    :cond_14d
    :try_start_14d
    invoke-direct {v8, v1}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_150
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14d .. :try_end_150} :catch_151

    .line 277
    goto :goto_169

    .line 275
    :catch_151
    move-exception v0

    move-object v3, v0

    .line 276
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RankingHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v2    # "innerDepth":I
    .end local v15    # "uid":I
    .end local v16    # "name":Ljava/lang/String;
    :cond_169
    :goto_169
    move v0, v11

    .line 279
    .end local v11    # "type":I
    .local v0, "type":I
    goto :goto_16c

    .line 196
    .end local v0    # "type":I
    .restart local v11    # "type":I
    :cond_16b
    move v0, v11

    .line 196
    .end local v11    # "type":I
    .end local v13    # "tag":Ljava/lang/String;
    .restart local v0    # "type":I
    .local v1, "tag":Ljava/lang/String;
    :goto_16c
    move-object v1, v13

    const/4 v10, 0x2

    goto/16 :goto_1f

    .line 282
    .end local v0    # "type":I
    .restart local v11    # "type":I
    :cond_170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppImportanceLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1095
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 1096
    .local v0, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    .line 1097
    return-void

    .line 1100
    :cond_b
    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 1101
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1102
    return-void
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 1082
    .local v0, "wasEnabled":Z
    :goto_a
    if-ne v0, p3, :cond_d

    .line 1083
    return-void

    .line 1085
    :cond_d
    nop

    .line 1086
    if-eqz p3, :cond_13

    const/16 v1, -0x3e8

    nop

    .line 1085
    :cond_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    .line 1087
    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .line 1076
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 1077
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1078
    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "showBadge"    # Z

    .line 550
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 551
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 552
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 461
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v1, p0

    .line 461
    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 463
    .local v3, "N":I
    add-int/lit8 v0, v3, -0x1

    .line 463
    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_19

    .line 464
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 463
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 468
    .end local v0    # "i":I
    :cond_19
    iget-object v0, v1, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    iget-object v4, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 472
    add-int/lit8 v0, v3, -0x1

    .line 472
    .restart local v0    # "i":I
    :goto_23
    if-ltz v0, :cond_47

    .line 473
    :try_start_25
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 474
    .local v5, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 475
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "groupKey":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 477
    .local v7, "existingProxy":Lcom/android/server/notification/NotificationRecord;
    if-nez v7, :cond_41

    .line 478
    iget-object v8, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .end local v5    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v6    # "groupKey":Ljava/lang/String;
    .end local v7    # "existingProxy":Lcom/android/server/notification/NotificationRecord;
    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 514
    .end local v0    # "i":I
    :catchall_44
    move-exception v0

    goto/16 :goto_eb

    .line 483
    :cond_47
    const/4 v0, 0x0

    move v5, v0

    .line 483
    .local v5, "i":I
    :goto_49
    if-ge v5, v3, :cond_df

    .line 484
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 485
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v7, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 486
    .local v7, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v8

    .line 494
    .local v8, "groupSortKey":Ljava/lang/String;
    if-nez v8, :cond_6b

    .line 495
    const-string/jumbo v9, "nsk"

    .line 495
    .local v9, "groupSortKeyPortion":Ljava/lang/String;
    :goto_6a
    goto :goto_87

    .line 496
    .end local v9    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_6b
    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 497
    const-string v9, "esk"

    goto :goto_6a

    .line 499
    :cond_76
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gsk="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 502
    .restart local v9    # "groupSortKeyPortion":Ljava/lang/String;
    :goto_87
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    .line 503
    .local v10, "isGroupSummary":Z
    const-string v11, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    .line 506
    nop

    .line 505
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v13

    const/16 v15, 0x30

    const/4 v14, 0x1

    if-eqz v13, :cond_a7

    .line 506
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v13

    if-le v13, v14, :cond_a7

    .line 507
    nop

    .line 505
    move v13, v15

    goto :goto_aa

    .line 507
    :cond_a7
    nop

    .line 505
    const/16 v13, 0x31

    :goto_aa
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v12, v0

    .line 508
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x2

    .line 509
    if-eqz v10, :cond_be

    goto :goto_c0

    :cond_be
    const/16 v15, 0x31

    :goto_c0
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v9, v12, v13

    const/4 v13, 0x4

    .line 511
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 504
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 503
    invoke-virtual {v6, v11}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 483
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v7    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "groupSortKey":Ljava/lang/String;
    .end local v9    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v10    # "isGroupSummary":Z
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_49

    .line 513
    .end local v5    # "i":I
    :cond_df
    iget-object v0, v1, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 514
    monitor-exit v4
    :try_end_e5
    .catchall {:try_start_25 .. :try_end_e5} :catchall_44

    .line 517
    iget-object v0, v1, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 518
    return-void

    .line 514
    :goto_eb
    :try_start_eb
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_44

    throw v0
.end method

.method public updateBadgingEnabled()V
    .registers 9

    .line 1488
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    .line 1489
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 1491
    :cond_b
    const/4 v0, 0x0

    .line 1493
    .local v0, "changed":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 1493
    .local v0, "index":I
    .local v2, "changed":Z
    :goto_f
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 1494
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 1495
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    .line 1496
    .local v4, "oldValue":Z
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_badging"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_35

    move v5, v7

    goto :goto_36

    :cond_35
    move v5, v1

    .line 1499
    .local v5, "newValue":Z
    :goto_36
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1500
    if-eq v4, v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v7, v1

    :goto_3f
    or-int/2addr v2, v7

    .line 1493
    .end local v3    # "userId":I
    .end local v4    # "oldValue":Z
    .end local v5    # "newValue":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1502
    .end local v0    # "index":I
    :cond_43
    if-eqz v2, :cond_48

    .line 1503
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 1505
    :cond_48
    return-void
.end method

.method public updateChannelsBypassingDnd()V
    .registers 9

    .line 1030
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1031
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1032
    .local v1, "numRecords":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "recordIndex":I
    :goto_b
    if-ge v3, v1, :cond_47

    .line 1033
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 1039
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 1041
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    if-nez v7, :cond_43

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 1042
    iget-boolean v2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-nez v2, :cond_41

    .line 1043
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 1044
    invoke-virtual {p0, v2}, Lcom/android/server/notification/RankingHelper;->updateZenPolicy(Z)V

    .line 1046
    :cond_41
    monitor-exit v0

    return-void

    .line 1048
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    :cond_43
    goto :goto_1f

    .line 1032
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1050
    .end local v1    # "numRecords":I
    .end local v3    # "recordIndex":I
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_52

    .line 1052
    iget-boolean v0, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eqz v0, :cond_51

    .line 1053
    iput-boolean v2, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    .line 1054
    invoke-virtual {p0, v2}, Lcom/android/server/notification/RankingHelper;->updateZenPolicy(Z)V

    .line 1056
    :cond_51
    return-void

    .line 1050
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "updatedChannel"    # Landroid/app/NotificationChannel;
    .param p4, "fromUser"    # Z

    .line 712
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .line 715
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_9c

    .line 718
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 719
    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz v1, :cond_94

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_94

    .line 722
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    .line 723
    const/16 v2, -0x3e8

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 725
    :cond_30
    if-nez p4, :cond_39

    .line 726
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 728
    :cond_39
    if-eqz p4, :cond_45

    .line 729
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 730
    invoke-virtual {p0, v1, p3}, Lcom/android/server/notification/RankingHelper;->lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 732
    :cond_45
    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 737
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    .line 738
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 739
    const/4 v2, 0x2

    goto :goto_6a

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 740
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 741
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    .line 744
    :cond_78
    invoke-virtual {v1, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 746
    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 749
    :cond_85
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/notification/RankingHelper;->mAreChannelsBypassingDnd:Z

    if-eq v2, v3, :cond_90

    .line 750
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateChannelsBypassingDnd()V

    .line 752
    :cond_90
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 753
    return-void

    .line 720
    :cond_94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Channel does not exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 716
    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_9c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid package"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateZenPolicy(Z)V
    .registers 11
    .param p1, "areChannelsBypassingDnd"    # Z

    .line 1059
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 1060
    .local v0, "policy":Landroid/app/NotificationManager$Policy;
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v6, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 1063
    if-eqz p1, :cond_17

    const/4 v2, 0x1

    .line 1064
    :goto_15
    move v7, v2

    goto :goto_19

    :cond_17
    const/4 v2, 0x0

    goto :goto_15

    :goto_19
    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 1060
    invoke-virtual {v1, v8}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 1065
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 14
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    const-string/jumbo v0, "ranking"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 393
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 396
    :try_start_15
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 397
    .local v3, "N":I
    const/4 v4, 0x0

    move v5, v4

    .line 397
    .local v5, "i":I
    :goto_1d
    if-ge v5, v3, :cond_10d

    .line 398
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/RankingHelper$Record;

    .line 400
    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_33

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eqz v7, :cond_33

    .line 401
    goto/16 :goto_109

    .line 403
    :cond_33
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v8, -0x3e8

    if-ne v7, v8, :cond_5c

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-nez v7, :cond_5c

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-ne v7, v8, :cond_5c

    iget-boolean v7, v6, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-ne v7, v2, :cond_5c

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    if-nez v7, :cond_5c

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    .line 409
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_5c

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    .line 410
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_5a

    goto :goto_5c

    :cond_5a
    move v7, v4

    goto :goto_5d

    :cond_5c
    :goto_5c
    move v7, v2

    .line 411
    .local v7, "hasNonDefaultSettings":Z
    :goto_5d
    if-eqz v7, :cond_109

    .line 412
    const-string/jumbo v9, "package"

    invoke-interface {p1, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 413
    const-string/jumbo v9, "name"

    iget-object v10, v6, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-interface {p1, v1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 414
    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-eq v9, v8, :cond_7c

    .line 415
    const-string v9, "importance"

    iget v10, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 417
    :cond_7c
    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v9, :cond_8c

    .line 418
    const-string/jumbo v9, "priority"

    iget v10, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v1, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    :cond_8c
    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v9, v8, :cond_9c

    .line 421
    const-string/jumbo v8, "visibility"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    :cond_9c
    const-string/jumbo v8, "show_badge"

    iget-boolean v9, v6, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const-string v8, "app_user_locked_fields"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->lockedAppFields:I

    .line 425
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 424
    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    if-nez p2, :cond_c1

    .line 428
    const-string/jumbo v8, "uid"

    iget v9, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    :cond_c1
    iget-object v8, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_cb
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_db

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    .line 432
    .local v9, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v9, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 433
    .end local v9    # "group":Landroid/app/NotificationChannelGroup;
    goto :goto_cb

    .line 435
    :cond_db
    iget-object v8, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_103

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    .line 436
    .local v9, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_ff

    .line 437
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v10

    if-nez v10, :cond_102

    .line 438
    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1, v10}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_102

    .line 441
    :cond_ff
    invoke-virtual {v9, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 443
    .end local v9    # "channel":Landroid/app/NotificationChannel;
    :cond_102
    :goto_102
    goto :goto_e5

    .line 445
    :cond_103
    const-string/jumbo v8, "package"

    invoke-interface {p1, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    .end local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v7    # "hasNonDefaultSettings":Z
    :cond_109
    :goto_109
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1d

    .line 448
    .end local v3    # "N":I
    .end local v5    # "i":I
    :cond_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_15 .. :try_end_10e} :catchall_115

    .line 449
    const-string/jumbo v0, "ranking"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    return-void

    .line 448
    :catchall_115
    move-exception v1

    :try_start_116
    monitor-exit v0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v1
.end method
