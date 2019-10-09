.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    }
.end annotation


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ATTR_BUCKETING_REASON:Ljava/lang/String; = "bucketReason"

.field private static final ATTR_BUCKET_ACTIVE_TIMEOUT_TIME:Ljava/lang/String; = "activeTimeoutTime"

.field private static final ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME:Ljava/lang/String; = "workingSetTimeoutTime"

.field private static final ATTR_CURRENT_BUCKET:Ljava/lang/String; = "appLimitBucket"

.field private static final ATTR_ELAPSED_IDLE:Ljava/lang/String; = "elapsedIdleTime"

.field private static final ATTR_LAST_PREDICTED_TIME:Ljava/lang/String; = "lastPredictedTime"

.field private static final ATTR_LAST_RUN_JOB_TIME:Ljava/lang/String; = "lastJobRunTime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SCREEN_IDLE:Ljava/lang/String; = "screenIdleTime"

.field private static final DEBUG:Z = false

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final STANDBY_BUCKET_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppIdleHistory"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private mElapsedDuration:J

.field private mElapsedSnapshot:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenOnDuration:J

.field private mScreenOnSnapshot:J

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .registers 5
    .param p1, "storageDir"    # Ljava/io/File;
    .param p2, "elapsedRealtime"    # J

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 142
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 143
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 144
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 145
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    .line 146
    return-void
.end method

.method private getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .line 583
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    return-wide p3

    .line 585
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 9
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;"
        }
    .end annotation

    .line 300
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 301
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-nez v0, :cond_36

    if-eqz p5, :cond_36

    .line 302
    new-instance v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v1}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v0, v1

    .line 303
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 304
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 305
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 306
    const/16 v1, 0x32

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 307
    const/16 v1, 0x100

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 308
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 309
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 310
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_36
    return-object v0
.end method

.method private getUserHistory(I)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 290
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    if-nez v0, :cond_18

    .line 291
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 292
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    .line 295
    :cond_18
    return-object v0
.end method

