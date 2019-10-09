.class Lcom/android/server/am/MiuiWarningDialog$1;
.super Landroid/os/Handler;
.source "MiuiWarningDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MiuiWarningDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/MiuiWarningDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/MiuiWarningDialog;

    .line 54
    iput-object p1, p0, Lcom/android/server/am/MiuiWarningDialog$1;->this$0:Lcom/android/server/am/MiuiWarningDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1f

    .line 63
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/MiuiWarningDialog$1;->this$0:Lcom/android/server/am/MiuiWarningDialog;

    # getter for: Lcom/android/server/am/MiuiWarningDialog;->mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;
    invoke-static {v0}, Lcom/android/server/am/MiuiWarningDialog;->access$000(Lcom/android/server/am/MiuiWarningDialog;)Lcom/android/server/am/MiuiWarnings$WarningCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/am/MiuiWarnings$WarningCallback;->onCallback(Z)V

    goto :goto_1f

    .line 60
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/am/MiuiWarningDialog$1;->this$0:Lcom/android/server/am/MiuiWarningDialog;

    # getter for: Lcom/android/server/am/MiuiWarningDialog;->mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;
    invoke-static {v0}, Lcom/android/server/am/MiuiWarningDialog;->access$000(Lcom/android/server/am/MiuiWarningDialog;)Lcom/android/server/am/MiuiWarnings$WarningCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/am/MiuiWarnings$WarningCallback;->onCallback(Z)V

    .line 61
    nop

    .line 66
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method
