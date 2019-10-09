.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 188
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 193
    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_29

    .line 194
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->check()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 195
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mLevel:I
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_36

    .line 196
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->doMemLowAction()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    goto :goto_36

    .line 198
    :cond_29
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 199
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # invokes: Lcom/android/server/storage/DeviceStorageMonitorService;->check()V
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 201
    :cond_36
    :goto_36
    return-void
.end method
