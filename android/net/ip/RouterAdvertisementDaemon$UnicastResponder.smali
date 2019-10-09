.class final Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnicastResponder"
.end annotation


# instance fields
.field private final mSolication:[B

.field private final solicitor:Ljava/net/InetSocketAddress;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .registers 2

    .line 639
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 640
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1}, Ljava/net/InetSocketAddress;-><init>()V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    .line 644
    const/16 p1, 0x500

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;
    .param p2, "x1"    # Landroid/net/ip/RouterAdvertisementDaemon$1;

    .line 639
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 648
    :goto_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # invokes: Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 651
    :try_start_8
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 652
    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$400(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    array-length v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    .line 651
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0

    .line 654
    .local v0, "rval":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_33

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B
    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->access$500()B

    move-result v2
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_27} :catch_34
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_27} :catch_34

    if-eq v1, v2, :cond_2a

    goto :goto_33

    .line 662
    .end local v0    # "rval":I
    :cond_2a
    nop

    .line 664
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    # invokes: Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V
    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    .line 655
    .restart local v0    # "rval":I
    :cond_33
    :goto_33
    goto :goto_0

    .line 657
    .end local v0    # "rval":I
    :catch_34
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    # invokes: Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 659
    # getter for: Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recvfrom error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_56
    goto :goto_0

    .line 666
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_57
    return-void
.end method
