.class Landroid/net/ip/IpClient$LoggingCallbackWrapper;
.super Landroid/net/ip/IpClient$Callback;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingCallbackWrapper"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "INVOKE "


# instance fields
.field private mCallback:Landroid/net/ip/IpClient$Callback;

.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$Callback;)V
    .registers 3
    .param p2, "callback"    # Landroid/net/ip/IpClient$Callback;

    .line 237
    iput-object p1, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Landroid/net/ip/IpClient$Callback;-><init>()V

    .line 238
    iput-object p2, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    .line 239
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->this$0:Landroid/net/ip/IpClient;

    # getter for: Landroid/net/ip/IpClient;->mLog:Landroid/net/util/SharedLog;
    invoke-static {v0}, Landroid/net/ip/IpClient;->access$000(Landroid/net/ip/IpClient;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INVOKE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 243
    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .registers 4
    .param p1, "filter"    # [B

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installPacketFilter(byte["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->installPacketFilter([B)V

    .line 289
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLinkPropertiesChange({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 274
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .registers 4
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewDhcpResults({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->onNewDhcpResults(Landroid/net/DhcpResults;)V

    .line 259
    return-void
.end method

.method public onPostDhcpAction()V
    .registers 2

    .line 252
    const-string/jumbo v0, "onPostDhcpAction()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onPostDhcpAction()V

    .line 254
    return-void
.end method

.method public onPreDhcpAction()V
    .registers 2

    .line 247
    const-string/jumbo v0, "onPreDhcpAction()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onPreDhcpAction()V

    .line 249
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProvisioningFailure({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 269
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProvisioningSuccess({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 264
    return-void
.end method

.method public onQuit()V
    .registers 2

    .line 282
    const-string/jumbo v0, "onQuit()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->onQuit()V

    .line 284
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .registers 4
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReachabilityLost("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->onReachabilityLost(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFallbackMulticastFilter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->setFallbackMulticastFilter(Z)V

    .line 299
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNeighborDiscoveryOffload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient$Callback;->setNeighborDiscoveryOffload(Z)V

    .line 304
    return-void
.end method

.method public startReadPacketFilter()V
    .registers 2

    .line 292
    const-string/jumbo v0, "startReadPacketFilter()"

    invoke-direct {p0, v0}, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->log(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Landroid/net/ip/IpClient$LoggingCallbackWrapper;->mCallback:Landroid/net/ip/IpClient$Callback;

    invoke-virtual {v0}, Landroid/net/ip/IpClient$Callback;->startReadPacketFilter()V

    .line 294
    return-void
.end method
