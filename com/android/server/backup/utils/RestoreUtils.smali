.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 117
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z
    .registers 33
    .param p0, "instream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteObserver"    # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            ")Z"
        }
    .end annotation

    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    .line 77
    const/4 v3, 0x1

    .line 80
    .local v3, "okay":Z
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installing from backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :try_start_1d
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v5, v0

    .line 85
    .local v5, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v0

    .line 86
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v7, v0

    .line 88
    .local v7, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_34} :catch_3d1

    move-object v9, v0

    .line 89
    .local v9, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v10, p6

    :try_start_37
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_3cd

    move v11, v0

    .line 92
    .local v11, "sessionId":I
    :try_start_3f
    invoke-virtual {v7, v11}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_3b9
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_43} :catch_3cd

    move-object v14, v0

    .line 93
    .local v14, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_44
    iget-object v13, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_46} :catch_39d
    .catchall {:try_start_44 .. :try_end_46} :catchall_38c

    const-wide/16 v15, 0x0

    move-object/from16 v18, v9

    :try_start_4a
    iget-wide v8, v2, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4c} :catch_37d
    .catchall {:try_start_4a .. :try_end_4c} :catchall_36e

    .end local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v18, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object v12, v14

    move-object/from16 v19, v14

    move-wide v14, v15

    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v19, "session":Landroid/content/pm/PackageInstaller$Session;
    move-wide/from16 v16, v8

    :try_start_52
    invoke-virtual/range {v12 .. v17}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_56} :catch_35e
    .catchall {:try_start_52 .. :try_end_56} :catchall_34d

    move-object v8, v0

    .line 95
    .local v8, "apkStream":Ljava/io/OutputStream;
    const v0, 0x8000

    :try_start_5a
    new-array v9, v0, [B

    .line 96
    .local v9, "buffer":[B
    iget-wide v12, v2, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5e} :catch_32d
    .catchall {:try_start_5a .. :try_end_5e} :catchall_31c

    .line 97
    .local v12, "size":J
    :goto_5e
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    const/4 v15, 0x0

    if-lez v14, :cond_105

    .line 98
    :try_start_65
    array-length v14, v9
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_66} :catch_f3
    .catchall {:try_start_65 .. :try_end_66} :catchall_e1

    move-object/from16 v20, v5

    int-to-long v4, v14

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v20, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    cmp-long v4, v4, v12

    if-gez v4, :cond_94

    :try_start_6d
    array-length v4, v9
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6e} :catch_82
    .catchall {:try_start_6d .. :try_end_6e} :catchall_70

    int-to-long v4, v4

    goto :goto_95

    .line 110
    .end local v9    # "buffer":[B
    .end local v12    # "size":J
    :catchall_70
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    .end local v3    # "okay":Z
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    .local v21, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v22, "okay":Z
    :goto_75
    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v4, v19

    move-object/from16 v21, v20

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_33f

    .line 93
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_82
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    .end local v3    # "okay":Z
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    :goto_87
    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v4, v19

    move-object/from16 v21, v20

    const/4 v5, 0x0

    move-object/from16 v1, p2

    :goto_91
    move-object v3, v0

    goto/16 :goto_33d

    .line 98
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v9    # "buffer":[B
    .restart local v12    # "size":J
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :cond_94
    move-wide v4, v12

    .line 99
    .local v4, "toRead":J
    :goto_95
    long-to-int v14, v4

    :try_start_96
    invoke-virtual {v1, v9, v15, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_9a} :catch_db
    .catchall {:try_start_96 .. :try_end_9a} :catchall_d5

    .line 100
    .local v14, "didRead":I
    if-ltz v14, :cond_d2

    .line 101
    int-to-long v0, v14

    move-object/from16 v15, p7

    :try_start_9f
    invoke-interface {v15, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v8, v9, v1, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a6} :catch_c3
    .catchall {:try_start_9f .. :try_end_a6} :catchall_b2

    .line 108
    int-to-long v0, v14

    sub-long/2addr v12, v0

    .line 109
    .end local v4    # "toRead":J
    .end local v14    # "didRead":I
    nop

    .line 96
    move-object/from16 v5, v20

    const v0, 0x8000

    move-object/from16 v1, p0

    const/4 v4, 0x0

    goto :goto_5e

    .line 110
    .end local v9    # "buffer":[B
    .end local v12    # "size":J
    :catchall_b2
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    move/from16 v22, v3

    move-object/from16 v4, v19

    move-object/from16 v21, v20

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_33f

    .line 93
    :catch_c3
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    move/from16 v22, v3

    move-object/from16 v4, v19

    move-object/from16 v21, v20

    const/4 v5, 0x0

    move-object/from16 v13, p0

    goto :goto_91

    .line 110
    :cond_d2
    move-object/from16 v15, p7

    goto :goto_109

    :catchall_d5
    move-exception v0

    move-object/from16 v15, p7

    move-object/from16 v9, p4

    goto :goto_75

    .line 93
    :catch_db
    move-exception v0

    move-object/from16 v15, p7

    move-object/from16 v9, p4

    goto :goto_87

    .line 110
    .end local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catchall_e1
    move-exception v0

    move-object/from16 v15, p7

    move-object/from16 v9, p4

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v4, v19

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p2

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    goto/16 :goto_33f

    .line 93
    .end local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_f3
    move-exception v0

    move-object/from16 v15, p7

    move-object/from16 v9, p4

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v1, p2

    move-object v3, v0

    move-object v5, v4

    move-object/from16 v4, v19

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    goto/16 :goto_33d

    .line 110
    .end local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :cond_105
    move-object/from16 v15, p7

    move-object/from16 v20, v5

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :goto_109
    if-eqz v8, :cond_12f

    const/4 v1, 0x0

    :try_start_10c
    invoke-static {v1, v8}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_10f} :catch_120
    .catchall {:try_start_10c .. :try_end_10f} :catchall_110

    goto :goto_12f

    .line 117
    .end local v8    # "apkStream":Ljava/io/OutputStream;
    :catchall_110
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    move/from16 v22, v3

    move-object/from16 v4, v19

    move-object/from16 v21, v20

    const/4 v5, 0x0

    move-object/from16 v13, p0

    goto/16 :goto_3b0

    .line 92
    :catch_120
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    move/from16 v22, v3

    move-object/from16 v4, v19

    move-object/from16 v21, v20

    move-object/from16 v13, p0

    goto/16 :goto_349

    .line 115
    :cond_12f
    :goto_12f
    move-object/from16 v1, v20

    :try_start_131
    invoke-virtual {v1}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_135} :catch_30c
    .catchall {:try_start_131 .. :try_end_135} :catchall_2fc

    .end local v20    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v1, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    move-object/from16 v4, v19

    :try_start_137
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_13a} :catch_2ee
    .catchall {:try_start_137 .. :try_end_13a} :catchall_2e0

    .line 117
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    if-eqz v4, :cond_159

    const/4 v5, 0x0

    :try_start_13d
    invoke-static {v5, v4}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_14c
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_140} :catch_141

    goto :goto_159

    .line 210
    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_141
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    .end local v3    # "okay":Z
    .restart local v22    # "okay":Z
    :goto_146
    move/from16 v22, v3

    move-object/from16 v13, p0

    goto/16 :goto_3dd

    .line 118
    .end local v22    # "okay":Z
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_14c
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v21, v1

    move/from16 v22, v3

    move-object/from16 v13, p0

    move-object/from16 v1, p2

    goto/16 :goto_3c7

    .line 122
    :cond_159
    :goto_159
    nop

    .line 127
    :try_start_15a
    invoke-virtual {v1}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    move-object v4, v0

    .line 133
    .local v4, "result":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_166} :catch_2d5

    move v5, v0

    .line 139
    .local v5, "status":I
    if-eqz v5, :cond_184

    .line 143
    :try_start_169
    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16b} :catch_17e

    move-object/from16 v9, p4

    :try_start_16d
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_173} :catch_17c

    if-eq v0, v8, :cond_176

    .line 144
    const/4 v3, 0x0

    .line 213
    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v4    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_176
    move-object/from16 v1, p2

    move-object/from16 v13, p0

    goto/16 :goto_2ca

    .line 210
    :catch_17c
    move-exception v0

    goto :goto_181

    :catch_17e
    move-exception v0

    move-object/from16 v9, p4

    .end local v3    # "okay":Z
    .restart local v22    # "okay":Z
    :goto_181
    move-object/from16 v1, p2

    goto :goto_146

    .line 148
    .end local v22    # "okay":Z
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    .restart local v4    # "result":Landroid/content/Intent;
    .restart local v5    # "status":I
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_184
    move-object/from16 v9, p4

    const/4 v8, 0x0

    .line 149
    .local v8, "uninstall":Z
    :try_start_187
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 151
    .local v12, "installedPackageName":Ljava/lang/String;
    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_194} :catch_2d1

    if-nez v0, :cond_1bf

    .line 152
    :try_start_196
    const-string v0, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restore stream claimed to include apk for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " but apk was really "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1b6} :catch_17c

    .line 156
    const/4 v0, 0x0

    .line 157
    .end local v3    # "okay":Z
    .local v0, "okay":Z
    const/4 v8, 0x1

    .line 202
    move v3, v0

    move-object/from16 v21, v1

    move-object/from16 v13, p0

    goto/16 :goto_2b0

    .line 160
    .end local v0    # "okay":Z
    .restart local v3    # "okay":Z
    :cond_1bf
    :try_start_1bf
    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v13, 0x8000000

    invoke-virtual {v6, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bf .. :try_end_1c7} :catch_28a
    .catch Ljava/io/IOException; {:try_start_1bf .. :try_end_1c7} :catch_283

    .line 165
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v13, p0

    :try_start_1c9
    invoke-static {v0, v13}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;Ljava/io/InputStream;)Z

    move-result v14

    if-nez v14, :cond_203

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const v16, 0x8000

    and-int v14, v14, v16

    if-nez v14, :cond_203

    .line 168
    const-string v14, "BackupManagerService"
    :try_end_1dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c9 .. :try_end_1dc} :catch_27d
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1dc} :catch_27a

    move-object/from16 v21, v1

    :try_start_1de
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1de .. :try_end_1e3} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e3} :catch_27a

    move/from16 v22, v3

    :try_start_1e5
    const-string v3, "Restore stream contains apk of package "

    .end local v3    # "okay":Z
    .restart local v22    # "okay":Z
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but it disallows backup/restore"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x0

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    :goto_1fc
    goto/16 :goto_277

    .line 193
    :catch_1fe
    move-exception v0

    move/from16 v22, v3

    .end local v3    # "okay":Z
    .restart local v22    # "okay":Z
    goto/16 :goto_291

    .line 174
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    :cond_203
    move-object/from16 v21, v1

    move/from16 v22, v3

    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v3    # "okay":Z
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    iget-object v1, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v3, p3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 175
    .local v1, "sigs":[Landroid/content/pm/Signature;
    const-class v14, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v14}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageManagerInternal;

    .line 177
    .local v14, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {v1, v0, v14}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v16

    if-eqz v16, :cond_253

    .line 180
    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v1    # "sigs":[Landroid/content/pm/Signature;
    .local v23, "sigs":[Landroid/content/pm/Signature;
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x2710

    if-ge v1, v3, :cond_250

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v1, :cond_250

    .line 182
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    const-string v0, "Installed app "

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v24, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has restricted uid and no agent"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v3, 0x0

    goto :goto_1fc

    .line 197
    .end local v14    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v23    # "sigs":[Landroid/content/pm/Signature;
    .end local v24    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_250
    move/from16 v3, v22

    goto :goto_277

    .line 187
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v1    # "sigs":[Landroid/content/pm/Signature;
    .restart local v14    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_253
    move-object/from16 v24, v0

    move-object/from16 v23, v1

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "sigs":[Landroid/content/pm/Signature;
    .restart local v23    # "sigs":[Landroid/content/pm/Signature;
    .restart local v24    # "pkg":Landroid/content/pm/PackageInfo;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " signatures do not match restore manifest"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_274
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e5 .. :try_end_274} :catch_278
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_274} :catch_2cc

    .line 189
    const/4 v3, 0x0

    .line 190
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    const/4 v0, 0x1

    .line 197
    .end local v8    # "uninstall":Z
    .end local v14    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v23    # "sigs":[Landroid/content/pm/Signature;
    .end local v24    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "uninstall":Z
    move v8, v0

    .end local v0    # "uninstall":Z
    .restart local v8    # "uninstall":Z
    :goto_277
    goto :goto_2b0

    .line 193
    .end local v3    # "okay":Z
    .restart local v22    # "okay":Z
    :catch_278
    move-exception v0

    goto :goto_291

    .line 210
    .end local v4    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "uninstall":Z
    .end local v11    # "sessionId":I
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_27a
    move-exception v0

    goto/16 :goto_3d9

    .line 193
    .local v1, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v4    # "result":Landroid/content/Intent;
    .restart local v5    # "status":I
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "uninstall":Z
    .restart local v11    # "sessionId":I
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_27d
    move-exception v0

    move-object/from16 v21, v1

    move/from16 v22, v3

    goto :goto_291

    .line 210
    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v4    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "uninstall":Z
    .end local v11    # "sessionId":I
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_283
    move-exception v0

    move/from16 v22, v3

    move-object/from16 v13, p0

    goto/16 :goto_3db

    .line 193
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v4    # "result":Landroid/content/Intent;
    .restart local v5    # "status":I
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "uninstall":Z
    .restart local v11    # "sessionId":I
    .restart local v12    # "installedPackageName":Ljava/lang/String;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_28a
    move-exception v0

    move-object/from16 v21, v1

    move/from16 v22, v3

    move-object/from16 v13, p0

    .line 194
    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v3    # "okay":Z
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    :goto_291
    :try_start_291
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Install of package "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " succeeded but now not found"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ae
    .catch Ljava/io/IOException; {:try_start_291 .. :try_end_2ae} :catch_2cc

    .line 196
    const/4 v0, 0x0

    .line 202
    .end local v22    # "okay":Z
    .local v0, "okay":Z
    move v3, v0

    .end local v0    # "okay":Z
    .restart local v3    # "okay":Z
    :goto_2b0
    if-eqz v8, :cond_2c8

    .line 203
    :try_start_2b2
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2b2 .. :try_end_2b5} :catch_2c1

    .line 204
    move-object/from16 v1, p2

    const/4 v14, 0x0

    :try_start_2b8
    invoke-virtual {v6, v12, v1, v14}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2be} :catch_2bf

    .end local v4    # "result":Landroid/content/Intent;
    .end local v5    # "status":I
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "uninstall":Z
    .end local v11    # "sessionId":I
    .end local v12    # "installedPackageName":Ljava/lang/String;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    goto :goto_2ca

    .line 210
    :catch_2bf
    move-exception v0

    goto :goto_2c4

    :catch_2c1
    move-exception v0

    move-object/from16 v1, p2

    .end local v3    # "okay":Z
    .restart local v22    # "okay":Z
    :goto_2c4
    move/from16 v22, v3

    goto/16 :goto_3dd

    .line 213
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    :cond_2c8
    move-object/from16 v1, p2

    :goto_2ca
    goto/16 :goto_3e5

    .line 210
    .end local v3    # "okay":Z
    .restart local v22    # "okay":Z
    :catch_2cc
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_3dd

    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_2d1
    move-exception v0

    move-object/from16 v1, p2

    goto :goto_2da

    :catch_2d5
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    :goto_2da
    move/from16 v22, v3

    move-object/from16 v13, p0

    goto/16 :goto_3dd

    .line 117
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v4, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catchall_2e0
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v21, v1

    move/from16 v22, v3

    const/4 v5, 0x0

    move-object/from16 v13, p0

    move-object/from16 v1, p2

    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v3    # "okay":Z
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto/16 :goto_3b0

    .line 92
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    :catch_2ee
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v21, v1

    move/from16 v22, v3

    move-object/from16 v13, p0

    move-object/from16 v1, p2

    move-object v3, v0

    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v3    # "okay":Z
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto/16 :goto_3ad

    .line 117
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2fc
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v21, v1

    move/from16 v22, v3

    move-object/from16 v4, v19

    const/4 v5, 0x0

    move-object/from16 v13, p0

    move-object/from16 v1, p2

    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v3    # "okay":Z
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto/16 :goto_3b0

    .line 92
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v3    # "okay":Z
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_30c
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v21, v1

    move/from16 v22, v3

    move-object/from16 v4, v19

    move-object/from16 v13, p0

    move-object/from16 v1, p2

    move-object v3, v0

    .end local v1    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v3    # "okay":Z
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto/16 :goto_3ad

    .line 110
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .local v5, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v8, "apkStream":Ljava/io/OutputStream;
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_31c
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v1, p2

    move-object v5, v4

    move-object/from16 v4, v19

    move-object v3, v5

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto :goto_33f

    .line 93
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_32d
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v1, p2

    move-object v5, v4

    move-object/from16 v4, v19

    move-object v3, v0

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    :goto_33d
    :try_start_33d
    throw v3
    :try_end_33e
    .catchall {:try_start_33d .. :try_end_33e} :catchall_33e

    .line 110
    :catchall_33e
    move-exception v0

    :goto_33f
    if-eqz v8, :cond_34c

    :try_start_341
    invoke-static {v3, v8}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_34c

    .line 117
    .end local v8    # "apkStream":Ljava/io/OutputStream;
    :catchall_345
    move-exception v0

    goto/16 :goto_3b0

    .line 92
    :catch_348
    move-exception v0

    :goto_349
    move-object v3, v0

    goto/16 :goto_3ad

    .line 110
    .restart local v8    # "apkStream":Ljava/io/OutputStream;
    :cond_34c
    :goto_34c
    throw v0
    :try_end_34d
    .catch Ljava/lang/Throwable; {:try_start_341 .. :try_end_34d} :catch_348
    .catchall {:try_start_341 .. :try_end_34d} :catchall_345

    .line 117
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v8    # "apkStream":Ljava/io/OutputStream;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_34d
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v1, p2

    move-object v5, v4

    move-object/from16 v4, v19

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto/16 :goto_3b0

    .line 92
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_35e
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v4, v19

    move-object/from16 v1, p2

    move-object v3, v0

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto :goto_3ad

    .line 117
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v14, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_36e
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v1, p2

    move-object v5, v4

    move-object v4, v14

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto :goto_3b0

    .line 92
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_37d
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object v4, v14

    move-object/from16 v1, p2

    move-object v3, v0

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto :goto_3ad

    .line 117
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v9, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_38c
    move-exception v0

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v18, v9

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    move-object v5, v4

    move-object v4, v14

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    goto :goto_3b0

    .line 92
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_39d
    move-exception v0

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v18, v9

    move-object v4, v14

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    move-object v3, v0

    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    :goto_3ad
    :try_start_3ad
    throw v3
    :try_end_3ae
    .catchall {:try_start_3ad .. :try_end_3ae} :catchall_3ae

    .line 117
    :catchall_3ae
    move-exception v0

    move-object v5, v3

    :goto_3b0
    if-eqz v4, :cond_3b8

    :try_start_3b2
    invoke-static {v5, v4}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_3b8

    .line 118
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_3b6
    move-exception v0

    goto :goto_3c7

    .line 117
    .restart local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    :cond_3b8
    :goto_3b8
    throw v0
    :try_end_3b9
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3b9} :catch_3b6
    .catch Ljava/io/IOException; {:try_start_3b2 .. :try_end_3b9} :catch_3cb

    .line 118
    .end local v4    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_3b9
    move-exception v0

    move-object/from16 v15, p7

    move-object v13, v1

    move/from16 v22, v3

    move-object/from16 v21, v5

    move-object/from16 v18, v9

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    .line 119
    .end local v3    # "okay":Z
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v0, "t":Ljava/lang/Exception;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v22    # "okay":Z
    :goto_3c7
    :try_start_3c7
    invoke-virtual {v7, v11}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 121
    throw v0
    :try_end_3cb
    .catch Ljava/io/IOException; {:try_start_3c7 .. :try_end_3cb} :catch_3cb

    .line 210
    .end local v0    # "t":Ljava/lang/Exception;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v21    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    :catch_3cb
    move-exception v0

    goto :goto_3dd

    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_3cd
    move-exception v0

    move-object/from16 v9, p4

    goto :goto_3d6

    :catch_3d1
    move-exception v0

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    :goto_3d6
    move-object/from16 v15, p7

    move-object v13, v1

    :goto_3d9
    move/from16 v22, v3

    :goto_3db
    move-object/from16 v1, p2

    .line 211
    .end local v3    # "okay":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v22    # "okay":Z
    :goto_3dd
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to transcribe restored apk for install"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v3, 0x0

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .end local v22    # "okay":Z
    .restart local v3    # "okay":Z
    :goto_3e5
    return v3
.end method
