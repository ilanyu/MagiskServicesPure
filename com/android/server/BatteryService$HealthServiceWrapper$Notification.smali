.class Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Notification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper;)V
    .registers 2

    .line 1519
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService$HealthServiceWrapper;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 1519
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "instanceName"    # Ljava/lang/String;
    .param p3, "preexisting"    # Z

    .line 1523
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1524
    :cond_9
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mInstanceName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$2700(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 1528
    :cond_16
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    # getter for: Lcom/android/server/BatteryService$HealthServiceWrapper;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$3100(Lcom/android/server/BatteryService$HealthServiceWrapper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1546
    return-void
.end method
