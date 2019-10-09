.class Lcom/android/server/net/watchlist/NetworkWatchlistService$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkWatchlistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/watchlist/NetworkWatchlistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 143
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .registers 10
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timestamp"    # J
    .param p5, "uid"    # I

    .line 155
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    # getter for: Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    invoke-static {v0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->access$300(Lcom/android/server/net/watchlist/NetworkWatchlistService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 156
    return-void

    .line 158
    :cond_9
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-object v0, v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    .registers 8
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "ipAddressesCount"    # I
    .param p4, "timestamp"    # J
    .param p6, "uid"    # I

    .line 147
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    # getter for: Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    invoke-static {v0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->access$300(Lcom/android/server/net/watchlist/NetworkWatchlistService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 148
    return-void

    .line 150
    :cond_9
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-object v0, v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0, p1, p2, p6}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 151
    return-void
.end method
