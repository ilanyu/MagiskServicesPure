.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 3911
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3912
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3913
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3914
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3915
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3916
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3917
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3919
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3920
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3921
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3922
    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3923
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3924
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3928
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3929
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3930
    :try_start_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 3931
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3932
    .local v4, "pkgList":[Ljava/lang/String;
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_38

    .line 3933
    const-string v5, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 3934
    array-length v5, v4

    :goto_22
    if-ge v6, v5, :cond_36

    aget-object v7, v4, v6

    .line 3935
    .local v7, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 3936
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 3937
    monitor-exit v2

    return-void

    .line 3934
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 3940
    :cond_36
    monitor-exit v2

    return-void

    .line 3941
    :cond_38
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_4a

    .line 3942
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_cb

    .line 3943
    :cond_4a
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 3944
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3945
    .local v1, "userHandle":I
    if-ltz v1, :cond_8e

    .line 3946
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    .line 3947
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v7

    .local v5, "i":I
    :goto_6a
    if-ltz v5, :cond_8e

    .line 3948
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    .line 3949
    # getter for: Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 3950
    .local v8, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v1, :cond_8b

    .line 3951
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3947
    .end local v8    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8b
    add-int/lit8 v5, v5, -0x1

    goto :goto_6a

    .line 3955
    .end local v1    # "userHandle":I
    .end local v5    # "i":I
    :cond_8e
    goto :goto_cb

    :cond_8f
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 3956
    if-ltz v0, :cond_cb

    .line 3957
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 3958
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_cb

    .line 3961
    :cond_a8
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string v1, "android.intent.extra.REPLACING"

    .line 3962
    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 3964
    monitor-exit v2

    return-void

    .line 3966
    :cond_ba
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3967
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_cb

    .line 3968
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 3969
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_cb

    .line 3970
    new-array v8, v7, [Ljava/lang/String;

    aput-object v5, v8, v6

    move-object v4, v8

    .line 3976
    .end local v1    # "data":Landroid/net/Uri;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_cb
    :goto_cb
    invoke-static {v4}, Lcom/android/server/AlarmManagerServiceInjector;->filterPersistPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3978
    .end local v4    # "pkgList":[Ljava/lang/String;
    .local v1, "pkgList":[Ljava/lang/String;
    if-eqz v1, :cond_158

    array-length v4, v1

    if-lez v4, :cond_158

    .line 3979
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .local v4, "i":I
    :goto_df
    if-ltz v4, :cond_111

    .line 3980
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 3981
    .local v5, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10e

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 3982
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v8, v9, :cond_10e

    .line 3983
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveredForPackage:Landroid/util/ArrayMap;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 3979
    .end local v5    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_10e
    add-int/lit8 v4, v4, -0x1

    goto :goto_df

    .line 3986
    .end local v4    # "i":I
    :cond_111
    array-length v4, v1

    :goto_112
    if-ge v6, v4, :cond_158

    aget-object v5, v1, v6

    .line 3987
    .local v5, "pkg":Ljava/lang/String;
    if-ltz v0, :cond_11e

    .line 3989
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8, v0}, Lcom/android/server/AlarmManagerService;->removeLocked(I)V

    goto :goto_123

    .line 3992
    :cond_11e
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 3994
    :goto_123
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3995
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_133
    if-ltz v8, :cond_155

    .line 3996
    iget-object v9, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    .line 3997
    .local v9, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_152

    .line 3998
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_152

    .line 3999
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3995
    .end local v9    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_152
    add-int/lit8 v8, v8, -0x1

    goto :goto_133

    .line 3986
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_155
    add-int/lit8 v6, v6, 0x1

    goto :goto_112

    .line 4005
    .end local v1    # "pkgList":[Ljava/lang/String;
    .end local v3    # "action":Ljava/lang/String;
    :cond_158
    monitor-exit v2

    .line 4006
    return-void

    .line 4005
    :catchall_15a
    move-exception v1

    monitor-exit v2
    :try_end_15c
    .catchall {:try_start_c .. :try_end_15c} :catchall_15a

    throw v1
.end method