.method private readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .registers 20
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;)V"
        }
    .end annotation

    .line 517
    .local p2, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 517
    const/4 v3, 0x0

    move-object v4, v3

    .line 519
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v5, v0

    .line 520
    .local v5, "appIdleFile":Landroid/util/AtomicFile;
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v4, v0

    .line 521
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v6, v0

    .line 522
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 525
    :goto_23
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    .line 525
    .local v7, "type":I
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2f

    if-eq v7, v8, :cond_2f

    .line 525
    .end local v7    # "type":I
    goto :goto_23

    .line 530
    .restart local v7    # "type":I
    :cond_2f
    if-eq v7, v9, :cond_4b

    .line 531
    const-string v0, "AppIdleHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read app idle file for user "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_47} :catch_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_47} :catch_124
    .catchall {:try_start_6 .. :try_end_47} :catchall_120

    .line 578
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 532
    return-void

    .line 534
    :cond_4b
    :try_start_4b
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "packages"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_56} :catch_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_56} :catch_124
    .catchall {:try_start_4b .. :try_end_56} :catchall_120

    if-nez v0, :cond_5c

    .line 578
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 535
    return-void

    .line 537
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_124
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_60} :catch_124
    .catchall {:try_start_5c .. :try_end_60} :catchall_120

    move v7, v0

    if-eq v0, v8, :cond_119

    .line 538
    if-ne v7, v9, :cond_110

    .line 539
    :try_start_65
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 540
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 541
    const-string/jumbo v0, "name"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 542
    .local v11, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v12, v0

    .line 543
    .local v12, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const-string v0, "elapsedIdleTime"

    .line 544
    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 545
    const-string/jumbo v0, "screenIdleTime"

    .line 546
    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 547
    const-string/jumbo v0, "lastPredictedTime"

    const-wide/16 v13, 0x0

    invoke-direct {v1, v6, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 549
    const-string v0, "appLimitBucket"

    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 551
    .local v8, "currentBucketString":Ljava/lang/String;
    if-nez v8, :cond_b1

    .line 552
    const/16 v0, 0xa

    goto :goto_b5

    .line 553
    :cond_b1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_b5
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 554
    const-string v0, "bucketReason"

    .line 555
    invoke-interface {v6, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 556
    .local v9, "bucketingReason":Ljava/lang/String;
    const-string/jumbo v0, "lastJobRunTime"
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_c1} :catch_10b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_c1} :catch_10b
    .catchall {:try_start_65 .. :try_end_c1} :catchall_106

    move-object v15, v4

    const-wide/high16 v3, -0x8000000000000000L

    .line 556
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_c4
    invoke-direct {v1, v6, v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 558
    const-string v0, "activeTimeoutTime"

    invoke-direct {v1, v6, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    .line 560
    const-string/jumbo v0, "workingSetTimeoutTime"

    invoke-direct {v1, v6, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    .line 562
    const/16 v0, 0x100

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_df} :catch_fd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c4 .. :try_end_df} :catch_fd
    .catchall {:try_start_c4 .. :try_end_df} :catchall_f8

    .line 563
    if-eqz v9, :cond_eb

    .line 565
    const/16 v0, 0x10

    .line 566
    :try_start_e3
    invoke-static {v9, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_e9
    .catch Ljava/lang/NumberFormatException; {:try_start_e3 .. :try_end_e9} :catch_ea
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e9} :catch_fd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e3 .. :try_end_e9} :catch_fd
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_f8

    .line 568
    goto :goto_eb

    .line 567
    :catch_ea
    move-exception v0

    .line 570
    :cond_eb
    :goto_eb
    const/4 v0, -0x1

    :try_start_ec
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ee} :catch_fd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ec .. :try_end_ee} :catch_fd
    .catchall {:try_start_ec .. :try_end_ee} :catchall_f8

    .line 571
    move-object/from16 v3, p2

    :try_start_f0
    invoke-virtual {v3, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f0 .. :try_end_f3} :catch_f6
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    .line 571
    .end local v8    # "currentBucketString":Ljava/lang/String;
    .end local v9    # "bucketingReason":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    goto :goto_105

    .line 578
    .end local v5    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_f4
    move-exception v0

    goto :goto_fb

    .line 575
    :catch_f6
    move-exception v0

    goto :goto_100

    .line 578
    :catchall_f8
    move-exception v0

    move-object/from16 v3, p2

    .line 578
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_fb
    move-object v4, v15

    goto :goto_143

    .line 575
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catch_fd
    move-exception v0

    move-object/from16 v3, p2

    .line 575
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_100
    move-object v4, v15

    goto :goto_127

    .line 573
    .restart local v5    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_102
    move-object/from16 v3, p2

    move-object v15, v4

    .line 573
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :goto_105
    goto :goto_113

    .line 578
    .end local v5    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_106
    move-exception v0

    move-object/from16 v3, p2

    move-object v15, v4

    .line 578
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    goto :goto_143

    .line 575
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_10b
    move-exception v0

    move-object/from16 v3, p2

    move-object v15, v4

    .line 575
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    goto :goto_127

    .line 537
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_110
    move-object/from16 v3, p2

    move-object v15, v4

    .line 537
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :goto_113
    move-object v4, v15

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_5c

    .line 578
    .end local v5    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_119
    move-object/from16 v3, p2

    move-object v15, v4

    .line 578
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 578
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_140

    :catchall_120
    move-exception v0

    move-object/from16 v3, p2

    goto :goto_143

    .line 575
    :catch_124
    move-exception v0

    move-object/from16 v3, p2

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    :goto_127
    :try_start_127
    const-string v5, "AppIdleHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read app idle file for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catchall {:try_start_127 .. :try_end_13d} :catchall_142

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 579
    :goto_140
    nop

    .line 580
    return-void

    .line 578
    :catchall_142
    move-exception v0

    :goto_143
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private readScreenOnTime()V
    .registers 5

    .line 178
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    .line 179
    .local v0, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 181
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 182
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 184
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2b} :catch_2c

    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2d

    .line 185
    :catch_2c
    move-exception v1

    .line 186
    :goto_2d
    goto :goto_31

    .line 188
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 190
    :goto_31
    return-void
.end method

.method private writeScreenOnTime()V
    .registers 6

    .line 193
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 194
    .local v0, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 196
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 198
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 199
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3e} :catch_3f

    .line 202
    goto :goto_43

    .line 200
    :catch_3f
    move-exception v2

    .line 201
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 203
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_43
    return-void
.end method


