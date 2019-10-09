.class Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTimeUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/NetworkTimeUpdateService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p2, "x1"    # Lcom/android/server/NetworkTimeUpdateService$1;

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .line 295
    const-string v0, "NetworkTimeUpdateService"

    const-string v1, "New default network %s; checking time."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;
    invoke-static {v0, p1}, Lcom/android/server/NetworkTimeUpdateService;->access$402(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 298
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V
    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->access$300(Lcom/android/server/NetworkTimeUpdateService;I)V

    .line 299
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 303
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    # getter for: Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;
    invoke-static {v0}, Lcom/android/server/NetworkTimeUpdateService;->access$400(Lcom/android/server/NetworkTimeUpdateService;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$NetworkTimeUpdateCallback;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkTimeUpdateService;->mDefaultNetwork:Landroid/net/Network;
    invoke-static {v0, v1}, Lcom/android/server/NetworkTimeUpdateService;->access$402(Lcom/android/server/NetworkTimeUpdateService;Landroid/net/Network;)Landroid/net/Network;

    .line 304
    :cond_12
    return-void
.end method
