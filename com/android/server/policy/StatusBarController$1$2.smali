.class Lcom/android/server/policy/StatusBarController$1$2;
.super Ljava/lang/Object;
.source "StatusBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/StatusBarController$1;->onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/StatusBarController$1;

.field final synthetic val$statusBarAnimationDuration:J

.field final synthetic val$statusBarAnimationStartTime:J


# direct methods
.method constructor <init>(Lcom/android/server/policy/StatusBarController$1;JJ)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/server/policy/StatusBarController$1;

    .line 60
    iput-object p1, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iput-wide p2, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$statusBarAnimationStartTime:J

    iput-wide p4, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$statusBarAnimationDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/android/server/policy/StatusBarController$1$2;->this$1:Lcom/android/server/policy/StatusBarController$1;

    iget-object v0, v0, Lcom/android/server/policy/StatusBarController$1;->this$0:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/policy/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 64
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_11

    .line 65
    iget-wide v1, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$statusBarAnimationStartTime:J

    iget-wide v3, p0, Lcom/android/server/policy/StatusBarController$1$2;->val$statusBarAnimationDuration:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->appTransitionStarting(JJ)V

    .line 68
    :cond_11
    return-void
.end method
