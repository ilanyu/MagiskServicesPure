.class Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "PerformUnifiedRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFeederThread"
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

.field mEnginePipes:[Landroid/os/ParcelFileDescriptor;

.field mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

.field private final mEphemeralOpToken:I

.field mTransportPipes:[Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 842
    const-string v0, "StreamFeederThread"

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->TAG:Ljava/lang/String;

    .line 855
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    .line 856
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    .line 857
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    .line 858
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 859
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .line 1009
    return-void
.end method

.method public handleCancel(Z)V
    .registers 8
    .param p1, "cancelAll"    # Z

    .line 1017
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 1019
    const-string v0, "StreamFeederThread"

    const-string v1, "Full-data restore target timed out; shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 1024
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1022
    const/4 v3, 0x0

    const/16 v4, 0x2d

    const/4 v5, 0x2

    invoke-static {v1, v4, v2, v5, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$202(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/backup/IBackupManagerMonitor;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1025
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->handleTimeout()V

    .line 1027
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v3, v0, v1

    .line 1029
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v3, v0, v1

    .line 1031
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 1012
    return-void
.end method

.method public run()V
    .registers 21

    .line 863
    move-object/from16 v10, p0

    sget-object v11, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 864
    .local v11, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    const/4 v12, 0x0

    .line 866
    .local v12, "status":I
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 867
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 866
    const/16 v1, 0xb1c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 869
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v2

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 870
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$200(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v9, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEphemeralOpToken:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v3, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/restore/FullRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V

    iput-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    .line 871
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v2, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    iget-object v3, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Lcom/android/server/backup/restore/FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    .line 873
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    .line 874
    .local v2, "eWriteEnd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v3, v0, v4

    .line 875
    .local v3, "tReadEnd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v5, v0, v1

    .line 877
    .local v5, "tWriteEnd":Landroid/os/ParcelFileDescriptor;
    const v6, 0x8000

    .line 878
    .local v6, "bufferSize":I
    new-array v7, v6, [B

    .line 879
    .local v7, "buffer":[B
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v8, v0

    .line 880
    .local v8, "engineOut":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    .line 883
    .local v9, "transportIn":Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/Thread;

    iget-object v13, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    const-string/jumbo v14, "unified-restore-engine"

    invoke-direct {v0, v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 885
    const-string v0, "PerformUnifiedRestoreTask$StreamFeederThread.run()"

    move-object v13, v0

    .line 887
    .local v13, "callerLogString":Ljava/lang/String;
    :try_start_78
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 888
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    :goto_82
    if-nez v12, :cond_dd

    .line 890
    invoke-interface {v0, v5}, Lcom/android/internal/backup/IBackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v16

    move/from16 v17, v16

    .line 891
    .local v17, "result":I
    move/from16 v15, v17

    if-lez v15, :cond_a5

    .line 897
    .end local v17    # "result":I
    .local v15, "result":I
    if-le v15, v6, :cond_94

    .line 898
    move v6, v15

    .line 899
    new-array v1, v6, [B

    .line 901
    .end local v7    # "buffer":[B
    .local v1, "buffer":[B
    move-object v7, v1

    .line 901
    .end local v1    # "buffer":[B
    .restart local v7    # "buffer":[B
    :cond_94
    move v1, v15

    .line 902
    .local v1, "toCopy":I
    :goto_95
    if-lez v1, :cond_a4

    .line 903
    invoke-virtual {v9, v7, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v16

    move/from16 v18, v16

    .line 904
    .local v18, "n":I
    move/from16 v14, v18

    invoke-virtual {v8, v7, v4, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 905
    .end local v18    # "n":I
    .local v14, "n":I
    sub-int/2addr v1, v14

    .line 909
    .end local v14    # "n":I
    goto :goto_95

    .line 910
    .end local v1    # "toCopy":I
    :cond_a4
    goto :goto_da

    :cond_a5
    const/4 v1, -0x1

    if-ne v15, v1, :cond_aa

    .line 916
    const/4 v12, 0x0

    .line 917
    goto :goto_dd

    .line 921
    :cond_aa
    const-string v1, "StreamFeederThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " streaming restore for "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 922
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 921
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    const/16 v1, 0xb0f

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_d8} :catch_23d
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_d8} :catch_181
    .catchall {:try_start_78 .. :try_end_d8} :catchall_17d

    .line 924
    move v1, v15

    .line 926
    .end local v12    # "status":I
    .end local v15    # "result":I
    .local v1, "status":I
    move v12, v1

    .line 887
    .end local v1    # "status":I
    .restart local v12    # "status":I
    :goto_da
    const/4 v1, 0x1

    const/4 v4, 0x0

    goto :goto_82

    .line 949
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_dd
    :goto_dd
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 950
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 951
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 957
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 961
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v1

    if-eqz v1, :cond_10c

    const/4 v1, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v1, 0x0

    :goto_10d
    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z
    invoke-static {v0, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 965
    if-nez v12, :cond_12b

    .line 967
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 971
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v1, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 974
    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v4

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B
    invoke-static {v1, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    goto :goto_172

    .line 979
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_12b
    :try_start_12b
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 980
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 981
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_138} :catch_139

    .line 987
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_156

    .line 982
    :catch_139
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StreamFeederThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport threw from abortFullRestore: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v12, -0x3e8

    .line 991
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_156
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 992
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 991
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    .line 995
    const/16 v1, -0x3e8

    if-ne v12, v1, :cond_16f

    .line 996
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 996
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_16e
    goto :goto_172

    .line 998
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_16f
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_16e

    .line 1001
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_172
    iget-object v1, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1002
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    .line 1003
    goto/16 :goto_2f5

    .line 949
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :catchall_17d
    move-exception v0

    move-object v1, v0

    goto/16 :goto_2f6

    .line 938
    :catch_181
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    :try_start_182
    const-string v1, "StreamFeederThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport failed during restore: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v1, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    const/16 v1, 0xb0f

    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1a4
    .catchall {:try_start_182 .. :try_end_1a4} :catchall_17d

    .line 944
    const/16 v1, -0x3e8

    .line 949
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "status":I
    .restart local v1    # "status":I
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 950
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v12, 0x0

    aget-object v0, v0, v12

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 951
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 957
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v12

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 961
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_1d5

    const/4 v4, 0x1

    goto :goto_1d6

    :cond_1d5
    const/4 v4, 0x0

    :goto_1d6
    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 965
    if-nez v1, :cond_1f6

    .line 967
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 971
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v11

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 974
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v11

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B
    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    .line 1001
    .end local v1    # "status":I
    .restart local v12    # "status":I
    :goto_1f3
    move v12, v1

    goto/16 :goto_172

    .line 979
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v12    # "status":I
    .restart local v1    # "status":I
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_1f6
    :try_start_1f6
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 980
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 981
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_203} :catch_204

    .line 987
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_221

    .line 982
    :catch_204
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "StreamFeederThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport threw from abortFullRestore: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v1, -0x3e8

    .line 991
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_221
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 992
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 991
    const/4 v12, 0x0

    invoke-virtual {v0, v4, v12}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    .line 995
    const/16 v4, -0x3e8

    if-ne v1, v4, :cond_23a

    .line 996
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 996
    .end local v1    # "status":I
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v12    # "status":I
    :goto_239
    goto :goto_1f3

    .line 998
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v12    # "status":I
    .restart local v1    # "status":I
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_23a
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_239

    .line 930
    .end local v1    # "status":I
    .restart local v12    # "status":I
    :catch_23d
    move-exception v0

    .line 934
    .local v0, "e":Ljava/io/IOException;
    :try_start_23e
    const-string v1, "StreamFeederThread"

    const-string v4, "Unable to route data for restore"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/16 v1, 0xb10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v14, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 936
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v14}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v4, v15

    const-string v14, "I/O error on pipes"

    const/4 v15, 0x1

    aput-object v14, v4, v15

    .line 935
    invoke-static {v1, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_25d
    .catchall {:try_start_23e .. :try_end_25d} :catchall_17d

    .line 937
    const/16 v1, -0x3eb

    .line 949
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "status":I
    .restart local v1    # "status":I
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v15

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 950
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 951
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v15

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 957
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 961
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v4

    if-eqz v4, :cond_28d

    const/4 v4, 0x1

    goto :goto_28e

    :cond_28d
    const/4 v4, 0x0

    :goto_28e
    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 965
    if-nez v1, :cond_2ad

    .line 967
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 971
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v11

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 974
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v11

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B
    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    goto/16 :goto_1f3

    .line 979
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_2ad
    :try_start_2ad
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 980
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 981
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_2ba
    .catch Ljava/lang/Exception; {:try_start_2ad .. :try_end_2ba} :catch_2bb

    .line 987
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_2d8

    .line 982
    :catch_2bb
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "StreamFeederThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Transport threw from abortFullRestore: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v1, -0x3e8

    .line 991
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d8
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 992
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 991
    const/4 v12, 0x0

    invoke-virtual {v0, v4, v12}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    .line 995
    const/16 v4, -0x3e8

    if-ne v1, v4, :cond_2f2

    .line 996
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 996
    .end local v1    # "status":I
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v12    # "status":I
    :goto_2f0
    goto/16 :goto_1f3

    .line 998
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .end local v12    # "status":I
    .restart local v1    # "status":I
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_2f2
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_2f0

    .line 1004
    .end local v1    # "status":I
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v12    # "status":I
    :goto_2f5
    return-void

    .line 949
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_2f6
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 950
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v14, 0x0

    aget-object v0, v0, v14

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 951
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mTransportPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 954
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngineThread:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;

    invoke-virtual {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$EngineThread;->waitForResult()I

    .line 957
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEnginePipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, v14

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 961
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v14, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v14

    if-eqz v14, :cond_324

    goto :goto_325

    :cond_324
    const/4 v4, 0x0

    :goto_325
    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z
    invoke-static {v0, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$402(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Z)Z

    .line 965
    if-eqz v12, :cond_372

    .line 979
    :try_start_32a
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 980
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$300(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 981
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->abortFullRestore()I
    :try_end_337
    .catch Ljava/lang/Exception; {:try_start_32a .. :try_end_337} :catch_338

    .line 987
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_356

    .line 982
    :catch_338
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "StreamFeederThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Transport threw from abortFullRestore: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v0, -0x3e8

    .line 991
    .end local v12    # "status":I
    .local v0, "status":I
    move v12, v0

    .line 991
    .end local v0    # "status":I
    .restart local v12    # "status":I
    :goto_356
    iget-object v0, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;
    invoke-static {v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$000(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Lcom/android/server/backup/BackupManagerService;

    move-result-object v0

    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 992
    # getter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    invoke-static {v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$100(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 991
    const/4 v14, 0x0

    invoke-virtual {v0, v4, v14}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    .line 995
    const/16 v4, -0x3e8

    if-ne v12, v4, :cond_36f

    .line 996
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 996
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .local v0, "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :goto_36e
    goto :goto_38a

    .line 998
    .end local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    :cond_36f
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    goto :goto_36e

    .line 967
    :cond_372
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 971
    .end local v11    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    .restart local v0    # "nextState":Lcom/android/server/backup/restore/UnifiedRestoreState;
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getAgent()Landroid/app/IBackupAgent;

    move-result-object v11

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;
    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$502(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;Landroid/app/IBackupAgent;)Landroid/app/IBackupAgent;

    .line 974
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v11, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->mEngine:Lcom/android/server/backup/restore/FullRestoreEngine;

    invoke-virtual {v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->getWidgetData()[B

    move-result-object v11

    # setter for: Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B
    invoke-static {v4, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->access$602(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;[B)[B

    .line 1001
    :goto_38a
    iget-object v4, v10, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->this$0:Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1002
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;->setRunning(Z)V

    throw v1
.end method
