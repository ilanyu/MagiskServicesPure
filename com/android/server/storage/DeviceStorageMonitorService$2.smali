.class Lcom/android/server/storage/DeviceStorageMonitorService$2;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 353
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 361
    return-void

    .line 358
    :cond_6
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->check()V
    invoke-static {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 359
    return-void
.end method
