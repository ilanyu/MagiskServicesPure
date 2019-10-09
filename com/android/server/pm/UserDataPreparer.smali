.class Lcom/android/server/pm/UserDataPreparer;
.super Ljava/lang/Object;
.source "UserDataPreparer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserDataPreparer"

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mOnlyCore:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 5
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "onlyCore"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    .line 61
    iput-object p3, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    .line 62
    iput-boolean p4, p0, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 64
    return-void
.end method

.method static getSerialNumber(Ljava/io/File;)I
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user.serial"

    invoke-static {v0, v1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 325
    .local v0, "buf":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_10} :catch_2d

    .line 327
    .local v1, "serial":Ljava/lang/String;
    :try_start_10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_14} :catch_2d

    return v2

    .line 328
    :catch_15
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_16
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad serial number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_2d} :catch_2d

    .line 331
    .end local v0    # "buf":[B
    .end local v1    # "serial":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2d
    move-exception v0

    .line 332
    .local v0, "e":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-ne v1, v2, :cond_36

    .line 333
    const/4 v1, -0x1

    return v1

    .line 335
    :cond_36
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private prepareUserDataLI(Ljava/lang/String;IIIZ)V
    .registers 16
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "userSerial"    # I
    .param p4, "flags"    # I
    .param p5, "allowRecover"    # Z

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 85
    .local v0, "storage":Landroid/os/storage/StorageManager;
    :try_start_a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/storage/StorageManager;->prepareUserStorage(Ljava/lang/String;III)V

    .line 87
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    if-nez v1, :cond_2b

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 89
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 93
    :cond_2b
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_49

    iget-boolean v1, p0, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    if-nez v1, :cond_49

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 95
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 96
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V

    .line 100
    :cond_49
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->createUserData(Ljava/lang/String;III)V

    .line 103
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_8c

    if-nez p2, :cond_8c

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.user."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".ce_available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "propertyName":Ljava/lang/String;
    const-string v2, "UserDataPreparer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_8c} :catch_8d

    .line 119
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_8c
    goto :goto_c2

    .line 109
    :catch_8d
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " on volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because we failed to prepare: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 114
    if-eqz p5, :cond_c2

    .line 116
    or-int/lit8 v8, p4, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_c2
    :goto_c2
    return-void
.end method

