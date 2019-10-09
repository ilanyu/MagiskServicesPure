.class Lcom/android/server/policy/StatusBarController$1$1;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionPendingLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/policy/StatusBarController$1;

    .line 45
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1$1;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v0, v0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 49
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_d

    .line 50
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionPending()V

    .line 52
    :cond_d
    return-void
.end method
