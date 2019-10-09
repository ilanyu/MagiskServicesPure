.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingPrivateDnsState"
.end annotation


# instance fields
.field private mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

.field private mPrivateDnsReevalDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .line 738
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method

.method private handlePrivateDnsEvaluationFailure()V
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    int-to-long v1, v1

    const v3, 0x8200f

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    .line 824
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 825
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    const v1, 0x927c0

    if-le v0, v1, :cond_20

    .line 826
    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 828
    :cond_20
    return-void
.end method

.method private inStrictMode()Z
    .registers 2

    .line 789
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isStrictModeHostnameResolved()Z
    .registers 3

    .line 793
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    iget-object v0, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 794
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    iget-object v0, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    array-length v0, v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 793
    :goto_1e
    return v0
.end method

.method private notifyPrivateDnsConfigResolved()V
    .registers 7

    .line 811
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 812
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 811
    const v4, 0x8200e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 813
    return-void
.end method

.method private resolveStrictModeHostname()V
    .registers 4

    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 803
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 802
    invoke-static {v0, v1, v2}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    .line 804
    .local v0, "ips":[Ljava/net/InetAddress;
    new-instance v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    :try_end_1e
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 807
    .end local v0    # "ips":[Ljava/net/InetAddress;
    goto :goto_23

    .line 805
    :catch_1f
    move-exception v0

    .line 806
    .local v0, "uhe":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 808
    .end local v0    # "uhe":Ljava/net/UnknownHostException;
    :goto_23
    return-void
.end method

.method private sendPrivateDnsProbe()Z
    .registers 6

    .line 832
    const-string v0, "-dnsotls-ds.metric.gstatic.com"

    .line 833
    .local v0, "ONE_TIME_HOSTNAME_SUFFIX":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-dnsotls-ds.metric.gstatic.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "host":Ljava/lang/String;
    :try_start_22
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 837
    .local v2, "ips":[Ljava/net/InetAddress;
    if-eqz v2, :cond_37

    array-length v4, v2
    :try_end_33
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_33} :catch_38

    if-lez v4, :cond_37

    const/4 v3, 0x1

    nop

    :cond_37
    return v3

    .line 838
    .end local v2    # "ips":[Ljava/net/InetAddress;
    :catch_38
    move-exception v2

    .line 839
    return v3
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 744
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 745
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 746
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200f

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 747
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 751
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x8200f

    if-eq v0, v1, :cond_9

    .line 783
    const/4 v0, 0x0

    return v0

    .line 753
    :cond_9
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->inStrictMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 754
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->isStrictModeHostnameResolved()Z

    move-result v0

    if-nez v0, :cond_26

    .line 755
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->resolveStrictModeHostname()V

    .line 757
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->isStrictModeHostnameResolved()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 758
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->notifyPrivateDnsConfigResolved()V

    goto :goto_26

    .line 760
    :cond_22
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->handlePrivateDnsEvaluationFailure()V

    .line 761
    goto :goto_3c

    .line 773
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->sendPrivateDnsProbe()Z

    move-result v0

    if-nez v0, :cond_30

    .line 774
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->handlePrivateDnsEvaluationFailure()V

    .line 775
    goto :goto_3c

    .line 780
    :cond_30
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 781
    nop

    .line 785
    :goto_3c
    const/4 v0, 0x1

    return v0
.end method
