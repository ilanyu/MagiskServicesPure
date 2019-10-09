.class public Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;
.super Ljava/lang/Object;
.source "RestrictionManagerServiceProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setScreenCaptureDisabled(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;IZ)V
    .registers 4
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "enabled"    # Z

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowManagerService;->refreshScreenCaptureDisabled(I)V

    .line 11
    return-void
.end method

.method static setWifiApEnabled(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 14
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 15
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 17
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 18
    return-void
.end method
