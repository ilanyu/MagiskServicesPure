.class Lcom/android/server/StorageManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 728
    iput-object p1, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 731
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "action":Ljava/lang/String;
    :try_start_4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 734
    const-string v1, "StorageManagerService"

    const-string v2, "Get the action of screen on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v1, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->isBackgroundDefragRunning:Z
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1900(Lcom/android/server/StorageManagerService;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 736
    const-string v1, "StorageManagerService"

    const-string/jumbo v3, "stop background storage defrag operation"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    move-object v3, v2

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/server/StorageManagerService;->stopDefrag(Ljava/lang/Runnable;)V

    .line 739
    :cond_2c
    iget-object v1, p0, Lcom/android/server/StorageManagerService$2;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService;->stopTrim(Ljava/lang/Runnable;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_31} :catch_32

    .line 743
    :cond_31
    goto :goto_3a

    .line 741
    :catch_32
    move-exception v1

    .line 742
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StorageManagerService"

    const-string v3, "Failed to send stop defrag or trim command to vold"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method
