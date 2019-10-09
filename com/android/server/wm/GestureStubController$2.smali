.class Lcom/android/server/wm/GestureStubController$2;
.super Landroid/view/IGestureStubListener$Stub;
.source "GestureStubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/GestureStubController;->getGestureStubListener()Landroid/view/IGestureStubListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/GestureStubController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/GestureStubController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/GestureStubController;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    invoke-direct {p0}, Landroid/view/IGestureStubListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureFinish(Z)V
    .registers 3
    .param p1, "immediate"    # Z

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    # invokes: Lcom/android/server/wm/GestureStubController;->notifyGestureFinish(Z)V
    invoke-static {v0, p1}, Lcom/android/server/wm/GestureStubController;->access$300(Lcom/android/server/wm/GestureStubController;Z)V

    .line 79
    return-void
.end method

.method public onGestureReady()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    # invokes: Lcom/android/server/wm/GestureStubController;->notifyGestureReady()V
    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->access$100(Lcom/android/server/wm/GestureStubController;)V

    .line 69
    return-void
.end method

.method public onGestureStart()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    # invokes: Lcom/android/server/wm/GestureStubController;->notifyGestureStart()V
    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->access$200(Lcom/android/server/wm/GestureStubController;)V

    .line 74
    return-void
.end method

.method public skipAppTransition()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController$2;->this$0:Lcom/android/server/wm/GestureStubController;

    # invokes: Lcom/android/server/wm/GestureStubController;->notifySkipAppTransition()V
    invoke-static {v0}, Lcom/android/server/wm/GestureStubController;->access$400(Lcom/android/server/wm/GestureStubController;)V

    .line 84
    return-void
.end method
