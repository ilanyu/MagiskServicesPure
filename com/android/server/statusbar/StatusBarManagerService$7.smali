.class Lcom/android/server/statusbar/StatusBarManagerService$7;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 869
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->access$102(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/IStatusBar;

    .line 873
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # invokes: Lcom/android/server/statusbar/StatusBarManagerService;->notifyBarAttachChanged()V
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$900(Lcom/android/server/statusbar/StatusBarManagerService;)V

    .line 874
    return-void
.end method
