.class Lcom/android/server/policy/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BarController;->updateStateLw(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BarController;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BarController;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/BarController;

    .line 225
    iput-object p1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    iput p2, p0, Lcom/android/server/policy/BarController$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    invoke-virtual {v0}, Lcom/android/server/policy/BarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 229
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_13

    .line 230
    iget-object v1, p0, Lcom/android/server/policy/BarController$1;->this$0:Lcom/android/server/policy/BarController;

    # getter for: Lcom/android/server/policy/BarController;->mStatusBarManagerId:I
    invoke-static {v1}, Lcom/android/server/policy/BarController;->access$100(Lcom/android/server/policy/BarController;)I

    move-result v1

    iget v2, p0, Lcom/android/server/policy/BarController$1;->val$state:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setWindowState(II)V

    .line 232
    :cond_13
    return-void
.end method
