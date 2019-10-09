.class Lcom/android/server/StorageManagerService$10;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->runDefrag(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 1976
    iput-object p1, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 1983
    const-string v0, "StorageManagerService"

    const-string v1, "Backgroud storage defrag has finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    iget-object v0, p0, Lcom/android/server/StorageManagerService$10;->this$0:Lcom/android/server/StorageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/StorageManagerService;->isBackgroundDefragRunning:Z
    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->access$1902(Lcom/android/server/StorageManagerService;Z)Z

    .line 1985
    iget-object v0, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    .line 1986
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/StorageManagerService$10;->val$callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1988
    :cond_1a
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 1980
    return-void
.end method
