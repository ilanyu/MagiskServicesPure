.class Lcom/android/server/am/ActivityManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 8415
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 8418
    const-string v0, "android.intent.extra.PACKAGES"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8419
    .local v3, "pkgs":[Ljava/lang/String;
    if-eqz v3, :cond_49

    .line 8420
    array-length v0, v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v0, :cond_49

    aget-object v15, v3, v4

    .line 8421
    .local v15, "pkg":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 8422
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string/jumbo v16, "query restart"
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_3f

    move-object v6, v15

    move-object/from16 v17, v14

    move-object/from16 v14, v16

    :try_start_29
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 8424
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$9;->setResultCode(I)V

    .line 8425
    monitor-exit v17
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8427
    :cond_38
    :try_start_38
    monitor-exit v17
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 8420
    .end local v15    # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 8427
    .restart local v15    # "pkg":Ljava/lang/String;
    :catchall_3f
    move-exception v0

    move-object/from16 v17, v14

    :goto_42
    :try_start_42
    monitor-exit v17
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_47
    move-exception v0

    goto :goto_42

    .line 8430
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_49
    return-void
.end method
