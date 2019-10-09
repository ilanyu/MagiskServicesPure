.class Lcom/android/server/am/LockTaskController$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LockTaskController;


# direct methods
.method constructor <init>(Lcom/android/server/am/LockTaskController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/LockTaskController;

    .line 748
    iput-object p1, p0, Lcom/android/server/am/LockTaskController$1;->this$0:Lcom/android/server/am/LockTaskController;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDismissSucceeded$0(Lcom/android/server/am/LockTaskController$1;)V
    .registers 4

    .line 757
    iget-object v0, p0, Lcom/android/server/am/LockTaskController$1;->this$0:Lcom/android/server/am/LockTaskController;

    iget-object v0, v0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController$1;->this$0:Lcom/android/server/am/LockTaskController;

    # getter for: Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/am/LockTaskController;->access$100(Lcom/android/server/am/LockTaskController;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setKeyguardState: dismiss cancelled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method public onDismissError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setKeyguardState: failed to dismiss keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method

.method public onDismissSucceeded()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/android/server/am/LockTaskController$1;->this$0:Lcom/android/server/am/LockTaskController;

    # getter for: Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/LockTaskController;->access$000(Lcom/android/server/am/LockTaskController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$LockTaskController$1$kkBevvrWTeS1ZnzjKqWe3h2dPhk;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$LockTaskController$1$kkBevvrWTeS1ZnzjKqWe3h2dPhk;-><init>(Lcom/android/server/am/LockTaskController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method
