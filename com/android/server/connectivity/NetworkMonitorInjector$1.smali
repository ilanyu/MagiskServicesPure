.class Lcom/android/server/connectivity/NetworkMonitorInjector$1;
.super Landroid/net/IMiuiCaptivePortal$Stub;
.source "NetworkMonitorInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitorInjector;->getCaptivePortalPendingIntent(Landroid/content/Context;Landroid/app/PendingIntent;Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkAgentInfo;I)Landroid/app/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finishedMessageCode:I

.field final synthetic val$nm:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitorInjector$1;->val$nm:Lcom/android/server/connectivity/NetworkMonitor;

    iput p2, p0, Lcom/android/server/connectivity/NetworkMonitorInjector$1;->val$finishedMessageCode:I

    invoke-direct {p0}, Landroid/net/IMiuiCaptivePortal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .registers 4
    .param p1, "response"    # I

    .line 51
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitorInjector$1;->val$nm:Lcom/android/server/connectivity/NetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitorInjector$1;->val$finishedMessageCode:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(II)V

    .line 52
    return-void
.end method
