.class public Lcom/android/server/connectivity/TetheringInjector$DisableTetheringActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetheringInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/TetheringInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisableTetheringActionReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 99
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 100
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 101
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    .line 104
    :cond_14
    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 105
    # getter for: Lcom/android/server/connectivity/TetheringInjector;->sBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {}, Lcom/android/server/connectivity/TetheringInjector;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 108
    :cond_3c
    const-string v1, "connectivity"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 110
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_49

    .line 111
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 113
    :cond_49
    return-void
.end method
