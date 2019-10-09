.class public Lcom/android/server/backup/BackupManagerServiceInjector;
.super Ljava/lang/Object;
.source "BackupManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:BackupManagerServiceInjector"

.field private static sBinderDeathLinker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRestoredSize(JI)V
    .registers 7
    .param p0, "size"    # J
    .param p2, "fd"    # I

    .line 99
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 101
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 102
    invoke-interface {v0, p0, p1}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 106
    :cond_11
    goto :goto_1a

    .line 104
    :catch_12
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "addRestoredSize failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public static doFullBackup(Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;II)V
    .registers 13
    .param p0, "agent"    # Landroid/app/IBackupAgent;
    .param p1, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "quotaBytes"    # J
    .param p4, "token"    # I
    .param p5, "backupManagerBinder"    # Landroid/app/backup/IBackupManager;
    .param p6, "transportFlags"    # I
    .param p7, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 392
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    invoke-interface {v0, p7}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->shouldSkipData()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_59

    .line 395
    :cond_15
    const-string v1, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v2, "skip app data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_1e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v2

    .line 402
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 403
    .local v2, "buf":[B
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2e} :catch_3a
    .catchall {:try_start_1e .. :try_end_2e} :catchall_38

    .line 407
    .end local v2    # "buf":[B
    nop

    .line 409
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    .line 412
    :goto_32
    goto :goto_48

    .line 410
    :catch_33
    move-exception v2

    .line 411
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 411
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_32

    .line 407
    :catchall_38
    move-exception v2

    goto :goto_4e

    .line 404
    :catch_3a
    move-exception v2

    .line 405
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_3b
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "Unable to finalize backup stream!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    .line 407
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_48

    .line 409
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_33

    goto :goto_32

    .line 415
    :cond_48
    :goto_48
    const-wide/16 v2, 0x0

    invoke-interface {p5, p4, v2, v3}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V

    .line 415
    .end local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_5c

    .line 407
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :goto_4e
    if-eqz v1, :cond_58

    .line 409
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 412
    goto :goto_58

    .line 410
    :catch_54
    move-exception v3

    .line 411
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 412
    .end local v3    # "e":Ljava/io/IOException;
    :cond_58
    :goto_58
    throw v2

    .line 393
    .end local v1    # "out":Ljava/io/FileOutputStream;
    :cond_59
    :goto_59
    invoke-interface/range {p0 .. p6}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V

    .line 417
    :goto_5c
    return-void
.end method

.method public static errorOccur(II)V
    .registers 6
    .param p0, "errCode"    # I
    .param p1, "fd"    # I

    .line 54
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 56
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 57
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 61
    :cond_11
    goto :goto_1a

    .line 59
    :catch_12
    move-exception v1

    .line 60
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "errorOccur failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method public static errorOccur(ILjava/io/InputStream;)V
    .registers 4
    .param p0, "errCode"    # I
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 65
    instance-of v0, p1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_17

    .line 66
    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    .line 68
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    .line 69
    .local v1, "fd":I
    invoke-static {p0, v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_13

    .line 72
    .end local v1    # "fd":I
    goto :goto_17

    .line 70
    :catch_13
    move-exception v1

    .line 71
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_17
    :goto_17
    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 256
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 257
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 259
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 260
    const/16 v2, 0x400

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_20

    return-object v2

    .line 264
    :cond_1f
    goto :goto_28

    .line 262
    :catch_20
    move-exception v2

    .line 263
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "getApplicationInfo failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_28
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 269
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 270
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 272
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 273
    const v2, 0x8000400

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1f} :catch_21

    return-object v2

    .line 277
    :cond_20
    goto :goto_29

    .line 275
    :catch_21
    move-exception v2

    .line 276
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "getPackageInfo failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_29
    const/high16 v2, 0x8000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2
.end method

