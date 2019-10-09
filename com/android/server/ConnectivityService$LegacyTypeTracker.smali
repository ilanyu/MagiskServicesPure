.class Lcom/android/server/ConnectivityService$LegacyTypeTracker;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyTypeTracker"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final VDBG:Z = false


# instance fields
.field private final mTypeLists:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    .line 585
    return-void
.end method

.method private maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I
    .param p4, "isDefaultNetwork"    # Z

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " broadcast for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isDefaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method private naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 695
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_7
    const-string/jumbo v0, "null"

    .line 696
    .local v0, "name":Ljava/lang/String;
    :goto_a
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_2f

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31

    .line 698
    :cond_2f
    const-string v1, "???/???"

    .line 699
    .local v1, "state":Ljava/lang/String;
    :goto_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public add(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 620
    return-void

    .line 624
    :cond_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    .line 625
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 626
    return-void

    .line 628
    :cond_12
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v1

    .line 629
    :try_start_15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_35

    .line 633
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v1, p2}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    .line 634
    .local v1, "isDefaultNetwork":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    if-eqz v1, :cond_34

    .line 635
    :cond_28
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, p2, v2, p1, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 636
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v2, p2, v3, p1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 638
    :cond_34
    return-void

    .line 630
    .end local v1    # "isDefaultNetwork":Z
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public addSupportedType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 588
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-nez v0, :cond_10

    .line 592
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p1

    .line 593
    return-void

    .line 589
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "legacy list for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "already initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 703
    const-string/jumbo v0, "mLegacyTypeTracker:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 705
    const-string v0, "Supported types:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 706
    const/4 v0, 0x0

    move v1, v0

    .line 706
    .local v1, "type":I
    :goto_10
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v1, v2, :cond_32

    .line 707
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 706
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 709
    .end local v1    # "type":I
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 710
    const-string v1, "Current state:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 712
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v1

    .line 713
    nop

    .line 713
    .local v0, "type":I
    :goto_41
    :try_start_41
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_8a

    .line 714
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_87

    .line 715
    :cond_57
    iget-object v2, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 716
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 717
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_5f

    .line 713
    :cond_87
    :goto_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 719
    .end local v0    # "type":I
    :cond_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_41 .. :try_end_8b} :catchall_95

    .line 720
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 721
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 722
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 723
    return-void

    .line 719
    :catchall_95
    move-exception v0

    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v0
.end method

.method public getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 5
    .param p1, "type"    # I

    .line 600
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v0

    .line 601
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 602
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object v1

    .line 604
    :cond_20
    monitor-exit v0

    .line 605
    const/4 v0, 0x0

    return-object v0

    .line 604
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public isTypeSupported(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 596
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "wasDefault"    # Z

    .line 642
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    .line 643
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6b

    .line 646
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 648
    .local v2, "wasFirstNetwork":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    monitor-enter v3

    .line 649
    :try_start_1b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 650
    monitor-exit v3

    return-void

    .line 652
    :cond_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_68

    .line 654
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 656
    .local v3, "state":Landroid/net/NetworkInfo$DetailedState;
    if-nez v2, :cond_2a

    if-eqz p3, :cond_32

    .line 657
    :cond_2a
    invoke-direct {p0, p2, v3, p1, p3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 658
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v4, p2, v3, p1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 661
    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    if-eqz v2, :cond_67

    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Other network available for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sending connected broadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 665
    .local v1, "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v4

    invoke-direct {p0, v1, v3, p1, v4}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 666
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v4, v1, v3, p1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 668
    .end local v1    # "replacement":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_67
    return-void

    .line 652
    .end local v3    # "state":Landroid/net/NetworkInfo$DetailedState;
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v1

    .line 644
    .end local v2    # "wasFirstNetwork":Z
    :cond_6b
    :goto_6b
    return-void
.end method

.method public remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "wasDefault"    # Z

    .line 673
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 674
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 676
    .end local v0    # "type":I
    :cond_c
    return-void
.end method

.method public update(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 681
    iget-object v0, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 682
    .local v0, "isDefault":Z
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 683
    .local v1, "state":Landroid/net/NetworkInfo$DetailedState;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "type":I
    :goto_e
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    array-length v4, v4

    if-ge v3, v4, :cond_3e

    .line 684
    iget-object v4, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->mTypeLists:[Ljava/util/ArrayList;

    aget-object v4, v4, v3

    .line 685
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    const/4 v5, 0x1

    if-eqz v4, :cond_22

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v6, v5

    goto :goto_23

    :cond_22
    move v6, v2

    .line 686
    .local v6, "contains":Z
    :goto_23
    if-eqz v6, :cond_2c

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne p1, v7, :cond_2c

    goto :goto_2d

    :cond_2c
    move v5, v2

    .line 687
    .local v5, "isFirst":Z
    :goto_2d
    if-nez v5, :cond_33

    if-eqz v6, :cond_3b

    if-eqz v0, :cond_3b

    .line 688
    :cond_33
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;IZ)V

    .line 689
    iget-object v7, p0, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    invoke-static {v7, p1, v1, v3}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V

    .line 683
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    .end local v5    # "isFirst":Z
    .end local v6    # "contains":Z
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 692
    .end local v3    # "type":I
    :cond_3e
    return-void
.end method