# virtual methods
.method public clearUsage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 459
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 460
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V
    .registers 21
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 644
    move-object/from16 v3, p3

    const-string v4, "App Standby States:"

    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 646
    iget-object v4, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 647
    .local v4, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 648
    .local v5, "elapsedRealtime":J
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v7

    .line 649
    .local v7, "totalElapsedTime":J
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v9

    .line 650
    .local v9, "screenOnTime":J
    if-nez v4, :cond_27

    return-void

    .line 651
    :cond_27
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 652
    .local v11, "P":I
    const/4 v12, 0x0

    .line 652
    .local v12, "p":I
    :goto_2c
    if-ge v12, v11, :cond_108

    .line 653
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 654
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 655
    .local v14, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v3, :cond_47

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_47

    .line 656
    nop

    .line 652
    move-object/from16 v16, v4

    goto/16 :goto_100

    .line 658
    :cond_47
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " u="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " bucket="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " reason="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 662
    invoke-static {v15}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 663
    const-string v3, " used="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 664
    move-object/from16 v16, v4

    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 664
    .end local v4    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .local v16, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    sub-long v3, v7, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 665
    const-string v3, " usedScr="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long v3, v9, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 667
    const-string v3, " lastPred="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long v3, v7, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 669
    const-string v3, " activeLeft="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    sub-long/2addr v3, v7

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 672
    const-string v3, " wsLeft="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 673
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    sub-long/2addr v3, v7

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 675
    const-string v3, " lastJob="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget-wide v3, v14, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v3, v7, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " idle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v2, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v4

    if-eqz v4, :cond_f0

    const-string/jumbo v4, "y"

    goto :goto_f3

    :cond_f0
    const-string/jumbo v4, "n"

    :goto_f3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 652
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_100
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    move-object/from16 v3, p3

    goto/16 :goto_2c

    .line 680
    .end local v12    # "p":I
    .end local v16    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .restart local v4    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    :cond_108
    move-object/from16 v16, v4

    .line 680
    .end local v4    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .restart local v16    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 681
    const-string/jumbo v3, "totalElapsedTime="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 684
    const-string/jumbo v3, "totalScreenOnTime="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 686
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 688
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 414
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 415
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 416
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 417
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    return v1
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "appIdleEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 421
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 422
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 423
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .local v2, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_2e

    .line 425
    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 426
    if-eqz p2, :cond_23

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v6, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_25

    :cond_23
    const/16 v6, 0xa

    :goto_25
    invoke-direct {v4, v5, v6}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 425
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 428
    .end local v3    # "i":I
    :cond_2e
    return-object v2
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 432
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 433
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 434
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 435
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_13

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 335
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 336
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 337
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 338
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    return-object v0
.end method

.method public getElapsedTime(J)J
    .registers 7
    .param p1, "elapsedRealtime"    # J

    .line 439
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getScreenOnTime(J)J
    .registers 7
    .param p1, "elapsedRealtime"    # J

    .line 165
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 166
    .local v0, "screenOnTime":J
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_b

    .line 167
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 169
    :cond_b
    return-wide v0
.end method

.method getScreenOnTimeFile()Ljava/io/File;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v2, "screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "screenTimeThresholds"    # [J
    .param p6, "elapsedTimeThresholds"    # [J

    .line 487
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 488
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 491
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-nez v0, :cond_13

    array-length v1, p5

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 493
    :cond_13
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long/2addr v1, v3

    .line 494
    .local v1, "screenOnDelta":J
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    iget-wide v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr v3, v7

    .line 501
    .local v3, "elapsedDelta":J
    array-length v5, p5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_24
    if-ltz v5, :cond_36

    .line 502
    aget-wide v7, p5, v5

    cmp-long v7, v1, v7

    if-ltz v7, :cond_33

    aget-wide v7, p6, v5

    cmp-long v7, v3, v7

    if-ltz v7, :cond_33

    .line 504
    return v5

    .line 501
    :cond_33
    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    .line 507
    .end local v5    # "i":I
    :cond_36
    const/4 v5, 0x0

    return v5
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 405
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 406
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 407
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 409
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_1c

    const-wide v1, 0x7fffffffffffffffL

    return-wide v1

    .line 410
    :cond_1c
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method getUserFile(I)Ljava/io/File;
    .registers 7
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 512
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 513
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "app_idle_stats.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 512
    return-object v0
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 320
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 321
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 322
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 323
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 324
    return v1

    .line 326
    :cond_12
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v3, 0x28

    if-lt v2, v3, :cond_1a

    const/4 v1, 0x1

    nop

    :cond_1a
    return v1
.end method

.method public onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 316
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 317
    return-void
.end method

