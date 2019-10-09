.class Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINIMUM_CHANGE_DELTA:D = 0.05

.field private static final MSG_CHECK_STORAGE_DELTA:I = 0x64

.field private static final MSG_LOAD_CACHED_QUOTAS_FROM_FILE:I = 0x65

.field private static final UNSET:I = -0x1


# instance fields
.field private mMinimumThresholdBytes:D

.field private mPreviousBytes:J

.field private final mStats:Landroid/os/StatFs;

.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .registers 7
    .param p2, "looper"    # Landroid/os/Looper;

    .line 476
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 477
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 479
    new-instance p1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 480
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 481
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {p1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    .line 482
    return-void
.end method

.method private getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .registers 6

    .line 540
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 541
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 542
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    # getter for: Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    # getter for: Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;
    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->access$200(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    # getter for: Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/usage/StorageStatsService;->access$300(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    return-object v1
.end method

.method private recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .registers 2
    .param p1, "strategy"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .line 536
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->recalculateQuotas()V

    .line 537
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 489
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    # getter for: Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->access$100(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 490
    return-void

    .line 493
    :cond_11
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x7530

    const/16 v3, 0x64

    packed-switch v0, :pswitch_data_80

    .line 527
    return-void

    .line 505
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v0

    .line 506
    .local v0, "strategy":Lcom/android/server/storage/CacheQuotaStrategy;
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 508
    :try_start_23
    invoke-virtual {v0}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_33
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_3b

    .line 511
    :catch_2a
    move-exception v4

    .line 512
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v5, "StorageStatsService"

    const-string v6, "Cache quota XML file is malformed?"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    goto :goto_3c

    .line 509
    :catch_33
    move-exception v4

    .line 510
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "StorageStatsService"

    const-string v6, "An error occurred while reading the cache quota file."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v4    # "e":Ljava/io/IOException;
    :goto_3b
    nop

    .line 516
    :goto_3c
    iget-wide v4, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_4f

    .line 517
    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 518
    invoke-direct {p0, v0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 520
    :cond_4f
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 521
    goto :goto_7f

    .line 495
    .end local v0    # "strategy":Lcom/android/server/storage/CacheQuotaStrategy;
    :pswitch_53
    iget-wide v4, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 496
    .local v4, "bytesDelta":J
    long-to-double v6, v4

    iget-wide v8, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    cmpl-double v0, v6, v8

    if-lez v0, :cond_7b

    .line 497
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 498
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 499
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/StorageStatsService;->notifySignificantDelta()V

    .line 501
    :cond_7b
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 502
    nop

    .line 529
    .end local v4    # "bytesDelta":J
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x64
        :pswitch_53
        :pswitch_1b
    .end packed-switch
.end method
