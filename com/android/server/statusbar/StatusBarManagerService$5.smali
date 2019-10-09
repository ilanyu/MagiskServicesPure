.class Lcom/android/server/statusbar/StatusBarManagerService$5;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$backDisposition:I

.field final synthetic val$showImeSwitcher:Z

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 772
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$backDisposition:I

    iput-boolean p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$showImeSwitcher:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 774
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 776
    :try_start_8
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$vis:I

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$backDisposition:I

    iget-boolean v4, p0, Lcom/android/server/statusbar/StatusBarManagerService$5;->val$showImeSwitcher:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 778
    goto :goto_1b

    .line 777
    :catch_1a
    move-exception v0

    .line 780
    :cond_1b
    :goto_1b
    return-void
.end method
