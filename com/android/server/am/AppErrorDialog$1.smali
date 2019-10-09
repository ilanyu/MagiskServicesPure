.class Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;

.field final synthetic val$contextInner:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/AppErrorDialog;

    .line 129
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog$1;->val$contextInner:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "widget"    # Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->val$contextInner:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    iget-object v2, v2, Lcom/android/server/am/AppErrorDialog;->mCrashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/MiuiErrorReport;->startFcPreviewActivity(Landroid/content/Context;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 133
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$100(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 134
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    if-ne v1, v2, :cond_3a

    .line 135
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 137
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_4e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 138
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v0}, Lcom/android/server/am/AppErrorDialog;->access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 139
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    .line 140
    return-void

    .line 137
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
