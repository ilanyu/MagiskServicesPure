.class Lcom/android/server/backup/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .line 1200
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .line 1236
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$1(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1287
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onReceive$2(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 1204
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1205
    .local v3, "action":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1206
    .local v0, "replacing":Z
    const/4 v4, 0x0

    .line 1207
    .local v4, "added":Z
    const/4 v5, 0x0

    .line 1208
    .local v5, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1209
    .local v6, "extras":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1210
    .local v7, "pkgList":[Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_4d

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    .line 1211
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    .line 1212
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    goto :goto_4d

    .line 1242
    :cond_2a
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 1243
    const/4 v4, 0x1

    .line 1244
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1250
    .end local v0    # "replacing":Z
    .local v4, "replacing":Z
    .local v5, "added":Z
    .local v8, "changed":Z
    :cond_39
    :goto_39
    move v8, v5

    move v5, v4

    move v4, v0

    goto :goto_8a

    .line 1245
    .end local v8    # "changed":Z
    .restart local v0    # "replacing":Z
    .local v4, "added":Z
    .local v5, "changed":Z
    :cond_3d
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 1246
    const/4 v4, 0x0

    .line 1247
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    goto :goto_39

    .line 1213
    :cond_4d
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1214
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_54

    .line 1215
    return-void

    .line 1217
    :cond_54
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1218
    .local v10, "pkgName":Ljava/lang/String;
    if-eqz v10, :cond_60

    .line 1219
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    aput-object v10, v11, v9

    move-object v7, v11

    .line 1221
    :cond_60
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1224
    if-eqz v5, :cond_7d

    .line 1225
    const-string v9, "android.intent.extra.changed_component_name_list"

    .line 1226
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1235
    .local v9, "components":[Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;
    invoke-static {v11}, Lcom/android/server/backup/BackupManagerService;->access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v11

    new-instance v12, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;

    invoke-direct {v12, v1, v10, v9}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$k3_lOimiIJDhWdG7_SCrtoKbtjY;-><init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1237
    return-void

    .line 1240
    .end local v9    # "components":[Ljava/lang/String;
    :cond_7d
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1241
    const-string v11, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1242
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "pkgName":Ljava/lang/String;
    goto :goto_39

    .line 1250
    .end local v0    # "replacing":Z
    .local v4, "replacing":Z
    .local v5, "added":Z
    .local v8, "changed":Z
    :goto_8a
    if-eqz v7, :cond_178

    array-length v0, v7

    if-nez v0, :cond_93

    .line 1251
    move-object/from16 v17, v3

    goto/16 :goto_17a

    .line 1254
    :cond_93
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1255
    .local v10, "uid":I
    if-eqz v5, :cond_14b

    .line 1256
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    monitor-enter v11

    .line 1257
    if-eqz v4, :cond_af

    .line 1262
    :try_start_a4
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    invoke-static {v0, v7, v10}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;I)V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_aa

    goto :goto_af

    .line 1265
    :catchall_aa
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_147

    .line 1264
    :cond_af
    :goto_af
    :try_start_af
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    invoke-static {v0, v7}, Lcom/android/server/backup/BackupManagerService;->access$600(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;)V

    .line 1265
    monitor-exit v11
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_144

    .line 1267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1268
    .local v11, "now":J
    array-length v13, v7

    move v14, v9

    :goto_bb
    if-ge v14, v13, :cond_13a

    aget-object v0, v7, v14

    move-object v15, v0

    .line 1270
    .local v15, "packageName":Ljava/lang/String;
    :try_start_c0
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1271
    .local v16, "app":Landroid/content/pm/PackageInfo;
    move-object/from16 v9, v16

    invoke-static {v9}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    .end local v16    # "app":Landroid/content/pm/PackageInfo;
    .local v9, "app":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_f1

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 1273
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1272
    invoke-static {v0, v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 1274
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v15, v11, v12}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1275
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;
    :try_end_e9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c0 .. :try_end_e9} :catch_119

    move-object/from16 v17, v3

    const-wide/16 v2, 0x0

    .end local v3    # "action":Ljava/lang/String;
    .local v17, "action":Ljava/lang/String;
    :try_start_ed
    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_105

    .line 1280
    .end local v17    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_f1
    move-object/from16 v17, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ed .. :try_end_fa} :catch_117

    .line 1281
    :try_start_fa
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V
    invoke-static {v0, v15}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 1282
    monitor-exit v2
    :try_end_100
    .catchall {:try_start_fa .. :try_end_100} :catchall_114

    .line 1283
    :try_start_100
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;)V

    .line 1286
    :goto_105
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v2, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;

    invoke-direct {v2, v1, v15}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$8WilE3DKM3p1qJhvhqvZiHtD9hI;-><init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_113
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_100 .. :try_end_113} :catch_117

    .line 1294
    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    goto :goto_132

    .line 1282
    .restart local v9    # "app":Landroid/content/pm/PackageInfo;
    :catchall_114
    move-exception v0

    :try_start_115
    monitor-exit v2
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    :try_start_116
    throw v0
    :try_end_117
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_116 .. :try_end_117} :catch_117

    .line 1289
    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    :catch_117
    move-exception v0

    goto :goto_11c

    .end local v17    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catch_119
    move-exception v0

    move-object/from16 v17, v3

    .line 1292
    .end local v3    # "action":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v17    # "action":Ljava/lang/String;
    :goto_11c
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t resolve new app "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "packageName":Ljava/lang/String;
    :goto_132
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, p2

    const/4 v9, 0x0

    goto :goto_bb

    .line 1299
    .end local v17    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_13a
    move-object/from16 v17, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "@pm@"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1300
    .end local v11    # "now":J
    goto :goto_174

    .line 1265
    .end local v17    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catchall_144
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    :goto_147
    :try_start_147
    monitor-exit v11
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_149

    throw v0

    :catchall_149
    move-exception v0

    goto :goto_147

    .line 1301
    .end local v17    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_14b
    move-object/from16 v17, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    if-eqz v4, :cond_150

    goto :goto_15d

    .line 1307
    :cond_150
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 1308
    :try_start_157
    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    invoke-static {v0, v7, v10}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;I)V

    .line 1309
    monitor-exit v2
    :try_end_15d
    .catchall {:try_start_157 .. :try_end_15d} :catchall_175

    .line 1311
    :goto_15d
    array-length v0, v7

    const/4 v2, 0x0

    :goto_15f
    if-ge v2, v0, :cond_174

    aget-object v3, v7, v2

    .line 1312
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/backup/BackupManagerService$2;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;
    invoke-static {v9}, Lcom/android/server/backup/BackupManagerService;->access$300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v9

    new-instance v11, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$PXK_S3ijBAkFZ4wQtjneIECynPo;

    invoke-direct {v11, v1, v3}, Lcom/android/server/backup/-$$Lambda$BackupManagerService$2$PXK_S3ijBAkFZ4wQtjneIECynPo;-><init>(Lcom/android/server/backup/BackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1311
    .end local v3    # "pkgName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15f

    .line 1316
    :cond_174
    :goto_174
    return-void

    .line 1309
    :catchall_175
    move-exception v0

    :try_start_176
    monitor-exit v2
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    throw v0

    .line 1251
    .end local v10    # "uid":I
    .end local v17    # "action":Ljava/lang/String;
    .local v3, "action":Ljava/lang/String;
    :cond_178
    move-object/from16 v17, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v17    # "action":Ljava/lang/String;
    :goto_17a
    return-void
.end method
