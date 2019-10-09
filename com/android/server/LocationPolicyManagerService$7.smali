.class Lcom/android/server/LocationPolicyManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "LocationPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/LocationPolicyManagerService;

    .line 349
    iput-object p1, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LocationPolicyManagerService;->access$000(Lcom/android/server/LocationPolicyManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_50

    .line 354
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    const-class v2, Landroid/os/PowerManager;

    const-string/jumbo v3, "isDeviceIdleMode"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/LocationPolicyManagerService;->access$1400(Lcom/android/server/LocationPolicyManagerService;)Landroid/os/PowerManager;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # setter for: Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z
    invoke-static {v1, v2}, Lcom/android/server/LocationPolicyManagerService;->access$1302(Lcom/android/server/LocationPolicyManagerService;Z)Z

    .line 355
    const-string v1, "LocationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceIdleMode changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # getter for: Lcom/android/server/LocationPolicyManagerService;->mDeviceIdle:Z
    invoke-static {v3}, Lcom/android/server/LocationPolicyManagerService;->access$1300(Lcom/android/server/LocationPolicyManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/android/server/LocationPolicyManagerService$7;->this$0:Lcom/android/server/LocationPolicyManagerService;

    # invokes: Lcom/android/server/LocationPolicyManagerService;->updateRulesForDeviceIdleLocked()V
    invoke-static {v1}, Lcom/android/server/LocationPolicyManagerService;->access$1500(Lcom/android/server/LocationPolicyManagerService;)V

    .line 357
    monitor-exit v0

    .line 360
    goto :goto_54

    .line 357
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v1
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_50} :catch_50

    .line 358
    :catch_50
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_54
    return-void
.end method
