.class Lcom/android/server/fingerprint/FingerprintService$5$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$5;->onTaskStackChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$5;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$5;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$5;

    .line 230
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$5$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-nez v0, :cond_d

    .line 235
    return-void

    .line 237
    :cond_d
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$5$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "currentClient":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$5$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$300(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 239
    return-void

    .line 241
    :cond_24
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$5$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$400(Lcom/android/server/fingerprint/FingerprintService;)Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7b

    .line 243
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "topPackage":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 245
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping background authentication, top: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " currentClient: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v5, 0x6

    invoke-virtual {v4, v5, v2}, Lcom/android/server/fingerprint/FingerprintService;->fodCallBack(II)I

    .line 249
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$5$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$5;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$5;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7b} :catch_7c

    .line 254
    .end local v0    # "currentClient":Ljava/lang/String;
    .end local v1    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackage":Ljava/lang/String;
    :cond_7b
    goto :goto_84

    .line 252
    :catch_7c
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Unable to get running tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_84
    return-void
.end method
