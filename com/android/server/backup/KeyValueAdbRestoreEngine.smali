.class public Lcom/android/server/backup/KeyValueAdbRestoreEngine;
.super Ljava/lang/Object;
.source "KeyValueAdbRestoreEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyValueAdbRestoreEngine"


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field private final mDataDir:Ljava/io/File;

.field mInFD:Landroid/os/ParcelFileDescriptor;

.field mInfo:Lcom/android/server/backup/FileMetadata;

.field mRestoreTask:Lcom/android/server/backup/restore/PerformAdbRestoreTask;

.field mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V
    .registers 7
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerServiceInterface;
    .param p2, "dataDir"    # Ljava/io/File;
    .param p3, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p4, "inFD"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "agent"    # Landroid/app/IBackupAgent;
    .param p6, "token"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 55
    iput-object p2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    .line 56
    iput-object p3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    .line 57
    iput-object p4, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    .line 58
    iput-object p5, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 59
    iput p6, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    .line 60
    return-void
.end method

.method private copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .registers 9
    .param p1, "in"    # Landroid/app/backup/BackupDataInput;
    .param p2, "out"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_5
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 131
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    .line 133
    .local v2, "size":I
    if-gez v2, :cond_19

    .line 134
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 135
    goto :goto_5

    .line 137
    :cond_19
    new-array v3, v2, [B

    .line 138
    .local v3, "value":[B
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 139
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "size":I
    .end local v3    # "value":[B
    goto :goto_5

    .line 141
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 143
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 145
    .local v4, "value":[B
    array-length v5, v4

    invoke-virtual {p2, v3, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 146
    array-length v5, v4

    invoke-virtual {p2, v4, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 147
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":[B
    goto :goto_33

    .line 148
    :cond_4e
    return-void
.end method

.method private invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    .registers 14
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p3, "restoreData"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p2, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 88
    .local v0, "pkg":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .local v1, "newStateName":Ljava/io/File;
    const/high16 v2, 0x10000000

    .line 91
    :try_start_1c
    invoke-static {p3, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 92
    .local v4, "backupData":Landroid/os/ParcelFileDescriptor;
    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 99
    .local v7, "newState":Landroid/os/ParcelFileDescriptor;
    iget-wide v5, p2, Lcom/android/server/backup/FileMetadata;->version:J

    iget v8, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mToken:I

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 100
    invoke-interface {v2}, Lcom/android/server/backup/BackupManagerServiceInterface;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v9

    .line 99
    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_34} :catch_4d
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_35

    .end local v4    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "newState":Landroid/os/ParcelFileDescriptor;
    goto :goto_64

    .line 103
    :catch_35
    move-exception v2

    .line 104
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "KeyValueAdbRestoreEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception calling doRestore on agent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_65

    .line 101
    :catch_4d
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "KeyValueAdbRestoreEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception opening file. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v2    # "e":Ljava/io/IOException;
    :goto_64
    nop

    .line 106
    :goto_65
    return-void
.end method

.method private prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 16
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p2, "inFD"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 75
    .local v0, "pkg":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".restore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v1, "restoreDataName":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".sorted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v2, "sortedDataName":Ljava/io/File;
    iget-wide v5, p1, Lcom/android/server/backup/FileMetadata;->size:J

    iget v7, p1, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v8, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object v4, p2

    move-object v12, v1

    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 81
    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->sortKeyValueData(Ljava/io/File;Ljava/io/File;)V

    .line 82
    return-object v2
.end method

.method private sortKeyValueData(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .param p1, "restoreData"    # Ljava/io/File;
    .param p2, "sortedData"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "inputStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 112
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 113
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 114
    new-instance v2, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 115
    .local v2, "reader":Landroid/app/backup/BackupDataInput;
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 116
    .local v3, "writer":Landroid/app/backup/BackupDataOutput;
    invoke-direct {p0, v2, v3}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->copyKeysInLexicalOrder(Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_2c

    .line 118
    .end local v2    # "reader":Landroid/app/backup/BackupDataInput;
    .end local v3    # "writer":Landroid/app/backup/BackupDataOutput;
    nop

    .line 119
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 121
    nop

    .line 122
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 125
    return-void

    .line 118
    :catchall_2c
    move-exception v2

    if-eqz v0, :cond_32

    .line 119
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 121
    :cond_32
    if-eqz v1, :cond_37

    .line 122
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_37
    throw v2
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInFD:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->prepareRestoreData(Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, "restoreData":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->mInfo:Lcom/android/server/backup/FileMetadata;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;->invokeAgentForAdbRestore(Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    .line 70
    .end local v0    # "restoreData":Ljava/io/File;
    goto :goto_14

    .line 68
    :catch_10
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :goto_14
    return-void
.end method
