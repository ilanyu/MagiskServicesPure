.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 683
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendDeviceOwnerUserCommand(Ljava/lang/String;I)V
    .registers 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 789
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 790
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 791
    .local v1, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_28

    .line 792
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v8, v2

    .line 793
    .local v8, "extras":Landroid/os/Bundle;
    const-string v2, "android.intent.extra.USER"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 794
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Z)Z

    .line 797
    .end local v1    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_28
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 686
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    .line 688
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->getSendingUserId()I

    move-result v2

    .line 687
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 695
    .local v1, "userHandle":I
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 696
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v1, v2, :cond_3a

    .line 697
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 698
    :try_start_28
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isNetworkLoggingEnabledInternalLocked()Z
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 699
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNetworkLoggingActiveInternal(Z)V
    invoke-static {v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 701
    :cond_35
    monitor-exit v2

    goto :goto_3a

    :catchall_37
    move-exception v3

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_37

    throw v3

    .line 703
    :cond_3a
    :goto_3a
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 704
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v1, v2, :cond_8b

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 705
    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 706
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 707
    .local v2, "filterConsent":Landroid/content/IntentFilter;
    const-string v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 710
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "DevicePolicyManager"

    const v6, 0x28700e57

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    .line 712
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/RemoteBugreportUtils;->buildNotification(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 710
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 716
    .end local v2    # "filterConsent":Landroid/content/IntentFilter;
    :cond_8b
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    const-string v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    .line 717
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 722
    :cond_9b
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 730
    :cond_a7
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 731
    const-string v2, "android.app.action.USER_ADDED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 732
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 735
    :try_start_bb
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybePauseDeviceWideLoggingLocked()V
    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 736
    monitor-exit v2

    goto/16 :goto_1d2

    :catchall_c3
    move-exception v3

    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_c3

    throw v3

    .line 737
    :cond_c6
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 738
    const-string v2, "android.app.action.USER_REMOVED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 739
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 741
    :try_start_da
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z
    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v3

    .line 742
    .local v3, "isRemovedUserAffiliated":Z
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 743
    if-nez v3, :cond_f1

    .line 746
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->discardDeviceWideLogsLocked()V
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 748
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybeResumeDeviceWideLoggingLocked()V
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 750
    .end local v3    # "isRemovedUserAffiliated":Z
    :cond_f1
    monitor-exit v2

    goto/16 :goto_1d2

    :catchall_f4
    move-exception v3

    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_da .. :try_end_f6} :catchall_f4

    throw v3

    .line 751
    :cond_f7
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_123

    .line 752
    const-string v2, "android.app.action.USER_STARTED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 753
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 754
    :try_start_10c
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybeSendAdminEnabledBroadcastLocked(I)V
    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 756
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 757
    monitor-exit v2
    :try_end_119
    .catchall {:try_start_10c .. :try_end_119} :catchall_120

    .line 758
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V
    invoke-static {v2, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_1d2

    .line 757
    :catchall_120
    move-exception v3

    :try_start_121
    monitor-exit v2
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v3

    .line 759
    :cond_123
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 760
    const-string v2, "android.app.action.USER_STOPPED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    goto/16 :goto_1d2

    .line 761
    :cond_132
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 762
    const-string v2, "android.app.action.USER_SWITCHED"

    invoke-direct {p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    goto/16 :goto_1d2

    .line 763
    :cond_141
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 764
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 765
    :try_start_150
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybeSendAdminEnabledBroadcastLocked(I)V
    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 766
    monitor-exit v2

    goto/16 :goto_1d2

    :catchall_158
    move-exception v3

    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_150 .. :try_end_15a} :catchall_158

    throw v3

    .line 767
    :cond_15b
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_169

    .line 768
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V
    invoke-static {v2, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto :goto_1d2

    .line 769
    :cond_169
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c5

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 770
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_183

    const-string v2, "android.intent.extra.REPLACING"

    .line 771
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_183

    goto :goto_1c5

    .line 773
    :cond_183
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    const-string v2, "android.intent.extra.REPLACING"

    .line 774
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1a1

    .line 775
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto :goto_1d2

    .line 776
    :cond_1a1
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 777
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearWipeProfileNotification()V
    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    goto :goto_1d2

    .line 778
    :cond_1af
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bf

    const-string v2, "android.intent.action.TIME_SET"

    .line 779
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d2

    .line 783
    :cond_1bf
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateSystemUpdateFreezePeriodsRecord(Z)V
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    goto :goto_1d2

    .line 772
    :cond_1c5
    :goto_1c5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 786
    :cond_1d2
    :goto_1d2
    return-void
.end method
