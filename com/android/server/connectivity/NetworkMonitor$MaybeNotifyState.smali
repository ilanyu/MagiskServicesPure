.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaybeNotifyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .line 533
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v1

    const v2, 0x8200a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 574
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 536
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x8200b

    if-eq v0, v1, :cond_9

    .line 567
    const/4 v0, 0x0

    return v0

    .line 538
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.CAPTIVE_PORTAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.extra.NETWORK"

    new-instance v2, Landroid/net/Network;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 542
    const-string v1, "android.net.extra.CAPTIVE_PORTAL"

    new-instance v2, Landroid/net/CaptivePortal;

    new-instance v3, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    invoke-direct {v2, v3}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 554
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v1

    .line 555
    .local v1, "probeRes":Landroid/net/captiveportal/CaptivePortalProbeResult;
    const-string v2, "android.net.extra.CAPTIVE_PORTAL_URL"

    iget-object v3, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v2, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

    if-eqz v2, :cond_4b

    .line 557
    iget-object v2, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-virtual {v2}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getEncodedSpec()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "encodedSpec":Ljava/lang/String;
    const-string v3, "android.net.extra.CAPTIVE_PORTAL_PROBE_SPEC"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    .end local v2    # "encodedSpec":Ljava/lang/String;
    :cond_4b
    const-string v2, "android.net.extra.CAPTIVE_PORTAL_USER_AGENT"

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 561
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$2700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v3

    .line 560
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const/high16 v2, 0x10400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 564
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 565
    const/4 v2, 0x1

    return v2
.end method
