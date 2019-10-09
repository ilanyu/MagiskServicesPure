.class Lcom/android/server/UiModeManagerService$8;
.super Landroid/app/IMiuiActivityObserver$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 921
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IMiuiActivityObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 953
    return-void
.end method

.method public activityIdle(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 925
    return-void
.end method

.method public activityPaused(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 938
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 939
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mLastResumedActivity:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 940
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mDelayedNightMode:I
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/UiModeManagerService;->setNightModeLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;I)V

    .line 941
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch night mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_3c
    return-void
.end method

.method public activityResumed(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 930
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mLastResumedActivity:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 931
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mDelayedNightMode:I
    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    # invokes: Lcom/android/server/UiModeManagerService;->setNightModeLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;I)V

    .line 932
    # getter for: Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch night mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    # getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_3c
    return-void
.end method

.method public activityStopped(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 948
    return-void
.end method
