.class Lcom/android/server/am/ActivityManagerService$7;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$isInstantApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$resolvedUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZLandroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 6901
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$7;->val$isInstantApp:Z

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$7;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 6905
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_22

    .line 6906
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6907
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    # invokes: Lcom/android/server/am/ActivityManagerService;->finishForceStopPackageLocked(Ljava/lang/String;I)V
    invoke-static {v0, v2, v4}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    .line 6908
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_22

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 6910
    :cond_22
    :goto_22
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string/jumbo v4, "package"

    const/4 v5, 0x0

    .line 6911
    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6912
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x1000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6913
    const-string v3, "android.intent.extra.UID"

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_41

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$7;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_42

    :cond_41
    const/4 v4, -0x1

    :goto_42
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6914
    const-string v3, "android.intent.extra.user_handle"

    iget v4, v1, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6915
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerService$7;->val$isInstantApp:Z

    if-eqz v3, :cond_70

    .line 6916
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6917
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android"

    const/16 v7, 0x3e8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "android.permission.ACCESS_INSTANT_APPS"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v3, v1, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    move-object v8, v0

    move/from16 v18, v3

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    goto :goto_89

    .line 6921
    :cond_70
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android"

    const/16 v7, 0x3e8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v3, v1, Lcom/android/server/am/ActivityManagerService$7;->val$resolvedUserId:I

    move-object v8, v0

    move/from16 v18, v3

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    .line 6925
    :goto_89
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$7;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_95

    .line 6926
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$7;->val$observer:Landroid/content/pm/IPackageDataObserver;

    move/from16 v4, p2

    invoke-interface {v3, v2, v4}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_97

    .line 6928
    :cond_95
    move/from16 v4, p2

    :goto_97
    return-void
.end method
