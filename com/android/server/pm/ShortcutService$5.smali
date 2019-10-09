.class Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .line 2875
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2878
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2879
    .local v0, "userId":I
    if-ne v0, v1, :cond_21

    .line 2880
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    return-void

    .line 2884
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2888
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 2890
    .local v2, "token":J
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->access$200(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_f7
    .catchall {:try_start_2b .. :try_end_32} :catchall_f5

    .line 2891
    :try_start_32
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v5

    if-nez v5, :cond_41

    .line 2896
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_f2

    .line 2943
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2896
    return-void

    .line 2901
    :cond_41
    :try_start_41
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 2902
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 2903
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_f2

    .line 2904
    :try_start_4b
    const-string v4, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_f7
    .catchall {:try_start_4b .. :try_end_51} :catchall_f5

    if-eqz v4, :cond_59

    .line 2943
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2906
    return-void

    .line 2909
    :cond_59
    :try_start_59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 2910
    .local v4, "intentUri":Landroid/net/Uri;
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_65

    .line 2911
    :cond_64
    const/4 v5, 0x0

    .line 2912
    .local v5, "packageName":Ljava/lang/String;
    :goto_65
    if-nez v5, :cond_83

    .line 2913
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent broadcast does not contain package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_7d} :catch_f7
    .catchall {:try_start_59 .. :try_end_7d} :catchall_f5

    .line 2943
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2914
    return-void

    .line 2917
    :cond_83
    :try_start_83
    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2919
    .local v6, "replacing":Z
    const/4 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0xa480416

    if-eq v9, v10, :cond_c1

    const v10, 0xff13fb5

    if-eq v9, v10, :cond_b7

    const v10, 0x1f50b9c2

    if-eq v9, v10, :cond_ad

    const v10, 0x5c1076e2

    if-eq v9, v10, :cond_a4

    goto :goto_cb

    :cond_a4
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cb

    goto :goto_cc

    :cond_ad
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    const/4 v7, 0x1

    goto :goto_cc

    :cond_b7
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    const/4 v7, 0x3

    goto :goto_cc

    :cond_c1
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    const/4 v7, 0x2

    goto :goto_cc

    :cond_cb
    :goto_cb
    move v7, v8

    :goto_cc
    packed-switch v7, :pswitch_data_10c

    .end local v4    # "intentUri":Landroid/net/Uri;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "replacing":Z
    goto :goto_ff

    .line 2937
    .restart local v4    # "intentUri":Landroid/net/Uri;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "replacing":Z
    :pswitch_d0
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V
    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1200(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .end local v4    # "intentUri":Landroid/net/Uri;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "replacing":Z
    goto :goto_ff

    .line 2933
    .restart local v4    # "intentUri":Landroid/net/Uri;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "replacing":Z
    :pswitch_d6
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V
    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1100(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 2935
    goto :goto_ff

    .line 2928
    :pswitch_dc
    if-nez v6, :cond_ff

    .line 2929
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V
    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1000(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_ff

    .line 2921
    :pswitch_e4
    if-eqz v6, :cond_ec

    .line 2922
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V
    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_ff

    .line 2924
    :cond_ec
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V
    invoke-static {v7, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$900(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_f1} :catch_f7
    .catchall {:try_start_83 .. :try_end_f1} :catchall_f5

    .line 2926
    goto :goto_ff

    .line 2903
    .end local v4    # "intentUri":Landroid/net/Uri;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "replacing":Z
    :catchall_f2
    move-exception v5

    :try_start_f3
    monitor-exit v4
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    :try_start_f4
    throw v5
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f5} :catch_f7
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f5

    .line 2943
    :catchall_f5
    move-exception v4

    goto :goto_106

    .line 2940
    :catch_f7
    move-exception v4

    .line 2941
    .local v4, "e":Ljava/lang/Exception;
    :try_start_f8
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v6, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_f5

    .line 2943
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_ff
    :goto_ff
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 2944
    nop

    .line 2945
    return-void

    .line 2943
    :goto_106
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    throw v4

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_dc
        :pswitch_d6
        :pswitch_d0
    .end packed-switch
.end method
