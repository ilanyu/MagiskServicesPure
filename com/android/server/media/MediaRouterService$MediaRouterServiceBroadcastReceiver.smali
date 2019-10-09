.class final Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaRouterServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaRouterService;

    .line 653
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 656
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 657
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 658
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    # getter for: Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 659
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-object v0, v2, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 660
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    if-eqz v0, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    iput-boolean v3, v2, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 661
    monitor-exit v1

    goto :goto_2d

    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw v2

    .line 663
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2d
    :goto_2d
    return-void
.end method
