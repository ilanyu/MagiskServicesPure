.class Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .line 154
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, "appErrorIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x13d

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 161
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_8a

    goto :goto_70

    .line 169
    :pswitch_14
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    # getter for: Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 170
    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    # getter for: Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 172
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3b

    .line 173
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    # getter for: Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 173
    invoke-virtual {v3, v2, v6, v7, v5}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    .line 177
    :cond_3b
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 178
    iput-object v5, v2, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 179
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    if-ne v3, v4, :cond_48

    .line 180
    iput-object v5, v2, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 182
    :cond_48
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    # getter for: Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 183
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_70

    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 164
    :pswitch_5e
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    # getter for: Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    # getter for: Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .line 165
    nop

    .line 187
    :goto_70
    if-eqz v0, :cond_84

    .line 189
    :try_start_72
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_72 .. :try_end_7b} :catch_7c

    .line 192
    goto :goto_84

    .line 190
    :catch_7c
    move-exception v1

    .line 191
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AppNotRespondingDialog"

    const-string v3, "bug report receiver dissappeared"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_84
    :goto_84
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->dismiss()V

    .line 196
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method
