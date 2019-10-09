.class Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpstreamNetworkCallback"
.end annotation


# instance fields
.field private final mCallbackType:I

.field final synthetic this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V
    .registers 3
    .param p2, "callbackType"    # I

    .line 413
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 414
    iput p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    .line 415
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 419
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleAvailable(ILandroid/net/Network;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    .line 420
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newNc"    # Landroid/net/NetworkCapabilities;

    .line 424
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$100(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 425
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 429
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$200(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->recomputeLocalPrefixes()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    .line 431
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 445
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLost(ILandroid/net/Network;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    .line 446
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->recomputeLocalPrefixes()V
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    .line 447
    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 440
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleResumed(ILandroid/net/Network;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    .line 441
    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .registers 4
    .param p1, "network"    # Landroid/net/Network;

    .line 435
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    # invokes: Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleSuspended(ILandroid/net/Network;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;ILandroid/net/Network;)V

    .line 436
    return-void
.end method
