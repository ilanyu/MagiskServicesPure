.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field mCompress:Z

.field private final mCurrentOpToken:I

.field mCurrentPassword:Ljava/lang/String;

.field mCurrentTarget:Landroid/content/pm/PackageInfo;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field mKeyValue:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 31
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "doKeyValue"    # Z
    .param p14, "packages"    # [Ljava/lang/String;
    .param p15, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    .line 95
    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 96
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iput v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 98
    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 101
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 102
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 103
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 104
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 105
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 106
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 107
    if-nez p14, :cond_3c

    .line 108
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_45

    .line 109
    :cond_3c
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_45
    iput-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 110
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 115
    if-eqz v2, :cond_57

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_54

    goto :goto_57

    .line 118
    :cond_54
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_59

    .line 116
    :cond_57
    :goto_57
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 123
    :goto_59
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 124
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 125
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 20
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 149
    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 150
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v2

    .line 151
    .local v2, "newUserSalt":[B
    const-string v4, "PBKDF2WithHmacSHA1"

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 152
    const/16 v6, 0x2710

    invoke-static {v4, v5, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 157
    .local v4, "userKey":Ljavax/crypto/SecretKey;
    const/16 v5, 0x20

    new-array v5, v5, [B

    .line 158
    .local v5, "masterPw":[B
    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 159
    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 160
    invoke-virtual {v7, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v3

    .line 163
    .local v3, "checksumSalt":[B
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 164
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 165
    .local v8, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 166
    new-instance v10, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v11, p2

    invoke-direct {v10, v11, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 169
    .local v10, "finalOutput":Ljava/io/OutputStream;
    const-string v12, "AES-256"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    const-string v13, "AES/CBC/PKCS5Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    .line 183
    .local v13, "mkC":Ljavax/crypto/Cipher;
    invoke-virtual {v13, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 185
    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    .line 186
    .local v9, "IV":[B
    invoke-static {v9}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    .line 200
    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 201
    .local v14, "mk":[B
    const-string v15, "PBKDF2WithHmacSHA1"

    .line 203
    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    .line 202
    invoke-static {v15, v12, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v6

    .line 206
    .local v6, "checksum":[B
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    array-length v15, v9

    array-length v0, v14

    add-int/2addr v15, v0

    array-length v0, v6

    add-int/2addr v15, v0

    add-int/lit8 v15, v15, 0x3

    invoke-direct {v12, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v12

    .line 208
    .local v0, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    .local v12, "mkOut":Ljava/io/DataOutputStream;
    array-length v15, v9

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 210
    invoke-virtual {v12, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 211
    array-length v15, v14

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 212
    invoke-virtual {v12, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 213
    array-length v15, v6

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 214
    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 215
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 216
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 217
    .local v15, "encryptedMk":[B
    move-object/from16 v16, v0

    invoke-static {v15}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "blob":Ljava/io/ByteArrayOutputStream;
    .local v16, "blob":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object v10
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 226
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 227
    .local v0, "eof":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 230
    .end local v0    # "eof":[B
    goto :goto_10

    .line 228
    :catch_8
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 135
    :try_start_16
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 136
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    .line 135
    invoke-static {v2, v1, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 138
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_29} :catch_2a

    .line 141
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_46

    .line 139
    :catch_2a
    move-exception v2

    .line 140
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_46
    :goto_46
    goto :goto_4

    .line 144
    :cond_47
    return-void
.end method

.method public execute()V
    .registers 1

    .line 506
    return-void
.end method

.method public handleCancel(Z)V
    .registers 6
    .param p1, "cancelAll"    # Z

    .line 515
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 517
    .local v0, "target":Landroid/content/pm/PackageInfo;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adb backup cancel of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    if-eqz v0, :cond_23

    .line 520
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 522
    :cond_23
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 523
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 511
    return-void
.end method

.method public run()V
    .registers 37

    .line 235
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    move-object v13, v0

    .line 236
    .local v13, "includeKeyValue":Ljava/lang/String;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v14, v0

    .line 239
    .local v14, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object v15, v0

    .line 241
    .local v15, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    .line 244
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 247
    .local v11, "pm":Landroid/content/pm/PackageManager;
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_6d

    .line 248
    const/high16 v0, 0x8000000

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move v2, v1

    .line 250
    .local v2, "i":I
    :goto_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 251
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 253
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-boolean v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-eq v4, v10, :cond_65

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v10

    if-nez v4, :cond_6a

    .line 255
    :cond_65
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 262
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "i":I
    :cond_6d
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v0, :cond_7b

    .line 264
    nop

    .line 265
    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_7b

    .line 277
    invoke-virtual {v12, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 284
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7b
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_84

    .line 285
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 292
    :cond_84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 293
    .local v8, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :goto_92
    move-object v9, v0

    .line 294
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_12c

    .line 295
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 299
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 300
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 299
    invoke-static {v3, v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_bd

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 301
    invoke-static {v3}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_f3

    :cond_bd
    iget-object v3, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 302
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 303
    iget-object v3, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V

    .line 305
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 307
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not eligible for backup, removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_128

    .line 312
    :cond_f3
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_128

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 313
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v2

    if-nez v2, :cond_128

    .line 315
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 317
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is key-value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_128
    :goto_128
    nop

    .line 293
    move-object v0, v9

    goto/16 :goto_92

    .line 325
    :cond_12c
    new-instance v0, Ljava/util/ArrayList;

    .line 326
    invoke-virtual {v14}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 327
    .local v7, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v0

    .line 328
    .local v6, "ofstream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 330
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v0, 0x0

    move-object v4, v0

    .line 332
    .local v4, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_145
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_145 .. :try_end_147} :catch_7c6
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_147} :catch_776
    .catchall {:try_start_145 .. :try_end_147} :catchall_768

    if-eqz v0, :cond_17b

    :try_start_149
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_149 .. :try_end_14f} :catch_16e
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14f} :catch_161
    .catchall {:try_start_149 .. :try_end_14f} :catchall_153

    if-lez v0, :cond_17b

    move v0, v10

    goto :goto_17c

    .line 480
    :catchall_153
    move-exception v0

    move-object v2, v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v6, v10

    move-object/from16 v28, v11

    goto/16 :goto_82f

    .line 477
    :catch_161
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v6, v10

    move-object/from16 v28, v11

    goto/16 :goto_781

    .line 475
    :catch_16e
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v6, v10

    move-object/from16 v28, v11

    goto/16 :goto_7d1

    .line 332
    :cond_17b
    move v0, v1

    :goto_17c
    move/from16 v16, v0

    .line 337
    .local v16, "encrypting":Z
    :try_start_17e
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0
    :try_end_188
    .catch Landroid/os/RemoteException; {:try_start_17e .. :try_end_188} :catch_7c6
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_188} :catch_776
    .catchall {:try_start_17e .. :try_end_188} :catchall_768

    if-nez v0, :cond_1ef

    :try_start_18a
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 338
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1ef

    if-nez v16, :cond_1ef

    .line 340
    const-string v0, "BackupManagerService"

    const-string v1, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_19b} :catch_16e
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_19b} :catch_161
    .catchall {:try_start_18a .. :try_end_19b} :catchall_153

    .line 481
    if-eqz v3, :cond_1a6

    .line 482
    :try_start_19d
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_1a6

    .line 486
    :catch_1a4
    move-exception v0

    goto :goto_1ac

    .line 485
    :cond_1a6
    :goto_1a6
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1ab} :catch_1a4

    .line 488
    goto :goto_1c7

    .line 486
    :goto_1ac
    nop

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1c7
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 490
    :try_start_1ca
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v1
    :try_end_1d5
    .catchall {:try_start_1ca .. :try_end_1d5} :catchall_1ec

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 494
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 496
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 341
    return-void

    .line 492
    :catchall_1ec
    move-exception v0

    :try_start_1ed
    monitor-exit v1
    :try_end_1ee
    .catchall {:try_start_1ed .. :try_end_1ee} :catchall_1ec

    throw v0

    .line 344
    :cond_1ef
    move-object v5, v6

    .line 346
    .local v5, "finalOutput":Ljava/io/OutputStream;
    :try_start_1f0
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V

    .line 350
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0
    :try_end_203
    .catch Landroid/os/RemoteException; {:try_start_1f0 .. :try_end_203} :catch_7c6
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_203} :catch_776
    .catchall {:try_start_1f0 .. :try_end_203} :catchall_768

    if-nez v0, :cond_261

    .line 352
    :try_start_205
    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20c
    .catch Landroid/os/RemoteException; {:try_start_205 .. :try_end_20c} :catch_16e
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_20c} :catch_161
    .catchall {:try_start_205 .. :try_end_20c} :catchall_153

    .line 481
    if-eqz v3, :cond_217

    .line 482
    :try_start_20e
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_217

    .line 486
    :catch_215
    move-exception v0

    goto :goto_21d

    .line 485
    :cond_217
    :goto_217
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21c
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_21c} :catch_215

    .line 488
    goto :goto_238

    .line 486
    :goto_21d
    nop

    .line 487
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IO error closing adb backup file: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_238
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 490
    :try_start_23b
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v1
    :try_end_247
    .catchall {:try_start_23b .. :try_end_247} :catchall_25e

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 494
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 496
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 354
    return-void

    .line 492
    :catchall_25e
    move-exception v0

    :try_start_25f
    monitor-exit v1
    :try_end_260
    .catchall {:try_start_25f .. :try_end_260} :catchall_25e

    throw v0

    .line 382
    :cond_261
    :try_start_261
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v10, v0

    .line 384
    .local v10, "headerbuf":Ljava/lang/StringBuilder;
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_274
    .catch Landroid/os/RemoteException; {:try_start_261 .. :try_end_274} :catch_75b
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_274} :catch_74f
    .catchall {:try_start_261 .. :try_end_274} :catchall_743

    if-eqz v0, :cond_2a1

    :try_start_276
    const-string v0, "\n1\n"
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_276 .. :try_end_278} :catch_294
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_278} :catch_287
    .catchall {:try_start_276 .. :try_end_278} :catchall_279

    goto :goto_2a3

    .line 480
    .end local v5    # "finalOutput":Ljava/io/OutputStream;
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    :catchall_279
    move-exception v0

    move-object v2, v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 480
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v1, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .local v31, "ofstream":Ljava/io/FileOutputStream;
    .local v32, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_284
    const/4 v6, 0x1

    goto/16 :goto_82f

    .line 477
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_287
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 477
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_291
    const/4 v6, 0x1

    goto/16 :goto_781

    .line 475
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_294
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 475
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_29e
    const/4 v6, 0x1

    goto/16 :goto_7d1

    .line 386
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    :cond_2a1
    :try_start_2a1
    const-string v0, "\n0\n"

    :goto_2a3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a6
    .catch Landroid/os/RemoteException; {:try_start_2a1 .. :try_end_2a6} :catch_75b
    .catch Ljava/lang/Exception; {:try_start_2a1 .. :try_end_2a6} :catch_74f
    .catchall {:try_start_2a1 .. :try_end_2a6} :catchall_743

    .line 390
    if-eqz v16, :cond_2bd

    .line 391
    :try_start_2a8
    invoke-direct {v12, v10, v5}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_2a8 .. :try_end_2ac} :catch_2ae
    .catch Landroid/os/RemoteException; {:try_start_2a8 .. :try_end_2ac} :catch_294
    .catchall {:try_start_2a8 .. :try_end_2ac} :catchall_279

    move-object v5, v0

    goto :goto_2c3

    .line 406
    :catch_2ae
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    const/4 v6, 0x1

    goto/16 :goto_6e2

    .line 393
    :cond_2bd
    :try_start_2bd
    const-string/jumbo v0, "none\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :goto_2c3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 397
    .local v0, "header":[B
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 400
    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2d2} :catch_6d5
    .catch Landroid/os/RemoteException; {:try_start_2bd .. :try_end_2d2} :catch_75b
    .catchall {:try_start_2bd .. :try_end_2d2} :catchall_743

    if-eqz v1, :cond_346

    .line 401
    :try_start_2d4
    new-instance v1, Ljava/util/zip/Deflater;

    invoke-direct {v1, v2}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 402
    .local v1, "deflater":Ljava/util/zip/Deflater;
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_2db} :catch_334
    .catch Landroid/os/RemoteException; {:try_start_2d4 .. :try_end_2db} :catch_324
    .catchall {:try_start_2d4 .. :try_end_2db} :catchall_313

    move-object/from16 v19, v8

    const/4 v8, 0x1

    :try_start_2de
    invoke-direct {v2, v5, v1, v8}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2e1} :catch_303
    .catch Landroid/os/RemoteException; {:try_start_2de .. :try_end_2e1} :catch_2f5
    .catchall {:try_start_2de .. :try_end_2e1} :catchall_2e6

    .line 402
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object v5, v2

    .line 405
    .end local v1    # "deflater":Ljava/util/zip/Deflater;
    move-object/from16 v18, v5

    goto/16 :goto_34b

    .line 480
    .end local v0    # "header":[B
    .end local v5    # "finalOutput":Ljava/io/OutputStream;
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    :catchall_2e6
    move-exception v0

    move-object v2, v0

    .line 480
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v1, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_2e8
    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v6, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_82f

    .line 475
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_2f5
    move-exception v0

    .line 475
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_2f6
    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v6, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_7d1

    .line 406
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_303
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v6, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_6e2

    .line 480
    .end local v5    # "finalOutput":Ljava/io/OutputStream;
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_313
    move-exception v0

    move-object/from16 v19, v8

    move-object v2, v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    const/4 v6, 0x1

    move-object/from16 v19, v9

    .line 480
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_82f

    .line 475
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_324
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    const/4 v6, 0x1

    move-object/from16 v19, v9

    .line 475
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7d1

    .line 406
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "finalOutput":Ljava/io/OutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    :catch_334
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    const/4 v6, 0x1

    move-object/from16 v19, v9

    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_6e2

    .line 405
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v0    # "header":[B
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_346
    move-object/from16 v19, v8

    const/4 v8, 0x1

    move-object/from16 v18, v5

    .line 405
    .end local v5    # "finalOutput":Ljava/io/OutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v18, "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_34b
    move-object/from16 v5, v18

    .line 410
    .end local v0    # "header":[B
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    nop

    .line 413
    :try_start_34e
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_350
    .catch Landroid/os/RemoteException; {:try_start_34e .. :try_end_350} :catch_6c5
    .catch Ljava/lang/Exception; {:try_start_34e .. :try_end_350} :catch_6b5
    .catchall {:try_start_34e .. :try_end_350} :catchall_6a4

    if-eqz v0, :cond_388

    .line 415
    :try_start_352
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"
    :try_end_35a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_352 .. :try_end_35a} :catch_37e
    .catch Landroid/os/RemoteException; {:try_start_352 .. :try_end_35a} :catch_37a
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_35a} :catch_36b
    .catchall {:try_start_352 .. :try_end_35a} :catchall_366

    const/4 v2, 0x0

    :try_start_35b
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v4, v0

    .line 417
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_363
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35b .. :try_end_363} :catch_364
    .catch Landroid/os/RemoteException; {:try_start_35b .. :try_end_363} :catch_37a
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_363} :catch_36b
    .catchall {:try_start_35b .. :try_end_363} :catchall_366

    .line 420
    goto :goto_389

    .line 418
    :catch_364
    move-exception v0

    goto :goto_380

    .line 480
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    :catchall_366
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    goto/16 :goto_2e8

    .line 477
    :catch_36b
    move-exception v0

    move-object v3, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v6, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_781

    .line 475
    :catch_37a
    move-exception v0

    move-object v3, v5

    goto/16 :goto_2f6

    .line 418
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    :catch_37e
    move-exception v0

    const/4 v2, 0x0

    .line 419
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_380
    :try_start_380
    const-string v1, "BackupManagerService"

    const-string v3, "Unable to find shared-storage backup handler"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_387
    .catch Landroid/os/RemoteException; {:try_start_380 .. :try_end_387} :catch_37a
    .catch Ljava/lang/Exception; {:try_start_380 .. :try_end_387} :catch_36b
    .catchall {:try_start_380 .. :try_end_387} :catchall_366

    .line 419
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_389

    .line 424
    :cond_388
    const/4 v2, 0x0

    :goto_389
    :try_start_389
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_38d
    .catch Landroid/os/RemoteException; {:try_start_389 .. :try_end_38d} :catch_6c5
    .catch Ljava/lang/Exception; {:try_start_389 .. :try_end_38d} :catch_6b5
    .catchall {:try_start_389 .. :try_end_38d} :catchall_6a4

    .line 425
    .local v0, "N":I
    nop

    .line 425
    .restart local v2    # "i":I
    :goto_38e
    move v3, v2

    .line 425
    .end local v2    # "i":I
    .local v3, "i":I
    if-ge v3, v0, :cond_5ab

    .line 426
    :try_start_391
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;
    :try_end_397
    .catch Landroid/os/RemoteException; {:try_start_391 .. :try_end_397} :catch_599
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_397} :catch_587
    .catchall {:try_start_391 .. :try_end_397} :catchall_574

    move-object v4, v1

    .line 428
    :try_start_398
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_39f
    .catch Landroid/os/RemoteException; {:try_start_398 .. :try_end_39f} :catch_561
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_39f} :catch_54e
    .catchall {:try_start_398 .. :try_end_39f} :catchall_53a

    :try_start_39f
    const-string v8, "--- Performing full backup for package "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ---"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v17, v1

    .line 435
    .local v17, "isSharedStorage":Z
    new-instance v8, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v20, 0x0

    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_3c7
    .catch Landroid/os/RemoteException; {:try_start_39f .. :try_end_3c7} :catch_528
    .catch Ljava/lang/Exception; {:try_start_39f .. :try_end_3c7} :catch_516
    .catchall {:try_start_39f .. :try_end_3c7} :catchall_504

    const-wide v21, 0x7fffffffffffffffL

    move-object/from16 v28, v9

    :try_start_3ce
    iget v9, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_3d0
    .catch Landroid/os/RemoteException; {:try_start_3ce .. :try_end_3d0} :catch_4f1
    .catch Ljava/lang/Exception; {:try_start_3ce .. :try_end_3d0} :catch_4de
    .catchall {:try_start_3ce .. :try_end_3d0} :catchall_4ca

    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    const/16 v23, 0x0

    move/from16 v24, v1

    move-object v1, v8

    move/from16 v25, v3

    move-object v3, v5

    .line 435
    .end local v3    # "i":I
    .local v25, "i":I
    move-object/from16 v29, v4

    move-object/from16 v4, v20

    .line 435
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v30, v5

    move-object/from16 v5, v29

    .line 435
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v30, "out":Ljava/io/OutputStream;
    move-object/from16 v31, v6

    move/from16 v6, v24

    .line 435
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    move-object/from16 v32, v7

    move-object v7, v12

    .line 435
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v34, v8

    move/from16 v20, v9

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    const/16 v24, 0x1

    move-wide/from16 v8, v21

    .line 435
    .end local v28    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v33, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v27, v10

    move/from16 v10, v20

    .line 435
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .local v27, "headerbuf":Ljava/lang/StringBuilder;
    move-object/from16 v28, v11

    move/from16 v11, v23

    .line 435
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v28, "pm":Landroid/content/pm/PackageManager;
    :try_start_3fb
    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V

    move-object/from16 v1, v34

    iput-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 439
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->setOutputFileDescriptor(Lcom/android/server/backup/fullbackup/FullBackupEngine;Landroid/os/ParcelFileDescriptor;)V
    :try_end_409
    .catch Landroid/os/RemoteException; {:try_start_3fb .. :try_end_409} :catch_4be
    .catch Ljava/lang/Exception; {:try_start_3fb .. :try_end_409} :catch_4b2
    .catchall {:try_start_3fb .. :try_end_409} :catchall_4a5

    .line 440
    if-eqz v17, :cond_42d

    :try_start_40b
    const-string v1, "Shared storage"
    :try_end_40d
    .catch Landroid/os/RemoteException; {:try_start_40b .. :try_end_40d} :catch_424
    .catch Ljava/lang/Exception; {:try_start_40b .. :try_end_40d} :catch_41b
    .catchall {:try_start_40b .. :try_end_40d} :catchall_411

    move-object v2, v1

    move-object/from16 v1, v29

    goto :goto_431

    .line 480
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "isSharedStorage":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v25    # "i":I
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_411
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    move-object/from16 v1, v33

    goto/16 :goto_284

    .line 477
    :catch_41b
    move-exception v0

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    .line 477
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v3, "out":Ljava/io/OutputStream;
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_420
    move-object/from16 v1, v33

    goto/16 :goto_291

    .line 475
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_424
    move-exception v0

    move-object/from16 v4, v29

    move-object/from16 v3, v30

    .line 475
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_429
    move-object/from16 v1, v33

    goto/16 :goto_29e

    .line 440
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v0    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "isSharedStorage":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v25    # "i":I
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_42d
    move-object/from16 v1, v29

    :try_start_42f
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 440
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    :goto_431
    invoke-virtual {v12, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 443
    iput-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 444
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 448
    iget-boolean v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_43d
    .catch Landroid/os/RemoteException; {:try_start_42f .. :try_end_43d} :catch_49b
    .catch Ljava/lang/Exception; {:try_start_42f .. :try_end_43d} :catch_491
    .catchall {:try_start_42f .. :try_end_43d} :catchall_486

    if-eqz v2, :cond_470

    if-nez v17, :cond_470

    .line 449
    move-object/from16 v2, v30

    :try_start_443
    invoke-virtual {v15, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v3

    .line 450
    .end local v30    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    .local v3, "obbOkay":Z
    if-eqz v3, :cond_44a

    .line 450
    .end local v3    # "obbOkay":Z
    .end local v17    # "isSharedStorage":Z
    goto :goto_472

    .line 451
    .restart local v3    # "obbOkay":Z
    .restart local v17    # "isSharedStorage":Z
    :cond_44a
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure writing OBB stack for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_461
    .catch Landroid/os/RemoteException; {:try_start_443 .. :try_end_461} :catch_46c
    .catch Ljava/lang/Exception; {:try_start_443 .. :try_end_461} :catch_468
    .catchall {:try_start_443 .. :try_end_461} :catchall_461

    .line 480
    .end local v0    # "N":I
    .end local v3    # "obbOkay":Z
    .end local v16    # "encrypting":Z
    .end local v17    # "isSharedStorage":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v25    # "i":I
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_461
    move-exception v0

    move-object v4, v1

    move-object v3, v2

    move-object/from16 v1, v33

    goto/16 :goto_617

    .line 477
    :catch_468
    move-exception v0

    move-object v4, v1

    move-object v3, v2

    goto :goto_420

    .line 475
    :catch_46c
    move-exception v0

    move-object v4, v1

    move-object v3, v2

    goto :goto_429

    .line 425
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v0    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v25    # "i":I
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :cond_470
    move-object/from16 v2, v30

    .line 425
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_472
    add-int/lit8 v3, v25, 0x1

    .line 425
    .end local v25    # "i":I
    .local v3, "i":I
    move-object v4, v1

    move-object v5, v2

    move v2, v3

    move-object/from16 v9, v19

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    move-object/from16 v19, v33

    const/4 v8, 0x1

    goto/16 :goto_38e

    .line 480
    .end local v0    # "N":I
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "i":I
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catchall_486
    move-exception v0

    move-object/from16 v2, v30

    move-object v4, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    move-object v2, v0

    .line 480
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_82f

    .line 477
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_491
    move-exception v0

    move-object/from16 v2, v30

    move-object v4, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    .line 477
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_781

    .line 475
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_49b
    move-exception v0

    move-object/from16 v2, v30

    move-object v4, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    .line 475
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_7d1

    .line 480
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catchall_4a5
    move-exception v0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object v4, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    move-object v2, v0

    .line 480
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_82f

    .line 477
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_4b2
    move-exception v0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object v4, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    .line 477
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_781

    .line 475
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_4be
    move-exception v0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object v4, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    .line 475
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_7d1

    .line 480
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :catchall_4ca
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v11

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    move-object v2, v0

    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_82f

    .line 477
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :catch_4de
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v11

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_781

    .line 475
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :catch_4f1
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v11

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7d1

    .line 480
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_504
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    goto :goto_54b

    .line 477
    :catch_516
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    goto :goto_55f

    .line 475
    :catch_528
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v6, 0x1

    goto :goto_572

    .line 480
    :catchall_53a
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move v6, v8

    move-object/from16 v1, v33

    .local v3, "out":Ljava/io/OutputStream;
    :goto_54b
    move-object v2, v0

    .line 480
    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_82f

    .line 477
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_54e
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move v6, v8

    move-object/from16 v1, v33

    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_55f
    goto/16 :goto_781

    .line 475
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_561
    move-exception v0

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move v6, v8

    move-object/from16 v1, v33

    .end local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_572
    goto/16 :goto_7d1

    .line 480
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_574
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move v6, v8

    move-object/from16 v1, v33

    move-object v2, v0

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_82f

    .line 477
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_587
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move v6, v8

    move-object/from16 v1, v33

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_781

    .line 475
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_599
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move v6, v8

    move-object/from16 v1, v33

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7d1

    .line 456
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v0    # "N":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_5ab
    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    .line 456
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_5b8
    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_5ba
    .catch Landroid/os/RemoteException; {:try_start_5b8 .. :try_end_5ba} :catch_69d
    .catch Ljava/lang/Exception; {:try_start_5b8 .. :try_end_5ba} :catch_696
    .catchall {:try_start_5b8 .. :try_end_5ba} :catchall_68e

    if-eqz v1, :cond_622

    .line 457
    move-object/from16 v1, v33

    :try_start_5be
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 457
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v1, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_5c2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_624

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 459
    .local v5, "keyValuePackage":Landroid/content/pm/PackageInfo;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- Performing key-value backup for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v6, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 465
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    iget-object v8, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 466
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v25

    iget-object v8, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 467
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v26

    move-object/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v26}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/BackupManagerServiceInterface;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 468
    .local v6, "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v7}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v6}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_614
    .catch Landroid/os/RemoteException; {:try_start_5be .. :try_end_614} :catch_61e
    .catch Ljava/lang/Exception; {:try_start_5be .. :try_end_614} :catch_61a
    .catchall {:try_start_5be .. :try_end_614} :catchall_615

    .line 470
    .end local v5    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    goto :goto_5c2

    .line 480
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_615
    move-exception v0

    move-object v3, v2

    .line 480
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_617
    const/4 v6, 0x1

    goto/16 :goto_82e

    .line 477
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_61a
    move-exception v0

    move-object v3, v2

    goto/16 :goto_291

    .line 475
    :catch_61e
    move-exception v0

    move-object v3, v2

    goto/16 :goto_29e

    .line 474
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v0    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v18    # "finalOutput":Ljava/io/OutputStream;
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_622
    move-object/from16 v1, v33

    .line 474
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_624
    :try_start_624
    invoke-direct {v12, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_627
    .catch Landroid/os/RemoteException; {:try_start_624 .. :try_end_627} :catch_689
    .catch Ljava/lang/Exception; {:try_start_624 .. :try_end_627} :catch_684
    .catchall {:try_start_624 .. :try_end_627} :catchall_67f

    .line 481
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v18    # "finalOutput":Ljava/io/OutputStream;
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_632

    .line 482
    :try_start_629
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_632

    .line 486
    :catch_630
    move-exception v0

    goto :goto_638

    .line 485
    :cond_632
    :goto_632
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_637
    .catch Ljava/io/IOException; {:try_start_629 .. :try_end_637} :catch_630

    .line 488
    goto :goto_653

    .line 486
    :goto_638
    nop

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_653
    iget-object v3, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 490
    :try_start_656
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v3
    :try_end_662
    .catchall {:try_start_656 .. :try_end_662} :catchall_67c

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 494
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 496
    const-string v0, "BackupManagerService"

    const-string v3, "Full backup pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 499
    nop

    .line 500
    move-object v3, v2

    goto/16 :goto_829

    .line 492
    :catchall_67c
    move-exception v0

    :try_start_67d
    monitor-exit v3
    :try_end_67e
    .catchall {:try_start_67d .. :try_end_67e} :catchall_67c

    throw v0

    .line 480
    :catchall_67f
    move-exception v0

    const/4 v6, 0x1

    move-object v3, v2

    goto/16 :goto_82e

    .line 477
    :catch_684
    move-exception v0

    const/4 v6, 0x1

    move-object v3, v2

    goto/16 :goto_781

    .line 475
    :catch_689
    move-exception v0

    const/4 v6, 0x1

    move-object v3, v2

    goto/16 :goto_7d1

    .line 480
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_68e
    move-exception v0

    move-object/from16 v1, v33

    const/4 v6, 0x1

    move-object v3, v2

    move-object v2, v0

    .line 480
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_82f

    .line 477
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_696
    move-exception v0

    move-object/from16 v1, v33

    const/4 v6, 0x1

    move-object v3, v2

    .line 477
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_781

    .line 475
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_69d
    move-exception v0

    move-object/from16 v1, v33

    const/4 v6, 0x1

    move-object v3, v2

    .line 475
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7d1

    .line 480
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v5, "out":Ljava/io/OutputStream;
    .local v6, "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_6a4
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v6, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    move-object v3, v2

    move-object v2, v0

    .line 480
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_82f

    .line 477
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_6b5
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v6, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    move-object v3, v2

    .line 477
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_781

    .line 475
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_6c5
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v6, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    move-object v3, v2

    .line 475
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7d1

    .line 406
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "out":Ljava/io/OutputStream;
    .local v5, "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    :catch_6d5
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    const/4 v6, 0x1

    .line 406
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_6e2
    move-object v2, v0

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6e3
    const-string v0, "BackupManagerService"

    const-string v7, "Unable to emit archive header"

    invoke-static {v0, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6ea
    .catch Landroid/os/RemoteException; {:try_start_6e3 .. :try_end_6ea} :catch_740
    .catch Ljava/lang/Exception; {:try_start_6e3 .. :try_end_6ea} :catch_73e
    .catchall {:try_start_6e3 .. :try_end_6ea} :catchall_82d

    .line 481
    if-eqz v3, :cond_6f5

    .line 482
    :try_start_6ec
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_6f5

    .line 486
    :catch_6f3
    move-exception v0

    goto :goto_6fb

    .line 485
    :cond_6f5
    :goto_6f5
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6fa
    .catch Ljava/io/IOException; {:try_start_6ec .. :try_end_6fa} :catch_6f3

    .line 488
    goto :goto_716

    .line 486
    :goto_6fb
    nop

    .line 487
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO error closing adb backup file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_716
    iget-object v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v7

    .line 490
    :try_start_719
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v7
    :try_end_724
    .catchall {:try_start_719 .. :try_end_724} :catchall_73b

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 494
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 496
    const-string v0, "BackupManagerService"

    const-string v6, "Full backup pass complete."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 409
    return-void

    .line 492
    :catchall_73b
    move-exception v0

    :try_start_73c
    monitor-exit v7
    :try_end_73d
    .catchall {:try_start_73c .. :try_end_73d} :catchall_73b

    throw v0

    .line 477
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "finalOutput":Ljava/io/OutputStream;
    .end local v16    # "encrypting":Z
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_73e
    move-exception v0

    goto :goto_781

    .line 475
    :catch_740
    move-exception v0

    goto/16 :goto_7d1

    .line 480
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_743
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    const/4 v6, 0x1

    goto :goto_773

    .line 477
    :catch_74f
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    const/4 v6, 0x1

    goto :goto_781

    .line 475
    :catch_75b
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    const/4 v6, 0x1

    goto/16 :goto_7d1

    .line 480
    :catchall_768
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v6, v10

    move-object/from16 v28, v11

    :goto_773
    move-object v2, v0

    .line 480
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_82f

    .line 477
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_776
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v6, v10

    move-object/from16 v28, v11

    .line 478
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_781
    :try_start_781
    const-string v2, "BackupManagerService"

    const-string v5, "Internal exception during full backup"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_788
    .catchall {:try_start_781 .. :try_end_788} :catchall_82d

    .line 481
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_793

    .line 482
    :try_start_78a
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_793

    .line 486
    :catch_791
    move-exception v0

    goto :goto_799

    .line 485
    :cond_793
    :goto_793
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_798
    .catch Ljava/io/IOException; {:try_start_78a .. :try_end_798} :catch_791

    .line 488
    goto :goto_7b4

    .line 486
    :goto_799
    nop

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7b4
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 490
    :try_start_7b7
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v2

    goto :goto_812

    :catchall_7c3
    move-exception v0

    monitor-exit v2
    :try_end_7c5
    .catchall {:try_start_7b7 .. :try_end_7c5} :catchall_7c3

    throw v0

    .line 475
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_7c6
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v6, v10

    move-object/from16 v28, v11

    .line 476
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_7d1
    :try_start_7d1
    const-string v2, "BackupManagerService"

    const-string v5, "App died during full backup"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d8
    .catchall {:try_start_7d1 .. :try_end_7d8} :catchall_82d

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v3, :cond_7e3

    .line 482
    :try_start_7da
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_7e3

    .line 486
    :catch_7e1
    move-exception v0

    goto :goto_7e9

    .line 485
    :cond_7e3
    :goto_7e3
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7e8
    .catch Ljava/io/IOException; {:try_start_7da .. :try_end_7e8} :catch_7e1

    .line 488
    goto :goto_804

    .line 486
    :goto_7e9
    nop

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_804
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 490
    :try_start_807
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v2
    :try_end_812
    .catchall {:try_start_807 .. :try_end_812} :catchall_82a

    .line 493
    :goto_812
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 494
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 496
    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 499
    nop

    .line 500
    :goto_829
    return-void

    .line 492
    :catchall_82a
    move-exception v0

    :try_start_82b
    monitor-exit v2
    :try_end_82c
    .catchall {:try_start_82b .. :try_end_82c} :catchall_82a

    throw v0

    .line 480
    :catchall_82d
    move-exception v0

    :goto_82e
    move-object v2, v0

    .line 481
    :goto_82f
    if-eqz v3, :cond_83a

    .line 482
    :try_start_831
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 483
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_83a

    .line 486
    :catch_838
    move-exception v0

    goto :goto_840

    .line 485
    :cond_83a
    :goto_83a
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_83f
    .catch Ljava/io/IOException; {:try_start_831 .. :try_end_83f} :catch_838

    .line 488
    goto :goto_85b

    .line 486
    :goto_840
    nop

    .line 487
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BackupManagerService"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_85b
    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 490
    :try_start_85e
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v5
    :try_end_869
    .catchall {:try_start_85e .. :try_end_869} :catchall_880

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 494
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 496
    const-string v0, "BackupManagerService"

    const-string v5, "Full backup pass complete."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 492
    :catchall_880
    move-exception v0

    :try_start_881
    monitor-exit v5
    :try_end_882
    .catchall {:try_start_881 .. :try_end_882} :catchall_880

    throw v0
.end method
