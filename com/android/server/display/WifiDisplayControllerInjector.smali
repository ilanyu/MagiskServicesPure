.class Lcom/android/server/display/WifiDisplayControllerInjector;
.super Ljava/lang/Object;
.source "WifiDisplayControllerInjector.java"


# static fields
.field private static mReceiver:Lcom/android/server/display/DisplayProjectionReceiver;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerProjectionReceiver(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "controller"    # Lcom/android/server/display/WifiDisplayController;

    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "miui.action.START_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    const-string/jumbo v1, "miui.action.STOP_PROJECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    new-instance v1, Lcom/android/server/display/DisplayProjectionReceiver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayProjectionReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController;)V

    sput-object v1, Lcom/android/server/display/WifiDisplayControllerInjector;->mReceiver:Lcom/android/server/display/DisplayProjectionReceiver;

    .line 18
    sget-object v1, Lcom/android/server/display/WifiDisplayControllerInjector;->mReceiver:Lcom/android/server/display/DisplayProjectionReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    return-void
.end method
