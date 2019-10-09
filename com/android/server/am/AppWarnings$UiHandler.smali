.class final Lcom/android/server/am/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UiHandler"
.end annotation


# static fields
.field private static final MSG_HIDE_DIALOGS_FOR_PACKAGE:I = 0x4

.field private static final MSG_HIDE_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x2

.field private static final MSG_SHOW_DEPRECATED_TARGET_SDK_DIALOG:I = 0x5

.field private static final MSG_SHOW_UNSUPPORTED_COMPILE_SDK_DIALOG:I = 0x3

.field private static final MSG_SHOW_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 387
    iput-object p1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    .line 388
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 389
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 393
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    .line 410
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 411
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    # invokes: Lcom/android/server/am/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$400(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V

    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    goto :goto_34

    .line 406
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 407
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    # invokes: Lcom/android/server/am/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$300(Lcom/android/server/am/AppWarnings;Ljava/lang/String;)V

    .line 408
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_34

    .line 402
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 403
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    # invokes: Lcom/android/server/am/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$200(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V

    .line 404
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    goto :goto_34

    .line 399
    :pswitch_24
    iget-object v0, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    # invokes: Lcom/android/server/am/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V
    invoke-static {v0}, Lcom/android/server/am/AppWarnings;->access$100(Lcom/android/server/am/AppWarnings;)V

    .line 400
    goto :goto_34

    .line 395
    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 396
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/AppWarnings$UiHandler;->this$0:Lcom/android/server/am/AppWarnings;

    # invokes: Lcom/android/server/am/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    invoke-static {v1, v0}, Lcom/android/server/am/AppWarnings;->access$000(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V

    .line 397
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    nop

    .line 414
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_24
        :pswitch_1a
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method

.method public hideDialogsForPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 437
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 438
    return-void
.end method

.method public hideUnsupportedDisplaySizeDialog()V
    .registers 2

    .line 422
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->sendEmptyMessage(I)Z

    .line 424
    return-void
.end method

.method public showDeprecatedTargetDialog(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 432
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    .line 433
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method public showUnsupportedCompileSdkDialog(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 427
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    .line 428
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void
.end method

.method public showUnsupportedDisplaySizeDialog(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppWarnings$UiHandler;->removeMessages(I)V

    .line 418
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 419
    return-void
.end method
