.class Lcom/android/server/am/AppErrorDialog$2;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppErrorDialog;

    .line 205
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 207
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/am/AppErrorDialog;->setResult(I)V
    invoke-static {v0, v1}, Lcom/android/server/am/AppErrorDialog;->access$300(Lcom/android/server/am/AppErrorDialog;I)V

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 211
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/MiuiErrorReport;->startKloReportService(Landroid/content/Context;)V

    .line 214
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$2;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    .line 215
    return-void
.end method
