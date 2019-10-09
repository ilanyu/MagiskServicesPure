.class Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
.super Ljava/lang/Object;
.source "BackupManagerServiceInjector.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeathLinker"
.end annotation


# instance fields
.field private mAgentBinder:Landroid/os/IBinder;

.field private mCallerFd:I

.field private mOutPipe:Landroid/os/ParcelFileDescriptor;

.field private mToken:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;ILandroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "agentBinder"    # Landroid/os/IBinder;
    .param p2, "fd"    # I
    .param p3, "outPipe"    # Landroid/os/ParcelFileDescriptor;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    .line 129
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mAgentBinder:Landroid/os/IBinder;

    .line 130
    iput p2, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    .line 131
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;

    .line 132
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    .line 151
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 153
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    iget v1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    invoke-interface {v0, v1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 154
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_2a

    if-eqz v1, :cond_29

    .line 156
    :try_start_14
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mOutPipe:Landroid/os/ParcelFileDescriptor;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_20} :catch_2a

    .line 160
    goto :goto_29

    .line 158
    :catch_21
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    :try_start_22
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    :cond_29
    :goto_29
    goto :goto_32

    .line 163
    :catch_2a
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "errorOccur failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 140
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->tearDownPipes()V

    .line 141
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .line 143
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    :try_start_b
    iget v1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 146
    goto :goto_1b

    .line 144
    :catch_13
    move-exception v1

    .line 145
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "binderDied failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mCallerFd:I

    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V

    .line 148
    return-void
.end method

.method public setToken(I)V
    .registers 2
    .param p1, "token"    # I

    .line 135
    iput p1, p0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->mToken:I

    .line 136
    return-void
.end method
