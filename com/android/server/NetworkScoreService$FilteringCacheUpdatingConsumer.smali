.class Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteringCacheUpdatingConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Landroid/net/INetworkScoreCache;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator<",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetworkType:I

.field private mScanResultsFilter:Ljava/util/function/UnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/UnaryOperator<",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScoredNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "networkType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;I",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;>;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;>;)V"
        }
    .end annotation

    .line 523
    .local p2, "scoredNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    .local p4, "currentNetworkFilter":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .local p5, "scanResultsFilter":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    .line 525
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    .line 526
    iput p3, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    .line 527
    iput-object p4, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 528
    iput-object p5, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 529
    return-void
.end method

.method static create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;I)",
            "Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;"
        }
    .end annotation

    .line 515
    .local p1, "scoredNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    new-instance v6, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/util/function/UnaryOperator;Ljava/util/function/UnaryOperator;)V

    return-object v6
.end method

.method private filterScores(Ljava/util/List;I)Ljava/util/List;
    .registers 6
    .param p2, "filterType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation

    .line 556
    .local p1, "scoredNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    packed-switch p2, :pswitch_data_52

    .line 575
    const-string v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown filter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-object p1

    .line 568
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    if-nez v0, :cond_2c

    .line 569
    new-instance v0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;

    new-instance v1, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/NetworkScoreService$ScanResultsSupplier;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    .line 572
    :cond_2c
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScanResultsFilter:Ljava/util/function/UnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 561
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    if-nez v0, :cond_47

    .line 562
    new-instance v0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;

    new-instance v1, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/NetworkScoreService$WifiInfoSupplier;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    .line 565
    :cond_47
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mCurrentNetworkFilter:Ljava/util/function/UnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 558
    :pswitch_50
    return-object p1

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_50
        :pswitch_35
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V
    .registers 8
    .param p1, "networkScoreCache"    # Landroid/net/INetworkScoreCache;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "filterType":I
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 535
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 539
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mScoredNetworkList:Ljava/util/List;

    .line 540
    invoke-direct {p0, v1, v0}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->filterScores(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    .line 541
    .local v1, "filteredNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 542
    invoke-interface {p1, v1}, Landroid/net/INetworkScoreCache;->updateScores(Ljava/util/List;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1c

    .line 548
    .end local v1    # "filteredNetworkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    :cond_1b
    goto :goto_3b

    .line 544
    :catch_1c
    move-exception v1

    .line 545
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/NetworkScoreService;->VERBOSE:Z
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 546
    const-string v2, "NetworkScoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to update scores of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->mNetworkType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3b
    :goto_3b
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 501
    check-cast p1, Landroid/net/INetworkScoreCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V

    return-void
.end method
