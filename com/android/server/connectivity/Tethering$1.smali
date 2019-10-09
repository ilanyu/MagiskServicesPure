.class Lcom/android/server/connectivity/Tethering$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$enable:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .line 500
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-boolean p2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 7
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 506
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 509
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    const/4 v2, 0x5

    if-ne v0, v1, :cond_16

    .line 510
    const/4 v0, 0x0

    goto :goto_17

    .line 511
    :cond_16
    move v0, v2

    .line 512
    .local v0, "result":I
    :goto_17
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    # invokes: Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V
    invoke-static {v1, v3, v0}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    .line 513
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 514
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V
    invoke-static {v1, v3}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;I)V

    .line 516
    :cond_30
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 517
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2
    .param p1, "profile"    # I

    .line 502
    return-void
.end method
