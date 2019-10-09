.class final Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MulticastTransmitter"
.end annotation


# instance fields
.field private final mRandom:Ljava/util/Random;

.field private final mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 3

    .line 671
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 672
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    .line 673
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;
    .param p2, "x1"    # Landroid/net/ip/RouterAdvertisementDaemon$1;

    .line 671
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    return-void
.end method

.method private getNextMulticastTransmitDelayMs()J
    .registers 5

    .line 724
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelaySec()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private getNextMulticastTransmitDelaySec()I
    .registers 5

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "deprecationInProgress":Z
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$900(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 707
    :try_start_8
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1300(Landroid/net/ip/RouterAdvertisementDaemon;)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_17

    .line 709
    const v2, 0x15180

    monitor-exit v1

    return v2

    .line 711
    :cond_17
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1000(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 712
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 714
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    .line 715
    .local v1, "urgentPending":I
    if-gtz v1, :cond_3a

    if-eqz v0, :cond_30

    goto :goto_3a

    .line 719
    :cond_30
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mRandom:Ljava/util/Random;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v3, v2

    return v3

    .line 716
    :cond_3a
    :goto_3a
    const/4 v2, 0x3

    return v2

    .line 712
    .end local v1    # "urgentPending":I
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2
.end method


# virtual methods
.method public hup()V
    .registers 3

    .line 700
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->mUrgentAnnouncements:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 701
    invoke-virtual {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->interrupt()V

    .line 702
    return-void
.end method

.method public run()V
    .registers 3

    .line 677
    :goto_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # invokes: Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 679
    :try_start_8
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->getNextMulticastTransmitDelayMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_f} :catch_10

    .line 682
    goto :goto_11

    .line 680
    :catch_10
    move-exception v0

    .line 684
    :goto_11
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$800(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;

    move-result-object v1

    # invokes: Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V
    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    .line 685
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$900(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 686
    :try_start_23
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1000(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    move-result-object v1

    # invokes: Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounters()Z
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->access$1100(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 689
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # invokes: Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$1200(Landroid/net/ip/RouterAdvertisementDaemon;)V

    .line 691
    :cond_34
    monitor-exit v0

    goto :goto_0

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_36

    throw v1

    .line 693
    :cond_39
    return-void
.end method
