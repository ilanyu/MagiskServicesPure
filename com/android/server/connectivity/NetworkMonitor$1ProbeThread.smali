.class final Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final mIsHttps:Z

.field private volatile mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpUrl:Ljava/net/URL;

.field final synthetic val$httpsUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$proxy:Landroid/net/ProxyInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "isHttps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1182
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1180
    sget-object p3, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1183
    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    .line 1184
    return-void
.end method


# virtual methods
.method public result()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 2

    .line 1187
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .registers 5

    .line 1192
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_12

    .line 1193
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpsUrl:Ljava/net/URL;

    const/4 v3, 0x2

    .line 1194
    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$3400(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_1f

    .line 1196
    :cond_12
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$httpUrl:Ljava/net/URL;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$3400(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1198
    :goto_1f
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mIsHttps:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1200
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    .line 1201
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_37

    .line 1205
    :cond_49
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1206
    return-void
.end method
