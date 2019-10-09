.class Lcom/android/server/DeviceIdleController$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 397
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 402
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1e

    .line 403
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    .line 404
    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 403
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2d

    .line 406
    :cond_1e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    .line 407
    # getter for: Lcom/android/server/DeviceIdleController;->mConstants:Lcom/android/server/DeviceIdleController$Constants;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 406
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 409
    :goto_2d
    return-void
.end method
