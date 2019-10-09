.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1023
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1024
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1025
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 1029
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1de

    goto/16 :goto_1dc

    .line 1137
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1138
    .local v0, "appId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    move v1, v2

    .line 1139
    .local v1, "added":Z
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 1139
    .end local v0    # "appId":I
    .end local v1    # "added":Z
    goto/16 :goto_1dc

    .line 1134
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1135
    goto/16 :goto_1dc

    .line 1118
    :pswitch_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    :goto_2b
    move v0, v2

    .line 1119
    .local v0, "active":Z
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1121
    .local v1, "size":I
    nop

    .line 1121
    .local v3, "i":I
    :goto_37
    move v2, v3

    .line 1121
    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v1, :cond_59

    .line 1123
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IMaintenanceActivityListener;

    .line 1124
    invoke-interface {v3, v0}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_49} :catch_55
    .catchall {:try_start_3a .. :try_end_49} :catchall_4a

    .line 1126
    goto :goto_56

    .line 1129
    .end local v2    # "i":I
    :catchall_4a
    move-exception v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 1125
    .restart local v2    # "i":I
    :catch_55
    move-exception v3

    .line 1121
    :goto_56
    add-int/lit8 v3, v2, 0x1

    .line 1121
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_37

    .line 1129
    .end local v3    # "i":I
    :cond_59
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMaintenanceActivityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1130
    nop

    .line 1131
    .end local v0    # "active":Z
    .end local v1    # "size":I
    goto/16 :goto_1dc

    .line 1113
    :pswitch_65
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1114
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    .line 1115
    .end local v0    # "uid":I
    goto/16 :goto_1dc

    .line 1091
    :pswitch_6e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1092
    .local v0, "activeReason":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1094
    .local v1, "activeUid":I
    if-eqz v0, :cond_78

    .line 1093
    move-object v2, v0

    goto :goto_7b

    .line 1094
    :cond_78
    const-string/jumbo v2, "unknown"

    .line 1093
    :goto_7b
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1095
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v2

    .line 1096
    .local v2, "deepChanged":Z
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    .line 1098
    .local v4, "lightChanged":Z
    :try_start_92
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1099
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v3, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_a4} :catch_a5

    .line 1102
    goto :goto_a6

    .line 1101
    :catch_a5
    move-exception v3

    .line 1103
    :goto_a6
    if-eqz v2, :cond_b9

    .line 1104
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1106
    :cond_b9
    if-eqz v4, :cond_cc

    .line 1107
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1109
    :cond_cc
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1110
    .end local v0    # "activeReason":Ljava/lang/String;
    .end local v1    # "activeUid":I
    .end local v2    # "deepChanged":Z
    .end local v4    # "lightChanged":Z
    goto/16 :goto_1dc

    .line 1065
    :pswitch_d1
    const-string/jumbo v0, "unknown"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1067
    .local v0, "deepChanged":Z
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    .line 1069
    .local v2, "lightChanged":Z
    :try_start_eb
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1070
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    .line 1071
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 1070
    invoke-interface {v4, v3, v1, v5}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_101} :catch_102

    .line 1073
    goto :goto_103

    .line 1072
    :catch_102
    move-exception v1

    .line 1074
    :goto_103
    if-eqz v0, :cond_126

    .line 1075
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1076
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1077
    # getter for: Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1076
    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1079
    :cond_126
    if-eqz v2, :cond_149

    .line 1080
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1081
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1082
    # getter for: Lcom/android/server/DeviceIdleController;->mIdleStartedDoneReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1081
    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1086
    :cond_149
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1087
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1088
    .end local v0    # "deepChanged":Z
    .end local v2    # "lightChanged":Z
    goto/16 :goto_1dc

    .line 1037
    :pswitch_153
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1040
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_170

    .line 1041
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1042
    .restart local v0    # "deepChanged":Z
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1042
    .local v3, "lightChanged":Z
    goto :goto_184

    .line 1044
    .end local v0    # "deepChanged":Z
    .end local v3    # "lightChanged":Z
    :cond_170
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1045
    .restart local v0    # "deepChanged":Z
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1048
    .restart local v3    # "lightChanged":Z
    :goto_184
    :try_start_184
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1049
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v4, :cond_19a

    .line 1050
    nop

    .line 1051
    move v2, v4

    nop

    :cond_19a
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1049
    invoke-interface {v5, v2, v1, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_1a1
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_1a1} :catch_1a2

    .line 1053
    goto :goto_1a3

    .line 1052
    :catch_1a2
    move-exception v1

    .line 1054
    :goto_1a3
    if-eqz v0, :cond_1b6

    .line 1055
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mIdleIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1057
    :cond_1b6
    if-eqz v3, :cond_1c9

    .line 1058
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mLightIdleIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1060
    :cond_1c9
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1061
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mGoingIdleWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1062
    .end local v0    # "deepChanged":Z
    .end local v3    # "lightChanged":Z
    goto :goto_1dc

    .line 1032
    :pswitch_1d6
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 1033
    nop

    .line 1142
    :goto_1dc
    return-void

    nop

    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_1d6
        :pswitch_153
        :pswitch_153
        :pswitch_d1
        :pswitch_6e
        :pswitch_65
        :pswitch_25
        :pswitch_1e
        :pswitch_a
    .end packed-switch
.end method
