.class final Lcom/android/server/InputMethodManagerService$LocalServiceImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 4571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4572
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 4573
    return-void
.end method


# virtual methods
.method public hideCurrentInputMethod()V
    .registers 3

    .line 4591
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4592
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4593
    return-void
.end method

.method public setInteractive(Z)V
    .registers 6
    .param p1, "interactive"    # Z

    .line 4578
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 4579
    const/4 v2, 0x0

    .line 4578
    const/16 v3, 0xbd6

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4580
    return-void
.end method

.method public startVrInputMethodNoCheck(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 4597
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7da

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4598
    return-void
.end method

.method public switchInputMethod(Z)V
    .registers 6
    .param p1, "forwardDirection"    # Z

    .line 4585
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService$LocalServiceImpl;->mHandler:Landroid/os/Handler;

    .line 4586
    const/4 v2, 0x0

    .line 4585
    const/16 v3, 0xbea

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4587
    return-void
.end method