.method public reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 14
    .param p1, "appUsageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newBucket"    # I
    .param p4, "usageReason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "timeout"    # J

    .line 233
    cmp-long v0, p7, p5

    if-lez v0, :cond_3c

    .line 235
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p7, v2

    add-long/2addr v0, v2

    .line 236
    .local v0, "timeoutTime":J
    const/16 v2, 0xa

    if-ne p3, v2, :cond_18

    .line 237
    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    goto :goto_3c

    .line 239
    :cond_18
    const/16 v2, 0x14

    if-ne p3, v2, :cond_25

    .line 240
    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    goto :goto_3c

    .line 243
    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set a timeout on bucket="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    .end local v0    # "timeoutTime":J
    :cond_3c
    :goto_3c
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_51

    .line 249
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p5, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 251
    invoke-virtual {p0, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 254
    :cond_51
    iget v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-le v0, p3, :cond_57

    .line 255
    iput p3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 262
    :cond_57
    const/16 v0, 0x300

    or-int/2addr v0, p4

    iput v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 264
    return-object p1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "usageReason"    # I
    .param p5, "nowElapsed"    # J
    .param p7, "timeout"    # J

    .line 283
    move-object v9, p0

    move v10, p2

    invoke-direct {v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v11

    .line 284
    .local v11, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x1

    move-object v0, v9

    move-object v1, v11

    move-object v2, p1

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v12

    .line 285
    .local v12, "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move-object v1, v12

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I

    .line 343
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 344
    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I
    .param p7, "resetTimeout"    # Z

    .line 348
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 349
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 350
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 351
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 352
    iput p6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 354
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    .line 356
    .local v1, "elapsed":J
    const v3, 0xff00

    and-int/2addr v3, p6

    const/16 v4, 0x500

    if-ne v3, v4, :cond_22

    .line 357
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 358
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 360
    :cond_22
    if-eqz p7, :cond_28

    .line 361
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    .line 362
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    .line 368
    :cond_28
    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "elapsedRealtime"    # J

    .line 444
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 445
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 447
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz p3, :cond_18

    .line 448
    const/16 v1, 0x28

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 449
    const/16 v1, 0x400

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_20

    .line 451
    :cond_18
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 453
    const/16 v1, 0x303

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 455
    :goto_20
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    return v1
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 389
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 390
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 391
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 392
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 393
    return-void
.end method

.method shouldInformListeners(Ljava/lang/String;IJI)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I

    .line 465
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 466
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 468
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq v1, p5, :cond_15

    .line 469
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 470
    const/4 v1, 0x1

    return v1

    .line 472
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public updateDisplay(ZJ)V
    .registers 8
    .param p1, "screenOn"    # Z
    .param p2, "elapsedRealtime"    # J

    .line 149
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 151
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v0, :cond_e

    .line 153
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    goto :goto_22

    .line 155
    :cond_e
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 156
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 157
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 162
    :goto_22
    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedTimeAdjusted"    # J
    .param p4, "bucket"    # I

    .line 377
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 378
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 379
    return-void
.end method

.method public writeAppIdleDurations()V
    .registers 7

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 211
    .local v0, "elapsedRealtime":J
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 212
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 213
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 214
    return-void
.end method

.method public writeAppIdleTimes(I)V
    .registers 18
    .param p1, "userId"    # I

    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 592
    .local v2, "appIdleFile":Landroid/util/AtomicFile;
    :try_start_b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v1, v0

    .line 593
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 595
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 596
    .local v3, "xml":Lcom/android/internal/util/FastXmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 597
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 598
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 600
    const-string/jumbo v4, "packages"

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v4

    .line 603
    .local v4, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 604
    .local v5, "N":I
    const/4 v7, 0x0

    .line 604
    .local v7, "i":I
    :goto_40
    if-ge v7, v5, :cond_d6

    .line 605
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 606
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 607
    .local v9, "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const-string/jumbo v10, "package"

    invoke-virtual {v3, v6, v10}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    const-string/jumbo v10, "name"

    invoke-virtual {v3, v6, v10, v8}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    const-string v10, "elapsedIdleTime"

    iget-wide v11, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 610
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 609
    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    const-string/jumbo v10, "screenIdleTime"

    iget-wide v11, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 612
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 611
    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 613
    const-string/jumbo v10, "lastPredictedTime"

    iget-wide v11, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 614
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 613
    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    const-string v10, "appLimitBucket"

    iget v11, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 616
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 615
    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    const-string v10, "bucketReason"

    iget v11, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 618
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 617
    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 619
    iget-wide v10, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_a6

    .line 620
    const-string v10, "activeTimeoutTime"

    iget-wide v14, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketActiveTimeoutTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    :cond_a6
    iget-wide v10, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_b8

    .line 624
    const-string/jumbo v10, "workingSetTimeoutTime"

    iget-wide v11, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketWorkingSetTimeoutTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    :cond_b8
    iget-wide v10, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v10, v10, v12

    if-eqz v10, :cond_cc

    .line 628
    const-string/jumbo v10, "lastJobRunTime"

    iget-wide v11, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v6, v10, v11}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    :cond_cc
    const-string/jumbo v10, "package"

    invoke-virtual {v3, v6, v10}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_40

    .line 634
    .end local v7    # "i":I
    :cond_d6
    const-string/jumbo v7, "packages"

    invoke-virtual {v3, v6, v7}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 635
    invoke-virtual {v3}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 636
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e2} :catch_e6

    .line 640
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "xml":Lcom/android/internal/util/FastXmlSerializer;
    .end local v4    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .end local v5    # "N":I
    nop

    .line 641
    move/from16 v5, p1

    goto :goto_102

    .line 637
    :catch_e6
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 639
    const-string v3, "AppIdleHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing app idle file for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_102
    return-void
.end method