.method public static isForceAllowBackup(I)Z
    .registers 5
    .param p0, "fd"    # I

    .line 203
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 205
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_11

    if-eqz v1, :cond_10

    .line 206
    const/4 v1, 0x1

    return v1

    .line 210
    :cond_10
    goto :goto_1a

    .line 208
    :catch_11
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "isForceAllowBackup error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1a
    const/4 v1, 0x0

    return v1
.end method

.method public static isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z
    .registers 3
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "fd"    # I

    .line 215
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    .line 218
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_d
    :goto_d
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0

    return v0
.end method

.method public static isForceAllowBackup(Landroid/content/pm/PackageInfo;Ljava/io/InputStream;)Z
    .registers 6
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 235
    instance-of v0, p1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1d

    .line 236
    move-object v0, p1

    check-cast v0, Ljava/io/FileInputStream;

    .line 238
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    .line 239
    .local v1, "fd":I
    invoke-static {p0, v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_14

    return v2

    .line 240
    .end local v1    # "fd":I
    :catch_14
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "isForceAllowBackup error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public static isForceAllowBackup(Ljava/io/InputStream;)Z
    .registers 5
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 222
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1d

    .line 223
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    .line 225
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    .line 226
    .local v1, "fd":I
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_14

    return v2

    .line 227
    .end local v1    # "fd":I
    :catch_14
    move-exception v1

    .line 228
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "isForceAllowBackup error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public static isForceAllowSysAppBackup(Landroid/content/pm/PackageInfo;I)Z
    .registers 3
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "fd"    # I

    .line 248
    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isForceAllowSysAppBackup(Landroid/content/pm/PackageInfo;Ljava/io/InputStream;)Z
    .registers 3
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 252
    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isNeedBeKilled(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "fd"    # I

    .line 282
    const/4 v0, 0x1

    .line 283
    .local v0, "is":Z
    const-string v1, "MiuiBackup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lmiui/app/backup/IBackupManager;

    .line 285
    .local v1, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_9
    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 286
    invoke-interface {v1, p0}, Lmiui/app/backup/IBackupManager;->isNeedBeKilled(Ljava/lang/String;)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_15

    move v0, v2

    .line 290
    :cond_14
    goto :goto_1e

    .line 288
    :catch_15
    move-exception v2

    .line 289
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1e
    return v0
.end method

.method public static linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V
    .registers 8
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;
    .param p1, "fd"    # I
    .param p2, "outPipe"    # Landroid/os/ParcelFileDescriptor;

    .line 182
    if-eqz p0, :cond_1e

    .line 183
    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 184
    .local v0, "agentBinder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;-><init>(Landroid/os/IBinder;ILandroid/os/ParcelFileDescriptor;)V

    .line 185
    .local v1, "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    sget-object v2, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/4 v2, 0x0

    :try_start_11
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 190
    goto :goto_1e

    .line 188
    :catch_15
    move-exception v2

    .line 189
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "linkToDeath failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v0    # "agentBinder":Landroid/os/IBinder;
    .end local v1    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static needUpdateToken(Landroid/app/IBackupAgent;I)Z
    .registers 5
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;
    .param p1, "token"    # I

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "needUpdateToken":Z
    if-eqz p0, :cond_1c

    .line 172
    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    .line 173
    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    .line 174
    .local v1, "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    if-eqz v1, :cond_1c

    .line 175
    invoke-virtual {v1, p1}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->setToken(I)V

    .line 178
    .end local v1    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    :cond_1c
    return v0
.end method

.method public static onApkInstalled(I)V
    .registers 5
    .param p0, "fd"    # I

    .line 110
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 112
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 113
    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->onApkInstalled()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 117
    :cond_11
    goto :goto_1b

    .line 115
    :catch_12
    move-exception v1

    .line 116
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "onApkInstalled failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public static prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupRestoreTask;II)V
    .registers 19
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p5, "operationType"    # I
    .param p6, "fd"    # I

    .line 377
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmiui/app/backup/IBackupManager;

    .line 378
    .local v1, "bm":Lmiui/app/backup/IBackupManager;
    const/4 v0, 0x1

    move v2, v0

    .line 380
    .local v2, "backupTimeoutScale":I
    move/from16 v3, p6

    :try_start_d
    invoke-interface {v1, v3}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 381
    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getBackupTimeoutScale()I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_19

    .line 385
    .end local v2    # "backupTimeoutScale":I
    .local v0, "backupTimeoutScale":I
    move v2, v0

    .line 385
    .end local v0    # "backupTimeoutScale":I
    .restart local v2    # "backupTimeoutScale":I
    :cond_18
    goto :goto_22

    .line 383
    :catch_19
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v5, "prepareOperationTimeout failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_22
    const-string v0, "Backup:BackupManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareOperationTimeout backupTimeoutScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    int-to-long v4, v2

    mul-long v8, v4, p2

    move-object v6, p0

    move v7, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 388
    return-void
.end method

.method public static readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .registers 6
    .param p0, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "fd"    # I

    .line 88
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 90
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 91
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 95
    :cond_11
    goto :goto_1b

    .line 93
    :catch_12
    move-exception v1

    .line 94
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "readMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public static restoreFileEnd(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;ILandroid/os/Handler;I)V
    .registers 22
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "backupManagerBinder"    # Landroid/app/backup/IBackupManager;
    .param p3, "fd"    # I
    .param p4, "backupHandler"    # Landroid/os/Handler;
    .param p5, "restoreTimeoutMsg"    # I

    move-object/from16 v14, p1

    .line 296
    if-eqz v14, :cond_58

    .line 297
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    move-object v15, v0

    .line 299
    .local v15, "bm":Lmiui/app/backup/IBackupManager;
    move/from16 v13, p3

    :try_start_f
    invoke-interface {v15, v13}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    move v12, v0

    .line 301
    .local v12, "token":I
    invoke-virtual/range {p4 .. p5}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v12

    move v6, v13

    invoke-static/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerServiceInjector;->prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupRestoreTask;II)V

    .line 303
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v1, v14

    move v0, v12

    .line 303
    .end local v12    # "token":I
    .local v0, "token":I
    move-object/from16 v13, p2

    invoke-interface/range {v1 .. v13}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    .line 304
    invoke-static {v14, v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3f} :catch_4c

    if-eqz v1, :cond_49

    .line 305
    move-object/from16 v1, p0

    :try_start_43
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    .line 305
    .end local v0    # "token":I
    goto :goto_4b

    .line 308
    :catch_47
    move-exception v0

    goto :goto_4f

    .line 310
    :cond_49
    move-object/from16 v1, p0

    :goto_4b
    goto :goto_5a

    .line 308
    :catch_4c
    move-exception v0

    move-object/from16 v1, p0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4f
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "restoreFileEnd failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v15    # "bm":Lmiui/app/backup/IBackupManager;
    goto :goto_5a

    .line 312
    :cond_58
    move-object/from16 v1, p0

    :goto_5a
    return-void
.end method

.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V
    .registers 13
    .param p0, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "outFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 317
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    const/4 v1, 0x0

    .line 318
    .local v1, "raw":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 320
    .local v2, "in":Ljava/io/DataInputStream;
    :try_start_a
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 321
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    .line 322
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 324
    const v3, 0x8000

    new-array v3, v3, [B

    .line 326
    .local v3, "buffer":[B
    :cond_25
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    move v5, v4

    .line 326
    .local v5, "chunkTotal":I
    if-lez v4, :cond_42

    .line 327
    :goto_2c
    if-lez v5, :cond_25

    .line 328
    array-length v4, v3

    if-le v5, v4, :cond_33

    array-length v4, v3

    goto :goto_34

    :cond_33
    move v4, v5

    .line 329
    .local v4, "toRead":I
    :goto_34
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    .line 330
    .local v7, "nRead":I
    invoke-virtual {p1, v3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 331
    int-to-long v8, v7

    invoke-interface {v0, v8, v9}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V

    .line 332
    sub-int/2addr v5, v7

    .line 333
    .end local v4    # "toRead":I
    .end local v7    # "nRead":I
    goto :goto_2c

    .line 335
    .end local v3    # "buffer":[B
    .end local v5    # "chunkTotal":I
    :cond_42
    goto :goto_46

    .line 336
    :cond_43
    invoke-static {p0, p1}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_46} :catch_62
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_46} :catch_53
    .catchall {:try_start_a .. :try_end_46} :catchall_51

    .line 344
    :goto_46
    if-eqz v1, :cond_4b

    .line 345
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 347
    :cond_4b
    if-eqz v2, :cond_73

    .line 348
    :goto_4d
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    goto :goto_73

    .line 344
    :catchall_51
    move-exception v3

    goto :goto_74

    .line 340
    :catch_53
    move-exception v3

    .line 341
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_54
    const-string v4, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v5, "routeSocketDataToOutput failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 338
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_62
    move-exception v3

    .line 339
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v5, "routeSocketDataToOutput failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_51

    .line 344
    .end local v3    # "e":Landroid/os/RemoteException;
    if-eqz v1, :cond_70

    .line 345
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 347
    :cond_70
    if-eqz v2, :cond_73

    goto :goto_4d

    .line 351
    :cond_73
    :goto_73
    return-void

    .line 344
    :goto_74
    if-eqz v1, :cond_79

    .line 345
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 347
    :cond_79
    if-eqz v2, :cond_7e

    .line 348
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :cond_7e
    throw v3
.end method

.method public static setOutputFileDescriptor(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p0, "engine"    # Lcom/android/server/backup/fullbackup/FullBackupEngine;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 354
    if-eqz p0, :cond_4

    .line 355
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 357
    :cond_4
    return-void
.end method

.method public static startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z
    .registers 8
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "fd"    # I

    .line 39
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 41
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    invoke-interface {v0, p3}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 42
    invoke-interface {v0, p1, p2}, Lmiui/app/backup/IBackupManager;->startConfirmationUi(ILjava/lang/String;)V

    goto :goto_15

    .line 44
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_18

    .line 49
    :goto_15
    nop

    .line 50
    const/4 v1, 0x1

    return v1

    .line 46
    :catch_18
    move-exception v1

    .line 47
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "confirmation failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const/4 v2, 0x0

    return v2
.end method

.method public static tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z
    .registers 8
    .param p0, "activityManager"    # Landroid/app/IActivityManager;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "fd"    # I

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "handle":Z
    const-string v1, "MiuiBackup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lmiui/app/backup/IBackupManager;

    .line 363
    .local v1, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_9
    invoke-interface {v1, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 364
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/android/server/backup/BackupManagerServiceInjector;->isNeedBeKilled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 365
    const/4 v0, 0x1

    .line 366
    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1c

    .line 371
    :cond_1b
    goto :goto_25

    .line 369
    :catch_1c
    move-exception v2

    .line 370
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_25
    return v0
.end method

.method public static unlinkToDeath(Landroid/app/IBackupAgent;)V
    .registers 4
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;

    .line 195
    if-eqz p0, :cond_17

    .line 196
    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 197
    .local v0, "agentBinder":Landroid/os/IBinder;
    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 198
    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v0    # "agentBinder":Landroid/os/IBinder;
    :cond_17
    return-void
.end method

.method public static waitingBeforeGetAgent()V
    .registers 2

    .line 424
    const-wide/16 v0, 0xc8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 427
    goto :goto_a

    .line 425
    :catch_6
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 428
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_a
    return-void
.end method

.method public static writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .registers 6
    .param p0, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "fd"    # I

    .line 77
    const-string v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .line 79
    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_8
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 80
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 84
    :cond_11
    goto :goto_1b

    .line 82
    :catch_12
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "writeMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method
