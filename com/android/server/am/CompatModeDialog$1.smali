.class Lcom/android/server/am/CompatModeDialog$1;
.super Ljava/lang/Object;
.source "CompatModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CompatModeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CompatModeDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/CompatModeDialog;

    .line 52
    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 55
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 56
    iget-object v1, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v1, v1, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v2, v2, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    .line 59
    :cond_20
    const/4 v3, 0x0

    .line 56
    :goto_21
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 60
    iget-object v1, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v1}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    .line 61
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    return-void

    .line 61
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method