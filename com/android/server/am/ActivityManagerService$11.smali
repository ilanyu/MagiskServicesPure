.class Lcom/android/server/am/ActivityManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 8450
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 8453
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_24

    .line 8454
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 8455
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8456
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    goto :goto_1d

    :cond_1c
    const/4 v3, -0x1

    :goto_1d
    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mActiveNetType:I

    .line 8457
    monitor-exit v1

    goto :goto_24

    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_21

    throw v2

    .line 8459
    .end local v0    # "netInfo":Landroid/net/NetworkInfo;
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 8460
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_51

    .line 8461
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 8462
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_51

    .line 8463
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    .line 8464
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 8465
    .local v2, "powerManager":Landroid/os/PowerManager;
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 8466
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->networkOptsCheck(ILjava/lang/String;)V

    .line 8469
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_51
    return-void
.end method
