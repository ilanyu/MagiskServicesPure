.class Lcom/android/server/net/NetworkStatsServiceInjector$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsServiceInjector;->registerReceiver(Landroid/content/Context;Landroid/os/Looper;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 37
    if-nez p2, :cond_3

    .line 38
    return-void

    .line 41
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 43
    const/4 v1, 0x1

    .local v1, "screenOn":Z
    goto :goto_12

    .line 45
    .end local v1    # "screenOn":Z
    :cond_11
    const/4 v1, 0x0

    .line 47
    .restart local v1    # "screenOn":Z
    :goto_12
    # getter for: Lcom/android/server/net/NetworkStatsServiceInjector;->mScreenState:Z
    invoke-static {}, Lcom/android/server/net/NetworkStatsServiceInjector;->access$000()Z

    move-result v2

    if-eq v2, v1, :cond_1e

    .line 48
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsServiceInjector;->updateForScreenChanged(Z)V

    .line 49
    # setter for: Lcom/android/server/net/NetworkStatsServiceInjector;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/net/NetworkStatsServiceInjector;->access$002(Z)Z

    .line 51
    :cond_1e
    return-void
.end method
