.class final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 323
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 369
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_43

    aget v3, p2, v2

    .line 370
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 371
    :try_start_e
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 373
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3c

    .line 374
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 375
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 376
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    goto :goto_3c

    .line 378
    :cond_33
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    .line 381
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3c
    :goto_3c
    monitor-exit v4

    .line 369
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 381
    .restart local v3    # "userId":I
    :catchall_40
    move-exception v0

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_40

    throw v0

    .line 383
    .end local v3    # "userId":I
    :cond_43
    return-void
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 387
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_43

    aget v3, p2, v2

    .line 388
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 389
    :try_start_e
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 391
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3c

    .line 392
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 393
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 394
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V

    goto :goto_3c

    .line 396
    :cond_33
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V

    .line 399
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3c
    :goto_3c
    monitor-exit v4

    .line 387
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 399
    .restart local v3    # "userId":I
    :catchall_40
    move-exception v0

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_40

    throw v0

    .line 401
    .end local v3    # "userId":I
    :cond_43
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 438
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3c

    aget v2, p2, v1

    .line 439
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 440
    :try_start_d
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 441
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 442
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_2c

    .line 443
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    goto :goto_35

    .line 445
    :cond_2c
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V

    .line 447
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :goto_35
    monitor-exit v3

    .line 438
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 447
    .restart local v2    # "userId":I
    :catchall_39
    move-exception v0

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw v0

    .line 449
    .end local v2    # "userId":I
    :cond_3c
    return-void
.end method

.method private onPackageUpgraded(Ljava/lang/String;[I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 420
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_43

    aget v3, p2, v2

    .line 421
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 422
    :try_start_e
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 424
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_3c

    .line 425
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v3, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 426
    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 427
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageUpgraded(Ljava/lang/String;I)V

    goto :goto_3c

    .line 429
    :cond_33
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageUpgraded(Ljava/lang/String;I)V

    .line 432
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_3c
    :goto_3c
    monitor-exit v4

    .line 420
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 432
    .restart local v3    # "userId":I
    :catchall_40
    move-exception v0

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_e .. :try_end_42} :catchall_40

    throw v0

    .line 434
    .end local v3    # "userId":I
    :cond_43
    return-void
.end method

.method private onPackageUpgrading(Ljava/lang/String;[I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 405
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3c

    aget v2, p2, v1

    .line 406
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 407
    :try_start_d
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 408
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 409
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_2c

    .line 410
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageUpgrading(Ljava/lang/String;I)V

    goto :goto_35

    .line 412
    :cond_2c
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageUpgrading(Ljava/lang/String;I)V

    .line 414
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :goto_35
    monitor-exit v3

    .line 405
    .end local v2    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 414
    .restart local v2    # "userId":I
    :catchall_39
    move-exception v0

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_39

    throw v0

    .line 416
    .end local v2    # "userId":I
    :cond_3c
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 327
    .local v0, "data":Landroid/net/Uri;
    if-nez v0, :cond_e

    .line 328
    const-string v1, "OverlayManager"

    const-string v2, "Cannot handle package broadcast with null data"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 331
    :cond_e
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 336
    .local v2, "replacing":Z
    const-string v4, "android.intent.extra.UID"

    const/16 v5, -0x2710

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 337
    .local v4, "extraUid":I
    const/4 v6, 0x1

    if-ne v4, v5, :cond_2f

    .line 338
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;
    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$100(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .local v5, "userIds":[I
    goto :goto_37

    .line 340
    .end local v5    # "userIds":[I
    :cond_2f
    new-array v5, v6, [I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    aput v7, v5, v3

    .line 343
    .restart local v5    # "userIds":[I
    :goto_37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0xa480416

    if-eq v9, v10, :cond_63

    const v6, 0x1f50b9c2

    if-eq v9, v6, :cond_59

    const v6, 0x5c1076e2

    if-eq v9, v6, :cond_50

    goto :goto_6d

    :cond_50
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    goto :goto_6e

    :cond_59
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const/4 v3, 0x2

    goto :goto_6e

    :cond_63
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    move v3, v6

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v3, v8

    :goto_6e
    packed-switch v3, :pswitch_data_8c

    goto :goto_8a

    .line 355
    :pswitch_72
    if-eqz v2, :cond_78

    .line 356
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageUpgrading(Ljava/lang/String;[I)V

    goto :goto_8a

    .line 358
    :cond_78
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    .line 360
    goto :goto_8a

    .line 352
    :pswitch_7c
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    .line 353
    goto :goto_8a

    .line 345
    :pswitch_80
    if-eqz v2, :cond_86

    .line 346
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageUpgraded(Ljava/lang/String;[I)V

    goto :goto_8a

    .line 348
    :cond_86
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 350
    nop

    .line 365
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7c
        :pswitch_72
    .end packed-switch
.end method
