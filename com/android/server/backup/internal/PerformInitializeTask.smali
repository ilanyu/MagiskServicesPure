.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mBaseStateDir:Ljava/io/File;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private final mQueue:[Ljava/lang/String;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V
    .registers 7
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transportManager"    # Lcom/android/server/backup/TransportManager;
    .param p3, "transportNames"    # [Ljava/lang/String;
    .param p4, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p5, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p6, "baseStateDir"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 83
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 85
    iput-object p5, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 86
    iput-object p6, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .registers 12
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transportNames"    # [Ljava/lang/String;
    .param p3, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p4, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 64
    nop

    .line 66
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    .line 71
    return-void
.end method

.method private notifyFinished(I)V
    .registers 4
    .param p1, "status"    # I

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 106
    :cond_9
    goto :goto_e

    .line 104
    :catch_a
    move-exception v0

    .line 105
    .local v0, "ignored":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 107
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .registers 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 96
    :cond_9
    goto :goto_e

    .line 94
    :catch_a
    move-exception v0

    .line 95
    .local v0, "ignored":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 97
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method


# virtual methods
.method public run()V
    .registers 26

    .line 111
    move-object/from16 v1, p0

    const-string v2, "PerformInitializeTask.run()"

    .line 112
    .local v2, "callerLogString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 113
    .local v3, "transportClientsToDisposeOf":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/backup/transport/TransportClient;>;"
    const/4 v0, 0x0

    move v4, v0

    .line 115
    .local v4, "result":I
    :try_start_f
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    array-length v6, v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_168
    .catchall {:try_start_f .. :try_end_12} :catchall_165

    move v7, v4

    move v4, v0

    .end local v4    # "result":I
    .local v7, "result":I
    :goto_14
    if-ge v4, v6, :cond_146

    :try_start_16
    aget-object v8, v5, v4

    .line 116
    .local v8, "transportName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 117
    invoke-virtual {v9, v8, v2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v9

    .line 118
    .local v9, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v9, :cond_42

    .line 119
    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested init for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " but not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    nop

    .line 115
    move-object/from16 v20, v5

    move/from16 v21, v6

    goto/16 :goto_c6

    .line 122
    :cond_42
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 127
    invoke-virtual {v9}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 126
    invoke-virtual {v10, v11}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, "transportDirName":Ljava/lang/String;
    const/16 v11, 0xb05

    invoke-static {v11, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 131
    .local v11, "startRealtime":J
    invoke-virtual {v9, v2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v13

    .line 132
    .local v13, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v13}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v14

    .line 134
    .local v14, "status":I
    if-nez v14, :cond_7d

    .line 135
    invoke-interface {v13}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v15

    move v14, v15

    .line 139
    :cond_7d
    if-nez v14, :cond_c8

    .line 140
    const-string v15, "BackupManagerService"

    const-string v0, "Device init successful"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v20, v5

    move/from16 v21, v6

    sub-long v5, v18, v11

    long-to-int v0, v5

    .line 142
    .local v0, "millis":I
    const/16 v5, 0xb0b

    const/4 v6, 0x0

    new-array v15, v6, [Ljava/lang/Object;

    invoke-static {v5, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 143
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v5, "stateFileDir":Ljava/io/File;
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 145
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v15, v16

    const/16 v6, 0xb09

    invoke-static {v6, v15}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 146
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v15, 0x0

    invoke-virtual {v6, v15, v8, v10}, Lcom/android/server/backup/BackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {v1, v8, v15}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    .line 148
    .end local v0    # "millis":I
    .end local v5    # "stateFileDir":Ljava/io/File;
    nop

    .line 115
    .end local v8    # "transportName":Ljava/lang/String;
    .end local v9    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v10    # "transportDirName":Ljava/lang/String;
    .end local v11    # "startRealtime":J
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v14    # "status":I
    :goto_c6
    const/4 v15, 0x0

    goto :goto_124

    .line 151
    .restart local v8    # "transportName":Ljava/lang/String;
    .restart local v9    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .restart local v10    # "transportDirName":Ljava/lang/String;
    .restart local v11    # "startRealtime":J
    .restart local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v14    # "status":I
    :cond_c8
    move-object/from16 v20, v5

    move/from16 v21, v6

    const-string v0, "BackupManagerService"

    const-string v5, "Transport error in initializeDevice()"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/16 v0, 0xb06

    const-string v5, "(initialize)"

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 153
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v8, v10}, Lcom/android/server/backup/BackupManagerService;->recordInitPending(ZLjava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {v1, v8, v14}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_e3} :catch_143
    .catchall {:try_start_16 .. :try_end_e3} :catchall_141

    .line 155
    move v5, v14

    .line 158
    .end local v7    # "result":I
    .local v5, "result":I
    :try_start_e4
    invoke-interface {v13}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v6

    .line 159
    .local v6, "delay":J
    const-string v0, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_ef} :catch_13b
    .catchall {:try_start_e4 .. :try_end_ef} :catchall_135

    move/from16 v22, v5

    :try_start_f1
    const-string v5, "Init failed on "

    .end local v5    # "result":I
    .local v22, "result":I
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " resched in "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    add-long v8, v15, v6

    .end local v8    # "transportName":Ljava/lang/String;
    .end local v9    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .local v23, "transportName":Ljava/lang/String;
    .local v24, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 163
    invoke-virtual {v5}, Lcom/android/server/backup/BackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 160
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v8, v9, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_122} :catch_131
    .catchall {:try_start_f1 .. :try_end_122} :catchall_12d

    .line 115
    .end local v6    # "delay":J
    .end local v10    # "transportDirName":Ljava/lang/String;
    .end local v11    # "startRealtime":J
    .end local v13    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v14    # "status":I
    .end local v23    # "transportName":Ljava/lang/String;
    .end local v24    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    move/from16 v7, v22

    .end local v22    # "result":I
    .restart local v7    # "result":I
    :goto_124
    add-int/lit8 v4, v4, 0x1

    move v0, v15

    move-object/from16 v5, v20

    move/from16 v6, v21

    goto/16 :goto_14

    .line 170
    .end local v7    # "result":I
    .restart local v22    # "result":I
    :catchall_12d
    move-exception v0

    move/from16 v7, v22

    goto :goto_189

    .line 166
    :catch_131
    move-exception v0

    move/from16 v4, v22

    goto :goto_169

    .line 170
    .end local v22    # "result":I
    .restart local v5    # "result":I
    :catchall_135
    move-exception v0

    move/from16 v22, v5

    move/from16 v7, v22

    .end local v5    # "result":I
    .restart local v22    # "result":I
    goto :goto_189

    .line 166
    .end local v22    # "result":I
    .restart local v5    # "result":I
    :catch_13b
    move-exception v0

    move/from16 v22, v5

    move/from16 v4, v22

    .end local v5    # "result":I
    .restart local v22    # "result":I
    goto :goto_169

    .line 170
    .end local v22    # "result":I
    .restart local v7    # "result":I
    :catchall_141
    move-exception v0

    goto :goto_189

    .line 166
    :catch_143
    move-exception v0

    move v4, v7

    goto :goto_169

    .line 170
    :cond_146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportClient;

    .line 171
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 172
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    goto :goto_14a

    .line 173
    :cond_15c
    invoke-direct {v1, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 174
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 175
    goto :goto_188

    .line 170
    .end local v7    # "result":I
    .local v4, "result":I
    :catchall_165
    move-exception v0

    move v7, v4

    goto :goto_189

    .line 166
    :catch_168
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :goto_169
    :try_start_169
    const-string v5, "BackupManagerService"

    const-string v6, "Unexpected error performing init"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_170
    .catchall {:try_start_169 .. :try_end_170} :catchall_165

    .line 168
    const/16 v7, -0x3e8

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "result":I
    .restart local v7    # "result":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_176
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/transport/TransportClient;

    .line 171
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v5, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 172
    .end local v4    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    goto :goto_176

    .line 176
    :goto_188
    return-void

    .line 170
    :goto_189
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/transport/TransportClient;

    .line 171
    .local v5, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    iget-object v6, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, v5, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 172
    .end local v5    # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    goto :goto_18d

    .line 173
    :cond_19f
    invoke-direct {v1, v7}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    .line 174
    iget-object v4, v1, Lcom/android/server/backup/internal/PerformInitializeTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v4, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    throw v0
.end method
