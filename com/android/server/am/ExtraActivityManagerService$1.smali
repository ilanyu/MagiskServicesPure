.class Lcom/android/server/am/ExtraActivityManagerService$1;
.super Landroid/os/Handler;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ExtraActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 471
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 475
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_16

    .line 477
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;

    .line 478
    .local v0, "cMsg":Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    iget-object v1, v0, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;->message:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 481
    .end local v0    # "cMsg":Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    :goto_16
    return-void
.end method
