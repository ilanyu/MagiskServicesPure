.class Lcom/android/server/am/BaseUserSwitchingDialog$1;
.super Landroid/os/Handler;
.source "BaseUserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseUserSwitchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BaseUserSwitchingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseUserSwitchingDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/BaseUserSwitchingDialog;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/BaseUserSwitchingDialog$1;->this$0:Lcom/android/server/am/BaseUserSwitchingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    .line 70
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/BaseUserSwitchingDialog$1;->this$0:Lcom/android/server/am/BaseUserSwitchingDialog;

    invoke-virtual {v0}, Lcom/android/server/am/BaseUserSwitchingDialog;->startUser()V

    .line 71
    nop

    .line 74
    :goto_c
    return-void
.end method
