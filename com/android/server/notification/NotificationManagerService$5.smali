.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1023
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 1026
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_b

    .line 1028
    return-void

    .line 1031
    :cond_b
    const/4 v0, 0x0

    .line 1032
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1033
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1034
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1035
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1036
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1037
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1039
    .local v20, "reason":I
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 1040
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_5d

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    .line 1041
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    .line 1042
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_5d

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 1043
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_5d

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1044
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1045
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    const-string v9, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 1046
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    goto :goto_5d

    .line 1116
    :cond_57
    move-object/from16 v25, v3

    move/from16 v27, v4

    goto/16 :goto_1bd

    .line 1047
    :cond_5d
    :goto_5d
    move/from16 v21, v5

    move v5, v0

    .end local v0    # "queryRestart":Z
    .local v5, "queryRestart":Z
    .local v21, "packageChanged":Z
    const-string v0, "android.intent.extra.user_handle"

    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1049
    .local v15, "changeUserId":I
    const/4 v10, 0x0

    .line 1050
    .local v10, "pkgList":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1051
    .local v11, "uidList":[I
    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_77

    const-string v0, "android.intent.extra.REPLACING"

    .line 1052
    invoke-virtual {v2, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_77

    move v0, v14

    goto :goto_78

    :cond_77
    move v0, v13

    :goto_78
    move v12, v0

    .line 1053
    .local v12, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_9b

    const-string v0, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " removing="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_9b
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1055
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1056
    .end local v10    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    const-string v9, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 1101
    .end local v4    # "queryRemove":Z
    .end local v11    # "uidList":[I
    .local v3, "uidList":[I
    .local v25, "action":Ljava/lang/String;
    .local v27, "queryRemove":Z
    :goto_af
    move-object/from16 v25, v3

    move/from16 v27, v4

    move-object v3, v11

    const/4 v14, 0x0

    goto/16 :goto_145

    .line 1057
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v25    # "action":Ljava/lang/String;
    .end local v27    # "queryRemove":Z
    .local v3, "action":Ljava/lang/String;
    .restart local v4    # "queryRemove":Z
    .restart local v10    # "pkgList":[Ljava/lang/String;
    .restart local v11    # "uidList":[I
    :cond_b7
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 1058
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1059
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1060
    const/4 v7, 0x1

    goto :goto_af

    .line 1061
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_c8
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1062
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1063
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1064
    const/4 v8, 0x1

    goto :goto_af

    .line 1065
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_d9
    if-eqz v5, :cond_ef

    .line 1066
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1067
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    new-array v9, v14, [I

    const-string v10, "android.intent.extra.UID"

    const/4 v13, -0x1

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x0

    aput v10, v9, v13

    move-object v11, v9

    goto :goto_af

    .line 1069
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_ef
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1070
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_f6

    .line 1071
    return-void

    .line 1073
    :cond_f6
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 1074
    .local v13, "pkgName":Ljava/lang/String;
    if-nez v13, :cond_fd

    .line 1075
    return-void

    .line 1077
    :cond_fd
    if-eqz v21, :cond_12e

    .line 1080
    :try_start_ff
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1082
    const/4 v14, -0x1

    if-eq v15, v14, :cond_10a

    .line 1080
    move v14, v15

    goto :goto_10c

    .line 1083
    :cond_10a
    nop

    .line 1080
    const/4 v14, 0x0

    :goto_10c
    invoke-interface {v0, v13, v14}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_110
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ff .. :try_end_110} :catch_11c
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_110} :catch_11a

    .line 1084
    .local v0, "enabled":I
    const/4 v14, 0x1

    if-eq v0, v14, :cond_115

    if-nez v0, :cond_117

    .line 1086
    :cond_115
    const/4 v0, 0x0

    .line 1096
    .end local v6    # "cancelNotifications":Z
    .local v0, "cancelNotifications":Z
    move v6, v0

    .line 1098
    .end local v0    # "cancelNotifications":Z
    .end local v3    # "action":Ljava/lang/String;
    .restart local v6    # "cancelNotifications":Z
    .restart local v25    # "action":Ljava/lang/String;
    :cond_117
    :goto_117
    move-object/from16 v25, v3

    goto :goto_130

    .line 1094
    .end local v25    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catch_11a
    move-exception v0

    goto :goto_117

    .line 1088
    :catch_11c
    move-exception v0

    .line 1091
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v14, :cond_12b

    .line 1092
    const-string v14, "NotificationService"

    move-object/from16 v25, v3

    const-string v3, "Exception trying to look up app enabled setting"

    .end local v3    # "action":Ljava/lang/String;
    .restart local v25    # "action":Ljava/lang/String;
    invoke-static {v14, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_12d

    .line 1096
    .end local v25    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_12b
    move-object/from16 v25, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v25    # "action":Ljava/lang/String;
    :goto_12d
    goto :goto_130

    .line 1098
    .end local v25    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_12e
    move-object/from16 v25, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v25    # "action":Ljava/lang/String;
    :goto_130
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v0, v14

    .line 1099
    .end local v10    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    new-array v10, v3, [I

    const-string v3, "android.intent.extra.UID"

    move/from16 v27, v4

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .end local v4    # "queryRemove":Z
    .restart local v27    # "queryRemove":Z
    aput v3, v10, v14

    move-object v11, v10

    .line 1101
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v13    # "pkgName":Ljava/lang/String;
    move-object v3, v11

    .end local v11    # "uidList":[I
    .local v3, "uidList":[I
    :goto_145
    if-eqz v0, :cond_1ab

    array-length v4, v0

    if-lez v4, :cond_1ab

    .line 1102
    array-length v4, v0

    move v13, v14

    :goto_14c
    if-ge v13, v4, :cond_1ab

    aget-object v22, v0, v13

    .line 1103
    .local v22, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_189

    .line 1104
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1600()I

    move-result v10

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-nez v5, :cond_167

    const/16 v19, 0x1

    goto :goto_169

    :cond_167
    move/from16 v19, v14

    :goto_169
    const/16 v23, 0x0

    move/from16 v28, v12

    move-object/from16 v12, v22

    .end local v12    # "removingPackage":Z
    .local v28, "removingPackage":Z
    move/from16 v24, v13

    move/from16 v29, v14

    move-object/from16 v13, v16

    const/16 v26, 0x1

    move/from16 v14, v17

    move/from16 v30, v15

    move/from16 v15, v18

    .end local v15    # "changeUserId":I
    .local v30, "changeUserId":I
    move/from16 v16, v19

    move/from16 v17, v30

    move/from16 v18, v20

    move-object/from16 v19, v23

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_1a2

    .line 1106
    .end local v28    # "removingPackage":Z
    .end local v30    # "changeUserId":I
    .restart local v12    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_189
    move/from16 v28, v12

    move/from16 v24, v13

    move/from16 v29, v14

    move/from16 v30, v15

    const/16 v26, 0x1

    .end local v12    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v28    # "removingPackage":Z
    .restart local v30    # "changeUserId":I
    if-eqz v7, :cond_19b

    .line 1107
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_1a2

    .line 1108
    :cond_19b
    if-eqz v8, :cond_1a2

    .line 1109
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    .line 1102
    .end local v22    # "pkgName":Ljava/lang/String;
    :cond_1a2
    :goto_1a2
    add-int/lit8 v13, v24, 0x1

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v15, v30

    goto :goto_14c

    .line 1114
    .end local v28    # "removingPackage":Z
    .end local v30    # "changeUserId":I
    .restart local v12    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_1ab
    move/from16 v28, v12

    move/from16 v30, v15

    .end local v12    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v28    # "removingPackage":Z
    .restart local v30    # "changeUserId":I
    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v4

    move/from16 v10, v28

    move/from16 v9, v30

    invoke-virtual {v4, v10, v9, v0, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    .line 1116
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v3    # "uidList":[I
    .end local v28    # "removingPackage":Z
    .end local v30    # "changeUserId":I
    move v0, v5

    move/from16 v5, v21

    .end local v21    # "packageChanged":Z
    .local v0, "queryRestart":Z
    .local v5, "packageChanged":Z
    :goto_1bd
    return-void
.end method