.method private static setSerialNumber(Ljava/io/File;I)V
    .registers 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 310
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user.serial"

    sget v3, Landroid/system/OsConstants;->XATTR_CREATE:I

    invoke-static {v1, v2, v0, v3}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_16} :catch_18

    .line 313
    .end local v0    # "buf":[B
    nop

    .line 314
    return-void

    .line 311
    :catch_18
    move-exception v0

    .line 312
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method destroyUserData(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 126
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 128
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 129
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "volumeUuid":Ljava/lang/String;
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 131
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v4    # "volumeUuid":Ljava/lang/String;
    goto :goto_15

    .line 132
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_29
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method destroyUserDataLI(Ljava/lang/String;II)V
    .registers 9
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 139
    .local v0, "storage":Landroid/os/storage/StorageManager;
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/Installer;->destroyUserData(Ljava/lang/String;II)V

    .line 142
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 143
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_29

    .line 144
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 147
    :cond_29
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_34

    .line 148
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserDataPreparer;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 153
    :cond_34
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/storage/StorageManager;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_38

    .line 158
    goto :goto_5e

    .line 155
    :catch_38
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to destroy user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " on volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void
.end method

.method enforceSerialNumber(Ljava/io/File;I)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/android/server/pm/UserDataPreparer;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 281
    const-string v0, "UserDataPreparer"

    const-string v1, "Device is emulating FBE; assuming current serial number is valid"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 285
    :cond_e
    invoke-static {p1}, Lcom/android/server/pm/UserDataPreparer;->getSerialNumber(Ljava/io/File;)I

    move-result v0

    .line 286
    .local v0, "foundSerial":I
    const-string v1, "UserDataPreparer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6a

    .line 289
    const-string v1, "UserDataPreparer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serial number missing on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; assuming current is valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_4e
    invoke-static {p1, p2}, Lcom/android/server/pm/UserDataPreparer;->setSerialNumber(Ljava/io/File;I)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 294
    :goto_51
    goto :goto_6c

    .line 292
    :catch_52
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UserDataPreparer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set serial number on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_51

    .line 296
    :cond_6a
    if-ne v0, p2, :cond_6d

    .line 300
    :goto_6c
    return-void

    .line 297
    :cond_6d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found serial number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t match expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getDataMiscCeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 230
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataMiscDeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 240
    invoke-static {p1}, Landroid/os/Environment;->getDataMiscDeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSystemCeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 235
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSystemDeDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 250
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 260
    invoke-static {p1, p2}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getUserSystemDirectory(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 245
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected isFileEncryptedEmulatedOnly()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    return v0
.end method

.method prepareUserData(III)V
    .registers 14
    .param p1, "userId"    # I
    .param p2, "userSerial"    # I
    .param p3, "flags"    # I

    .line 70
    iget-object v0, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserDataPreparer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 72
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 73
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "volumeUuid":Ljava/lang/String;
    const/4 v9, 0x1

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/UserDataPreparer;->prepareUserDataLI(Ljava/lang/String;IIIZ)V

    .line 75
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "volumeUuid":Ljava/lang/String;
    goto :goto_15

    .line 76
    .end local v1    # "storage":Landroid/os/storage/StorageManager;
    :cond_2e
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method reconcileUsers(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p2, "validUsersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    nop

    .line 169
    invoke-static {p1}, Landroid/os/Environment;->getDataUserDeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 170
    nop

    .line 171
    invoke-static {p1}, Landroid/os/Environment;->getDataUserCeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 170
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 172
    nop

    .line 173
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 174
    nop

    .line 175
    invoke-static {}, Landroid/os/Environment;->getDataSystemCeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 176
    nop

    .line 177
    invoke-static {}, Landroid/os/Environment;->getDataMiscCeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method reconcileUsers(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p2, "validUsersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local p3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    .local v0, "userCount":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 185
    .local v1, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 186
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 187
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 189
    .end local v2    # "i":I
    :cond_1a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 190
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_31

    .line 191
    goto :goto_1e

    .line 197
    :cond_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 198
    .local v4, "userId":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_3f} :catch_97

    .line 202
    .local v5, "info":Landroid/content/pm/UserInfo;
    nop

    .line 201
    nop

    .line 204
    const/4 v6, 0x0

    .line 205
    .local v6, "destroyUser":Z
    const/4 v7, 0x5

    if-nez v5, :cond_60

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Destroying user directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " because no matching user was found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 208
    const/4 v6, 0x1

    goto :goto_88

    .line 209
    :cond_60
    iget-boolean v8, p0, Lcom/android/server/pm/UserDataPreparer;->mOnlyCore:Z

    if-nez v8, :cond_88

    .line 211
    :try_start_64
    iget v8, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p0, v3, v8}, Lcom/android/server/pm/UserDataPreparer;->enforceSerialNumber(Ljava/io/File;I)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_69} :catch_6a

    .line 216
    goto :goto_88

    .line 212
    :catch_6a
    move-exception v8

    .line 213
    .local v8, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Destroying user directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because we failed to enforce serial number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 215
    const/4 v6, 0x1

    .line 219
    .end local v8    # "e":Ljava/io/IOException;
    :cond_88
    :goto_88
    if-eqz v6, :cond_96

    .line 220
    iget-object v7, p0, Lcom/android/server/pm/UserDataPreparer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 221
    const/4 v8, 0x3

    :try_start_8e
    invoke-virtual {p0, p1, v4, v8}, Lcom/android/server/pm/UserDataPreparer;->destroyUserDataLI(Ljava/lang/String;II)V

    .line 223
    monitor-exit v7

    goto :goto_96

    :catchall_93
    move-exception v2

    monitor-exit v7
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_93

    throw v2

    .line 225
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "userId":I
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "destroyUser":Z
    :cond_96
    :goto_96
    goto :goto_1e

    .line 199
    .restart local v3    # "file":Ljava/io/File;
    :catch_97
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "UserDataPreparer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid user directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    goto/16 :goto_1e

    .line 226
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_b0
    return-void
.end method
