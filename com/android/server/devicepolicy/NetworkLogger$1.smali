.class Lcom/android/server/devicepolicy/NetworkLogger$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLogger;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/NetworkLogger;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/NetworkLogger;

    .line 54
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method

.method private sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/app/admin/NetworkEvent;

    .line 77
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    # getter for: Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 79
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "network_event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 82
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    # getter for: Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .registers 13
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timestamp"    # J
    .param p5, "uid"    # I

    .line 68
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    # getter for: Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 69
    return-void

    .line 71
    :cond_d
    new-instance v0, Landroid/app/admin/ConnectEvent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    # getter for: Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLogger;->access$100(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 73
    .local v0, "connectEvent":Landroid/app/admin/ConnectEvent;
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 74
    return-void
.end method

.method public onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    .registers 15
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "ipAddressesCount"    # I
    .param p4, "timestamp"    # J
    .param p6, "uid"    # I

    .line 58
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    # getter for: Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 59
    return-void

    .line 61
    :cond_d
    new-instance v0, Landroid/app/admin/DnsEvent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 62
    # getter for: Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;
    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLogger;->access$100(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 63
    .local v0, "dnsEvent":Landroid/app/admin/DnsEvent;
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 64
    return-void
.end method
