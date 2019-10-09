.class public Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
    }
.end annotation


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mAppVersion:J

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentPassword:Ljava/lang/String;

.field private final mDecryptPassword:Ljava/lang/String;

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field private final mInputFile:Landroid/os/ParcelFileDescriptor;

.field private final mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 9
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "decryptPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p6, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 102
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 103
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    .line 146
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    .line 151
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 152
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 153
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 156
    iput-object p6, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 158
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageManagerBackupAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 159
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 161
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-direct {v0, p1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 162
    nop

    .line 163
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    .line 162
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 168
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/PerformAdbRestoreTask;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    .param p1, "x1"    # J

    .line 87
    iget-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    return-wide v0
.end method

.method private static attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .registers 29
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "userSalt"    # [B
    .param p3, "ckSalt"    # [B
    .param p4, "rounds"    # I
    .param p5, "userIvHex"    # Ljava/lang/String;
    .param p6, "masterKeyBlobHex"    # Ljava/lang/String;
    .param p7, "rawInStream"    # Ljava/io/InputStream;
    .param p8, "doLog"    # Z

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 352
    const/4 v0, 0x0

    move-object v3, v0

    .line 355
    .local v3, "result":Ljava/io/InputStream;
    :try_start_6
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_c} :catch_125
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_c} :catch_113
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_c} :catch_101
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_ef
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_c} :catch_dd
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_c} :catch_ca

    .line 356
    .local v0, "c":Ljavax/crypto/Cipher;
    nop

    .line 357
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :try_start_11
    invoke-static {v1, v4, v5, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 359
    .local v6, "userKey":Ljavax/crypto/SecretKey;
    invoke-static/range {p5 .. p5}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 360
    .local v7, "IV":[B
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 361
    .local v8, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    .line 362
    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const-string v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 361
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 364
    invoke-static/range {p6 .. p6}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 365
    .local v9, "mkCipher":[B
    invoke-virtual {v0, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    .line 368
    .local v11, "mkBlob":[B
    const/4 v12, 0x0

    .line 369
    .local v12, "offset":I
    add-int/lit8 v13, v12, 0x1

    .local v13, "offset":I
    aget-byte v12, v11, v12

    .line 370
    .local v12, "len":I
    add-int v14, v13, v12

    invoke-static {v11, v13, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    move-object v7, v14

    .line 371
    add-int/2addr v13, v12

    .line 373
    add-int/lit8 v14, v13, 0x1

    .local v14, "offset":I
    aget-byte v13, v11, v13

    .end local v13    # "offset":I
    move v12, v13

    .line 374
    add-int v13, v14, v12

    invoke-static {v11, v14, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 376
    .local v13, "mk":[B
    add-int/2addr v14, v12

    .line 378
    add-int/lit8 v10, v14, 0x1

    .local v10, "offset":I
    aget-byte v14, v11, v14

    .end local v14    # "offset":I
    move v12, v14

    .line 379
    add-int v14, v10, v12

    invoke-static {v11, v10, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14
    :try_end_59
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_11 .. :try_end_59} :catch_c7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_11 .. :try_end_59} :catch_c5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_11 .. :try_end_59} :catch_c3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_59} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_11 .. :try_end_59} :catch_bf
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_59} :catch_bd

    .line 383
    .local v14, "mkChecksum":[B
    move-object v15, v3

    move-object/from16 v3, p3

    :try_start_5c
    invoke-static {v1, v13, v3, v2}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v16

    .end local v3    # "result":Ljava/io/InputStream;
    .local v15, "result":Ljava/io/InputStream;
    move-object/from16 v17, v16

    .line 385
    .local v17, "calculatedCk":[B
    move-object/from16 v1, v17

    invoke-static {v1, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16
    :try_end_68
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5c .. :try_end_68} :catch_ba
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5c .. :try_end_68} :catch_b7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5c .. :try_end_68} :catch_b5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5c .. :try_end_68} :catch_b3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5c .. :try_end_68} :catch_b1
    .catch Ljava/security/InvalidKeyException; {:try_start_5c .. :try_end_68} :catch_af

    .end local v17    # "calculatedCk":[B
    .local v1, "calculatedCk":[B
    if-eqz v16, :cond_a2

    .line 386
    move-object/from16 v18, v1

    :try_start_6c
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .end local v1    # "calculatedCk":[B
    .local v18, "calculatedCk":[B
    invoke-direct {v1, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 387
    .end local v8    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .local v1, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v8, v13, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 391
    new-instance v2, Ljavax/crypto/CipherInputStream;
    :try_end_7e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6c .. :try_end_7e} :catch_9d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6c .. :try_end_7e} :catch_98
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6c .. :try_end_7e} :catch_93
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6c .. :try_end_7e} :catch_8e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6c .. :try_end_7e} :catch_89
    .catch Ljava/security/InvalidKeyException; {:try_start_6c .. :try_end_7e} :catch_85

    move-object/from16 v8, p7

    :try_start_80
    invoke-direct {v2, v8, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 423
    .end local v15    # "result":Ljava/io/InputStream;
    .local v2, "result":Ljava/io/InputStream;
    move-object v15, v2

    goto :goto_ad

    .line 419
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v2    # "result":Ljava/io/InputStream;
    .end local v6    # "userKey":Ljavax/crypto/SecretKey;
    .end local v7    # "IV":[B
    .end local v9    # "mkCipher":[B
    .end local v10    # "offset":I
    .end local v11    # "mkBlob":[B
    .end local v12    # "len":I
    .end local v13    # "mk":[B
    .end local v14    # "mkChecksum":[B
    .end local v18    # "calculatedCk":[B
    .restart local v15    # "result":Ljava/io/InputStream;
    :catch_85
    move-exception v0

    move-object/from16 v8, p7

    goto :goto_d2

    .line 415
    :catch_89
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_e5

    .line 411
    :catch_8e
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_f7

    .line 407
    :catch_93
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_109

    .line 399
    :catch_98
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_11b

    .line 395
    :catch_9d
    move-exception v0

    move-object/from16 v8, p7

    goto/16 :goto_12d

    .line 392
    .restart local v0    # "c":Ljavax/crypto/Cipher;
    .local v1, "calculatedCk":[B
    .restart local v6    # "userKey":Ljavax/crypto/SecretKey;
    .restart local v7    # "IV":[B
    .restart local v8    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .restart local v9    # "mkCipher":[B
    .restart local v10    # "offset":I
    .restart local v11    # "mkBlob":[B
    .restart local v12    # "len":I
    .restart local v13    # "mk":[B
    .restart local v14    # "mkChecksum":[B
    :cond_a2
    move-object/from16 v18, v1

    .end local v1    # "calculatedCk":[B
    .restart local v18    # "calculatedCk":[B
    if-eqz p8, :cond_ad

    .line 393
    const-string v1, "BackupManagerService"

    const-string v2, "Incorrect password"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_80 .. :try_end_ad} :catch_ba
    .catch Ljavax/crypto/BadPaddingException; {:try_start_80 .. :try_end_ad} :catch_b7
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_80 .. :try_end_ad} :catch_b5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_80 .. :try_end_ad} :catch_b3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_80 .. :try_end_ad} :catch_b1
    .catch Ljava/security/InvalidKeyException; {:try_start_80 .. :try_end_ad} :catch_af

    .line 423
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v6    # "userKey":Ljavax/crypto/SecretKey;
    .end local v7    # "IV":[B
    .end local v8    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "mkCipher":[B
    .end local v10    # "offset":I
    .end local v11    # "mkBlob":[B
    .end local v12    # "len":I
    .end local v13    # "mk":[B
    .end local v14    # "mkChecksum":[B
    .end local v18    # "calculatedCk":[B
    :cond_ad
    :goto_ad
    goto/16 :goto_138

    .line 419
    :catch_af
    move-exception v0

    goto :goto_d2

    .line 415
    :catch_b1
    move-exception v0

    goto :goto_e5

    .line 411
    :catch_b3
    move-exception v0

    goto :goto_f7

    .line 407
    :catch_b5
    move-exception v0

    goto :goto_109

    .line 399
    :catch_b7
    move-exception v0

    goto/16 :goto_11b

    .line 395
    :catch_ba
    move-exception v0

    goto/16 :goto_12d

    .line 419
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_bd
    move-exception v0

    goto :goto_cf

    .line 415
    :catch_bf
    move-exception v0

    goto :goto_e2

    .line 411
    :catch_c1
    move-exception v0

    goto :goto_f4

    .line 407
    :catch_c3
    move-exception v0

    goto :goto_106

    .line 399
    :catch_c5
    move-exception v0

    goto :goto_118

    .line 395
    :catch_c7
    move-exception v0

    goto/16 :goto_12a

    .line 419
    :catch_ca
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_cf
    move-object v15, v3

    move-object/from16 v3, p3

    .line 420
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidKeyException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_d2
    if-eqz p8, :cond_138

    .line 421
    const-string v1, "BackupManagerService"

    const-string v2, "Illegal password; aborting"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/InvalidKeyException;
    goto/16 :goto_138

    .line 415
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_dd
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_e2
    move-object v15, v3

    move-object/from16 v3, p3

    .line 416
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_e5
    if-eqz p8, :cond_ad

    .line 417
    const-string v1, "BackupManagerService"

    const-string v2, "Needed padding mechanism unavailable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_ad

    .line 411
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_ef
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_f4
    move-object v15, v3

    move-object/from16 v3, p3

    .line 412
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_f7
    if-eqz p8, :cond_ad

    .line 413
    const-string v1, "BackupManagerService"

    const-string v2, "Needed decryption algorithm unavailable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_ad

    .line 407
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_101
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_106
    move-object v15, v3

    move-object/from16 v3, p3

    .line 408
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_109
    if-eqz p8, :cond_ad

    .line 409
    const-string v1, "BackupManagerService"

    const-string v2, "Invalid block size in master key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_ad

    .line 399
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_113
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_118
    move-object v15, v3

    move-object/from16 v3, p3

    .line 404
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_11b
    if-eqz p8, :cond_ad

    .line 405
    const-string v1, "BackupManagerService"

    const-string v2, "Incorrect password"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_ad

    .line 395
    .end local v15    # "result":Ljava/io/InputStream;
    .restart local v3    # "result":Ljava/io/InputStream;
    :catch_125
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    :goto_12a
    move-object v15, v3

    move-object/from16 v3, p3

    .line 396
    .end local v3    # "result":Ljava/io/InputStream;
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v15    # "result":Ljava/io/InputStream;
    :goto_12d
    if-eqz p8, :cond_ad

    .line 397
    const-string v1, "BackupManagerService"

    const-string v2, "Needed parameter spec unavailable!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    goto/16 :goto_ad

    .line 425
    :cond_138
    :goto_138
    return-object v15
.end method

.method private static decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;
    .registers 26
    .param p0, "decryptPassword"    # Ljava/lang/String;
    .param p1, "encryptionName"    # Ljava/lang/String;
    .param p2, "pbkdf2Fallback"    # Z
    .param p3, "rawInStream"    # Ljava/io/InputStream;

    move-object/from16 v1, p1

    .line 432
    const/4 v0, 0x0

    move-object v2, v0

    .line 434
    .local v2, "result":Ljava/io/InputStream;
    :try_start_4
    const-string v0, "AES-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 436
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "userSaltHex":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 439
    .local v5, "userSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    .line 440
    .local v12, "ckSaltHex":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/backup/utils/PasswordUtils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 442
    .local v6, "ckSalt":[B
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 443
    .local v7, "rounds":I
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 445
    .local v8, "userIvHex":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    .line 448
    .local v9, "masterKeyBlobHex":Ljava/lang/String;
    const-string v4, "PBKDF2WithHmacSHA1"

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v10, p3

    invoke-static/range {v3 .. v11}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 450
    if-nez v2, :cond_54

    if-eqz p2, :cond_54

    .line 451
    const-string v14, "PBKDF2WithHmacSHA1And8bit"

    const/16 v21, 0x1

    move-object/from16 v13, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, p3

    invoke-static/range {v13 .. v21}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->attemptMasterKeyDecryption(Ljava/lang/String;Ljava/lang/String;[B[BILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    .line 455
    .end local v2    # "result":Ljava/io/InputStream;
    .end local v5    # "userSalt":[B
    .end local v6    # "ckSalt":[B
    .end local v7    # "rounds":I
    .end local v8    # "userIvHex":Ljava/lang/String;
    .end local v9    # "masterKeyBlobHex":Ljava/lang/String;
    .end local v12    # "ckSaltHex":Ljava/lang/String;
    .local v0, "result":Ljava/io/InputStream;
    move-object v2, v0

    .end local v0    # "result":Ljava/io/InputStream;
    .restart local v2    # "result":Ljava/io/InputStream;
    :cond_54
    goto :goto_7d

    .line 456
    :cond_55
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported encryption method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_6b} :catch_75
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_6b} :catch_6c

    goto :goto_7d

    .line 460
    :catch_6c
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Can\'t read input header"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7e

    .line 458
    :catch_75
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "BackupManagerService"

    const-string v5, "Can\'t parse restore data header"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7d
    nop

    .line 464
    :goto_7e
    return-object v2
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 850
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 857
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 854
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method public static parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 15
    .param p0, "rawInputStream"    # Ljava/io/InputStream;
    .param p1, "decryptPassword"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "compressed":Z
    move-object v1, p0

    .line 269
    .local v1, "preCompressStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 270
    .local v2, "okay":Z
    const-string v3, "ANDROID BACKUP\n"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 271
    .local v3, "headerLen":I
    new-array v4, v3, [B

    .line 272
    .local v4, "streamHeader":[B
    invoke-static {p0, v4}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readFullyOrThrow(Ljava/io/InputStream;[B)V

    .line 273
    const-string v5, "ANDROID BACKUP\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 275
    .local v5, "magicBytes":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_8a

    .line 277
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 281
    .local v8, "archiveVersion":I
    const/4 v9, 0x5

    if-le v8, v9, :cond_46

    .line 282
    invoke-static {p0}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(Ljava/io/InputStream;)Z

    move-result v9

    if-eqz v9, :cond_2f

    goto :goto_46

    .line 317
    :cond_2f
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong header version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "archiveVersion":I
    goto :goto_89

    .line 286
    .restart local v6    # "s":Ljava/lang/String;
    .restart local v8    # "archiveVersion":I
    :cond_46
    :goto_46
    const/4 v9, 0x0

    if-ne v8, v7, :cond_4b

    move v10, v7

    goto :goto_4c

    :cond_4b
    move v10, v9

    .line 288
    .local v10, "pbkdf2Fallback":Z
    :goto_4c
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_58

    move v9, v7

    nop

    :cond_58
    move v0, v9

    .line 290
    invoke-static {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 291
    const-string/jumbo v9, "none"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 293
    const/4 v2, 0x1

    goto :goto_88

    .line 294
    :cond_68
    const/4 v9, 0x3

    if-eqz p1, :cond_7e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7e

    .line 295
    invoke-static {p1, v6, v10, p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->decodeAesHeaderAndInitialize(Ljava/lang/String;Ljava/lang/String;ZLjava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_78

    .line 299
    const/4 v2, 0x1

    .line 302
    :cond_78
    if-nez v1, :cond_88

    .line 303
    invoke-static {v9, p0}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(ILjava/io/InputStream;)V

    goto :goto_88

    .line 309
    :cond_7e
    const-string v11, "BackupManagerService"

    const-string v12, "Archive is encrypted but no password given"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {v9, p0}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(ILjava/io/InputStream;)V

    .line 316
    .end local v10    # "pbkdf2Fallback":Z
    :cond_88
    :goto_88
    nop

    .line 319
    .end local v6    # "s":Ljava/lang/String;
    .end local v8    # "archiveVersion":I
    :goto_89
    goto :goto_91

    .line 320
    :cond_8a
    const-string v6, "BackupManagerService"

    const-string v8, "Didn\'t read the right header magic"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_91
    if-nez v2, :cond_9f

    .line 324
    const-string v6, "BackupManagerService"

    const-string v8, "Invalid restore data; aborting."

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {v7, p0}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(ILjava/io/InputStream;)V

    .line 329
    const/4 v6, 0x0

    return-object v6

    .line 333
    :cond_9f
    if-eqz v0, :cond_a7

    new-instance v6, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_a8

    :cond_a7
    move-object v6, v1

    :goto_a8
    return-object v6
.end method

.method private static readFullyOrThrow(Ljava/io/InputStream;[B)V
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "offset":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 252
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 253
    .local v1, "bytesRead":I
    if-lez v1, :cond_e

    .line 256
    add-int/2addr v0, v1

    .line 257
    .end local v1    # "bytesRead":I
    goto :goto_1

    .line 254
    .restart local v1    # "bytesRead":I
    :cond_e
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Couldn\'t fully read data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    .end local v1    # "bytesRead":I
    :cond_16
    return-void
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 339
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_18

    .line 340
    const/16 v1, 0xa

    if-ne v2, v1, :cond_13

    .line 341
    goto :goto_18

    .line 343
    :cond_13
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 345
    :cond_18
    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 861
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 862
    return-void
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .registers 11
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "doRestoreFinished"    # Z

    .line 879
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_a9

    .line 881
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    .line 884
    if-eqz p2, :cond_5a

    .line 885
    :try_start_b
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    .line 886
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 887
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 888
    .local v3, "fullBackupAgentTimeoutMillis":J
    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, v2, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/BackupManagerService;I)V

    move-object v7, v1

    .line 890
    .local v7, "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x1

    move v2, v0

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 892
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 896
    new-instance v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, v2, v0, v5}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/BackupManagerService;)V

    .line 898
    .local v1, "runner":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-finished-runner"

    invoke-direct {v2, v1, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 899
    .end local v1    # "runner":Ljava/lang/Runnable;
    goto :goto_54

    .line 900
    :cond_49
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 901
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 900
    invoke-interface {v1, v0, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 904
    :goto_54
    invoke-virtual {v7}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->await()V

    .line 904
    .end local v0    # "token":I
    .end local v3    # "fullBackupAgentTimeoutMillis":J
    .end local v7    # "latch":Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
    goto :goto_5a

    .line 924
    :catch_58
    move-exception v0

    goto :goto_9e

    .line 910
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 915
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_96

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.backupconfirm"

    .line 916
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    .line 917
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isNeedBeKilled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 918
    const-string v0, "BackupManagerService"

    const-string v1, "Killing host process"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    goto :goto_9d

    .line 921
    :cond_96
    const-string v0, "BackupManagerService"

    const-string v1, "Not killing after full restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_9d} :catch_58

    .line 926
    :goto_9d
    goto :goto_a6

    .line 924
    :goto_9e
    nop

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 929
    :cond_a9
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    .line 865
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_28

    .line 867
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 868
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2

    .line 869
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 870
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 873
    goto :goto_26

    .line 871
    :catch_1e
    move-exception v1

    .line 872
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    .end local v1    # "e":Ljava/io/IOException;
    :goto_26
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 876
    :cond_28
    return-void
.end method


# virtual methods
.method restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 51
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v15, p6

    .line 469
    new-instance v0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;

    invoke-direct {v0, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask$1;-><init>(Lcom/android/server/backup/restore/PerformAdbRestoreTask;)V

    move-object v14, v0

    .line 475
    .local v14, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v13, p7

    invoke-direct {v0, v10, v14, v13}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v12, v0

    .line 479
    .local v12, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    :try_start_19
    invoke-virtual {v12}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v5, v0

    .line 480
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v5, :cond_68a

    .line 485
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v4, v0

    .line 486
    .local v4, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_29} :catch_696

    if-nez v0, :cond_60

    .line 489
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 490
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_3a
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_60

    .line 497
    const-string v0, "BackupManagerService"

    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 501
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0, v8}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 502
    iput-object v9, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 503
    iput-object v9, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_51} :catch_52

    goto :goto_60

    .line 838
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_52
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object v3, v10

    move-object v7, v11

    move-object v4, v13

    move-object/from16 v28, v14

    move v2, v15

    move v13, v6

    goto/16 :goto_6a3

    .line 507
    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_60
    :goto_60
    :try_start_60
    iget-object v0, v5, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_manifest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_68} :catch_696

    if-eqz v0, :cond_ca

    .line 508
    :try_start_6a
    invoke-virtual {v12, v5}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 512
    .local v0, "signatures":[Landroid/content/pm/Signature;
    iget-wide v2, v5, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAppVersion:J

    .line 513
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 515
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 516
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_81} :catch_bb

    .line 515
    move-object v2, v12

    move-object v11, v4

    move/from16 v4, p5

    .line 515
    .end local v4    # "pkg":Ljava/lang/String;
    .local v11, "pkg":Ljava/lang/String;
    move-object/from16 v25, v5

    .line 515
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .local v25, "info":Lcom/android/server/backup/FileMetadata;
    move v13, v6

    move-object v6, v0

    :try_start_89
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 518
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v6, v25

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 518
    .end local v25    # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v12, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 525
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v11}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_af} :catch_101

    .line 526
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v7    # "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 844
    move-object v9, v6

    move/from16 v26, v8

    move-object v3, v10

    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v7, p3

    goto/16 :goto_693

    .line 838
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "pkg":Ljava/lang/String;
    :catch_bb
    move-exception v0

    move v13, v6

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object v3, v10

    move-object v7, v11

    move-object/from16 v28, v14

    move v2, v15

    .line 838
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v28, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_c6
    move-object/from16 v4, p7

    goto/16 :goto_6a3

    .line 526
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v4, "pkg":Ljava/lang/String;
    .restart local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_ca
    move-object v11, v4

    move v13, v6

    move-object v6, v5

    .line 526
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "pkg":Ljava/lang/String;
    :try_start_cd
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_meta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d5} :catch_67e

    if-eqz v0, :cond_110

    .line 528
    :try_start_d7
    invoke-virtual {v12, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 534
    invoke-virtual {v12}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mWidgetData:[B

    .line 536
    invoke-virtual {v12}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_e4} :catch_101

    move-object v2, v0

    .line 538
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_e5
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v12, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ea} :catch_f6

    .line 844
    move-object v0, v2

    move-object v9, v6

    move/from16 v26, v8

    move-object v3, v10

    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v7, p3

    goto/16 :goto_695

    .line 838
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "pkg":Ljava/lang/String;
    :catch_f6
    move-exception v0

    move-object v4, v2

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object v3, v10

    move-object/from16 v28, v14

    move v2, v15

    goto :goto_10c

    .line 838
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_101
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object v3, v10

    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v4, p7

    .line 838
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_10c
    move-object/from16 v7, p3

    goto/16 :goto_6a3

    .line 542
    .end local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_110
    const/4 v0, 0x1

    .line 543
    .local v0, "okay":Z
    :try_start_111
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v7, v2

    .line 545
    .local v7, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-wide v2, v6, Lcom/android/server/backup/FileMetadata;->size:J

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->addRestoredSize(JI)V

    .line 546
    sget-object v2, Lcom/android/server/backup/restore/PerformAdbRestoreTask$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v7}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_12d} :catch_67e

    packed-switch v2, :pswitch_data_6b6

    .line 600
    move-object/from16 v25, v7

    move v13, v8

    move-object/from16 v27, v9

    move-object v9, v6

    .line 600
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v9, "info":Lcom/android/server/backup/FileMetadata;
    .local v25, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_136
    const-string v2, "BackupManagerService"
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_138} :catch_673

    goto/16 :goto_1e2

    .line 584
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_13a
    :try_start_13a
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 586
    const-string v2, "BackupManagerService"

    const-string v3, "apk present but ACCEPT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_14b} :catch_101

    .line 592
    const/4 v0, 0x0

    .line 607
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_14c
    move-object/from16 v25, v7

    move v13, v8

    move-object/from16 v27, v9

    move-object v9, v6

    goto/16 :goto_1ef

    .line 554
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :pswitch_154
    :try_start_154
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 556
    const-string v2, "BackupManagerService"

    const-string v3, "APK file; installing"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_16d} :catch_1ca

    move v5, v8

    move-object v8, v2

    .line 560
    .local v8, "installerPackageName":Ljava/lang/String;
    :try_start_16f
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 561
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mManifestSignatures:Ljava/util/HashMap;
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_179} :catch_1b0

    :try_start_179
    iget-object v9, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17b} :catch_1ac

    .line 560
    move-object/from16 v16, v2

    move-object v2, v10

    move v13, v5

    move-object/from16 v5, v16

    move-object/from16 v29, v6

    move-object v6, v9

    .line 560
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    move-object/from16 v25, v7

    move-object/from16 v7, v29

    .line 560
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/16 v27, 0x0

    move-object v9, v14

    :try_start_18b
    invoke-static/range {v2 .. v9}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z

    move-result v2

    .line 565
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_196

    .line 566
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_198

    .line 567
    :cond_196
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 565
    :goto_198
    invoke-virtual {v3, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object/from16 v9, v29

    iget-wide v3, v9, Lcom/android/server/backup/FileMetadata;->size:J

    .line 571
    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v12, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 573
    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->onApkInstalled(I)V

    .line 574
    return v13

    .line 838
    .end local v0    # "okay":Z
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_1ac
    move-exception v0

    const/16 v27, 0x0

    goto :goto_1b3

    :catch_1b0
    move-exception v0

    move-object/from16 v27, v9

    .line 838
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_1b3
    move/from16 v26, v5

    goto :goto_1cf

    .line 578
    .end local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v0    # "okay":Z
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_1b6
    move-object/from16 v25, v7

    move v13, v8

    move-object/from16 v27, v9

    move-object v9, v6

    .line 578
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_1c3} :catch_1c5

    .line 579
    const/4 v0, 0x0

    .line 581
    goto :goto_1ef

    .line 838
    .end local v0    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_1c5
    move-exception v0

    move-object v3, v10

    move/from16 v26, v13

    goto :goto_1d0

    :catch_1ca
    move-exception v0

    move-object/from16 v27, v9

    move/from16 v26, v8

    .line 838
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_1cf
    move-object v3, v10

    :goto_1d0
    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v4, p7

    :goto_1d5
    move-object/from16 v7, p3

    :goto_1d7
    const/4 v13, 0x0

    goto/16 :goto_6a3

    .line 548
    .end local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v0    # "okay":Z
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :pswitch_1da
    move-object/from16 v25, v7

    move v13, v8

    move-object/from16 v27, v9

    move-object v9, v6

    .line 548
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v0, 0x0

    .line 549
    goto :goto_1ef

    .line 600
    :goto_1e2
    :try_start_1e2
    const-string v3, "Invalid policy from manifest"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    .line 602
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :goto_1ef
    iget-object v2, v9, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v2
    :try_end_1f5
    .catch Ljava/io/IOException; {:try_start_1e2 .. :try_end_1f5} :catch_673

    if-nez v2, :cond_1f8

    .line 608
    const/4 v0, 0x0

    .line 613
    .end local v0    # "okay":Z
    .local v2, "okay":Z
    :cond_1f8
    move v2, v0

    if-eqz v2, :cond_206

    :try_start_1fb
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_206

    .line 614
    const-string v0, "BackupManagerService"

    const-string v3, "Reusing existing agent instance"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_206
    if-eqz v2, :cond_2df

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_2df

    .line 618
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to launch agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_1fb .. :try_end_222} :catch_1c5

    .line 626
    :try_start_222
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 627
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    .line 626
    invoke-static {v0, v11, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 632
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_274

    .line 636
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_24f

    .line 638
    const-string v0, "BackupManagerService"

    const-string v3, "Clearing app data preparatory to full restore"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v11, v13}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    goto :goto_26e

    .line 644
    :cond_24f
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup agent ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") => no clear"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_26e
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_27b

    .line 651
    :cond_274
    const-string v0, "BackupManagerService"

    const-string v3, "We\'ve initialized this app already; no clear required"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_27b
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceInjector;->waitingBeforeGetAgent()V

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->setUpPipes()V

    .line 661
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 662
    const-string/jumbo v4, "k"

    iget-object v5, v9, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_293

    .line 663
    nop

    .line 661
    const/4 v6, 0x0

    goto :goto_294

    .line 664
    :cond_293
    const/4 v6, 0x3

    .line 661
    :goto_294
    invoke-virtual {v0, v3, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 666
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v4, v13

    invoke-static {v0, v3, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V

    .line 667
    iput-object v11, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;
    :try_end_2ab
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_2ab} :catch_2ae
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_222 .. :try_end_2ab} :catch_2ac

    goto :goto_2af

    .line 670
    :catch_2ac
    move-exception v0

    goto :goto_2b0

    .line 668
    :catch_2ae
    move-exception v0

    .line 672
    :goto_2af
    nop

    .line 674
    :goto_2b0
    :try_start_2b0
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_2df

    .line 676
    const/4 v0, 0x2

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->errorOccur(II)V

    .line 677
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v2, 0x0

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 680
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :cond_2df
    if-eqz v2, :cond_30a

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30a

    .line 687
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " but agent is for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_309
    .catch Ljava/io/IOException; {:try_start_2b0 .. :try_end_309} :catch_1c5

    .line 689
    const/4 v2, 0x0

    .line 696
    .end local v2    # "okay":Z
    .local v8, "okay":Z
    :cond_30a
    move v8, v2

    const-wide/16 v29, 0x0

    if-eqz v8, :cond_61f

    .line 697
    const/16 v31, 0x1

    .line 698
    .local v31, "agentSuccess":Z
    :try_start_311
    iget-wide v2, v9, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v32, v2

    .line 699
    .local v32, "toCopy":J
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 700
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v4
    :try_end_31b
    .catch Ljava/io/IOException; {:try_start_311 .. :try_end_31b} :catch_611

    .line 702
    .local v4, "restoreAgentTimeoutMillis":J
    :try_start_31b
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 705
    const-string/jumbo v0, "obb"

    iget-object v2, v9, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_32c
    .catch Ljava/io/IOException; {:try_start_31b .. :try_end_32c} :catch_509
    .catch Landroid/os/RemoteException; {:try_start_31b .. :try_end_32c} :catch_4e8

    if-eqz v0, :cond_3f9

    .line 707
    :try_start_32e
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring OBB file for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v2, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_352
    .catch Ljava/io/IOException; {:try_start_32e .. :try_end_352} :catch_3e8
    .catch Landroid/os/RemoteException; {:try_start_32e .. :try_end_352} :catch_3d7

    const/4 v3, 0x0

    :try_start_353
    aget-object v2, v2, v3

    iget-wide v6, v9, Lcom/android/server/backup/FileMetadata;->size:J

    iget v3, v9, Lcom/android/server/backup/FileMetadata;->type:I
    :try_end_359
    .catch Ljava/io/IOException; {:try_start_353 .. :try_end_359} :catch_3ca
    .catch Landroid/os/RemoteException; {:try_start_353 .. :try_end_359} :catch_3bd

    move-wide/from16 v34, v4

    :try_start_35b
    iget-object v4, v9, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 710
    .end local v4    # "restoreAgentTimeoutMillis":J
    .local v34, "restoreAgentTimeoutMillis":J
    move-object/from16 v36, v4

    iget-wide v4, v9, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v37, v4

    iget-wide v4, v9, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_365
    .catch Ljava/io/IOException; {:try_start_35b .. :try_end_365} :catch_3af
    .catch Landroid/os/RemoteException; {:try_start_35b .. :try_end_365} :catch_3a1

    :try_start_365
    iget-object v13, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 713
    invoke-virtual {v13}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v24
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_365 .. :try_end_36b} :catch_396
    .catch Landroid/os/RemoteException; {:try_start_365 .. :try_end_36b} :catch_38b

    .line 710
    move-object v13, v12

    move-object v12, v0

    .line 710
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v13, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move/from16 v39, v8

    move-object/from16 v40, v13

    const/4 v8, 0x0

    const/16 v26, 0x1

    move-object v13, v11

    .line 710
    .end local v8    # "okay":Z
    .end local v13    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v39, "okay":Z
    .local v40, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move-object/from16 v28, v14

    move-object v14, v2

    .line 710
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    move v2, v15

    move-wide v15, v6

    move/from16 v17, v3

    move-object/from16 v18, v36

    move-wide/from16 v19, v37

    move-wide/from16 v21, v4

    move/from16 v23, v2

    :try_start_384
    invoke-virtual/range {v12 .. v24}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_387
    .catch Ljava/io/IOException; {:try_start_384 .. :try_end_387} :catch_45f
    .catch Landroid/os/RemoteException; {:try_start_384 .. :try_end_387} :catch_45a

    .line 757
    .end local v11    # "pkg":Ljava/lang/String;
    .local v41, "pkg":Ljava/lang/String;
    :goto_387
    move-object/from16 v41, v11

    goto/16 :goto_4d8

    .line 751
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v39    # "okay":Z
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v8    # "okay":Z
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_38b
    move-exception v0

    move/from16 v39, v8

    move-object/from16 v40, v12

    move-object/from16 v28, v14

    move v2, v15

    const/16 v26, 0x1

    goto :goto_3ab

    .line 746
    :catch_396
    move-exception v0

    move/from16 v39, v8

    move-object/from16 v40, v12

    move-object/from16 v28, v14

    move v2, v15

    const/16 v26, 0x1

    goto :goto_3b9

    .line 751
    :catch_3a1
    move-exception v0

    move/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    .line 751
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_3ab
    move-object/from16 v41, v11

    .line 751
    .end local v8    # "okay":Z
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v39    # "okay":Z
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_4f6

    .line 746
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v39    # "okay":Z
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v8    # "okay":Z
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_3af
    move-exception v0

    move/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    .line 746
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_3b9
    move-object/from16 v41, v11

    .line 746
    .end local v8    # "okay":Z
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v39    # "okay":Z
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_517

    .line 751
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v39    # "okay":Z
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v4    # "restoreAgentTimeoutMillis":J
    .restart local v8    # "okay":Z
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_3bd
    move-exception v0

    move-wide/from16 v34, v4

    move/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    goto :goto_3e4

    .line 746
    :catch_3ca
    move-exception v0

    move-wide/from16 v34, v4

    move/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    goto :goto_3f5

    .line 751
    :catch_3d7
    move-exception v0

    move-wide/from16 v34, v4

    move/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    const/4 v8, 0x0

    .line 751
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_3e4
    move-object/from16 v41, v11

    .line 751
    .end local v4    # "restoreAgentTimeoutMillis":J
    .end local v8    # "okay":Z
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v34    # "restoreAgentTimeoutMillis":J
    .restart local v39    # "okay":Z
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_4f6

    .line 746
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v39    # "okay":Z
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v4    # "restoreAgentTimeoutMillis":J
    .restart local v8    # "okay":Z
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_3e8
    move-exception v0

    move-wide/from16 v34, v4

    move/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    const/4 v8, 0x0

    .line 746
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_3f5
    move-object/from16 v41, v11

    .line 746
    .end local v4    # "restoreAgentTimeoutMillis":J
    .end local v8    # "okay":Z
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v34    # "restoreAgentTimeoutMillis":J
    .restart local v39    # "okay":Z
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_517

    .line 714
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v39    # "okay":Z
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v4    # "restoreAgentTimeoutMillis":J
    .restart local v8    # "okay":Z
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_3f9
    move-wide/from16 v34, v4

    move/from16 v39, v8

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    const/4 v8, 0x0

    .line 714
    .end local v4    # "restoreAgentTimeoutMillis":J
    .end local v8    # "okay":Z
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v34    # "restoreAgentTimeoutMillis":J
    .restart local v39    # "okay":Z
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_405
    const-string/jumbo v0, "k"

    iget-object v3, v9, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_40e
    .catch Ljava/io/IOException; {:try_start_405 .. :try_end_40e} :catch_4e4
    .catch Landroid/os/RemoteException; {:try_start_405 .. :try_end_40e} :catch_4e0

    if-eqz v0, :cond_464

    .line 716
    :try_start_410
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-wide v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAppVersion:J

    iput-wide v3, v9, Lcom/android/server/backup/FileMetadata;->version:J

    .line 721
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v13, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 724
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v14

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v16, v3, v8

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object v12, v0

    move-object v15, v9

    move-object/from16 v17, v3

    move/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 726
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_458
    .catch Ljava/io/IOException; {:try_start_410 .. :try_end_458} :catch_45f
    .catch Landroid/os/RemoteException; {:try_start_410 .. :try_end_458} :catch_45a

    .line 727
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    goto/16 :goto_387

    .line 751
    :catch_45a
    move-exception v0

    move-object/from16 v41, v11

    goto/16 :goto_4f6

    .line 746
    :catch_45f
    move-exception v0

    move-object/from16 v41, v11

    goto/16 :goto_517

    .line 729
    :cond_464
    :try_start_464
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoking agent to restore file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v3, "system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_487
    .catch Ljava/io/IOException; {:try_start_464 .. :try_end_487} :catch_4e4
    .catch Landroid/os/RemoteException; {:try_start_464 .. :try_end_487} :catch_4e0

    if-eqz v0, :cond_4af

    .line 736
    :try_start_489
    const-string v0, "BackupManagerService"

    const-string/jumbo v3, "system process agent - spinning a thread"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v13, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v16, v3, v8

    move-object v12, v0

    move-object v15, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 739
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_4ad
    .catch Ljava/io/IOException; {:try_start_489 .. :try_end_4ad} :catch_45f
    .catch Landroid/os/RemoteException; {:try_start_489 .. :try_end_4ad} :catch_45a

    .line 740
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    goto/16 :goto_387

    .line 741
    :cond_4af
    :try_start_4af
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v13, v0, v8

    iget-wide v14, v9, Lcom/android/server/backup/FileMetadata;->size:J

    iget v0, v9, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v3, v9, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v5, v9, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v7, v9, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_4c1
    .catch Ljava/io/IOException; {:try_start_4af .. :try_end_4c1} :catch_4e4
    .catch Landroid/os/RemoteException; {:try_start_4af .. :try_end_4c1} :catch_4e0

    move-object/from16 v41, v11

    :try_start_4c3
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 743
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v24

    .line 741
    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    move/from16 v23, v2

    invoke-interface/range {v12 .. v24}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_4d8
    .catch Ljava/io/IOException; {:try_start_4c3 .. :try_end_4d8} :catch_4de
    .catch Landroid/os/RemoteException; {:try_start_4c3 .. :try_end_4d8} :catch_4dc

    .line 757
    :goto_4d8
    nop

    .line 760
    move/from16 v8, v39

    goto :goto_523

    .line 751
    :catch_4dc
    move-exception v0

    goto :goto_4f6

    .line 746
    :catch_4de
    move-exception v0

    goto :goto_517

    .line 751
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    :catch_4e0
    move-exception v0

    move-object/from16 v41, v11

    .line 751
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    goto :goto_4f6

    .line 746
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    :catch_4e4
    move-exception v0

    move-object/from16 v41, v11

    .line 746
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v41    # "pkg":Ljava/lang/String;
    goto :goto_517

    .line 751
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v39    # "okay":Z
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v4    # "restoreAgentTimeoutMillis":J
    .restart local v8    # "okay":Z
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_4e8
    move-exception v0

    move-wide/from16 v34, v4

    move/from16 v39, v8

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    .line 754
    .end local v4    # "restoreAgentTimeoutMillis":J
    .end local v8    # "okay":Z
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v34    # "restoreAgentTimeoutMillis":J
    .restart local v39    # "okay":Z
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_4f6
    :try_start_4f6
    const-string v3, "BackupManagerService"

    const-string v4, "Agent crashed during full restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4fd
    .catch Ljava/io/IOException; {:try_start_4f6 .. :try_end_4fd} :catch_501

    .line 755
    const/16 v31, 0x0

    .line 756
    const/4 v0, 0x0

    .line 756
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    goto :goto_522

    .line 838
    .end local v0    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v31    # "agentSuccess":Z
    .end local v32    # "toCopy":J
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v41    # "pkg":Ljava/lang/String;
    :catch_501
    move-exception v0

    move-object/from16 v4, p7

    move-object v3, v10

    move-object/from16 v12, v40

    goto/16 :goto_1d5

    .line 746
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v4    # "restoreAgentTimeoutMillis":J
    .restart local v8    # "okay":Z
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "agentSuccess":Z
    .restart local v32    # "toCopy":J
    :catch_509
    move-exception v0

    move-wide/from16 v34, v4

    move/from16 v39, v8

    move-object/from16 v41, v11

    move-object/from16 v40, v12

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    .line 748
    .end local v4    # "restoreAgentTimeoutMillis":J
    .end local v8    # "okay":Z
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v0, "e":Ljava/io/IOException;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v34    # "restoreAgentTimeoutMillis":J
    .restart local v39    # "okay":Z
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "pkg":Ljava/lang/String;
    :goto_517
    :try_start_517
    const-string v3, "BackupManagerService"

    const-string v4, "Couldn\'t establish restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/16 v31, 0x0

    .line 750
    const/4 v0, 0x0

    .line 757
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    nop

    .line 760
    .end local v0    # "okay":Z
    .restart local v8    # "okay":Z
    :goto_522
    move v8, v0

    :goto_523
    if-eqz v8, :cond_5ba

    .line 761
    const/4 v0, 0x1

    .line 762
    .local v0, "pipeOkay":Z
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v4, v4, v26

    .line 763
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_533
    .catch Ljava/io/IOException; {:try_start_517 .. :try_end_533} :catch_606

    move v6, v0

    move-wide/from16 v4, v32

    .line 764
    .end local v0    # "pipeOkay":Z
    .end local v32    # "toCopy":J
    .local v3, "pipe":Ljava/io/FileOutputStream;
    .local v4, "toCopy":J
    .local v6, "pipeOkay":Z
    :goto_536
    cmp-long v0, v4, v29

    if-lez v0, :cond_58e

    .line 765
    move-object/from16 v11, v41

    move-object/from16 v7, p3

    :try_start_53e
    array-length v0, v7

    .line 765
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    int-to-long v12, v0

    cmp-long v0, v4, v12

    if-lez v0, :cond_546

    .line 766
    array-length v0, v7
    :try_end_545
    .catch Ljava/io/IOException; {:try_start_53e .. :try_end_545} :catch_586

    goto :goto_547

    :cond_546
    long-to-int v0, v4

    :goto_547
    move v12, v0

    .line 767
    .local v12, "toRead":I
    const/4 v13, 0x0

    :try_start_549
    invoke-virtual {v10, v7, v13, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_54d
    .catch Ljava/io/IOException; {:try_start_549 .. :try_end_54d} :catch_57e

    move v13, v0

    .line 768
    .local v13, "nRead":I
    if-ltz v13, :cond_560

    .line 769
    :try_start_550
    iget-wide v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_552
    .catch Ljava/io/IOException; {:try_start_550 .. :try_end_552} :catch_586

    move-object/from16 v42, v11

    int-to-long v10, v13

    .line 769
    .end local v11    # "pkg":Ljava/lang/String;
    .local v42, "pkg":Ljava/lang/String;
    add-long/2addr v14, v10

    :try_start_556
    iput-wide v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_558
    .catch Ljava/io/IOException; {:try_start_556 .. :try_end_558} :catch_559

    goto :goto_562

    .line 838
    .end local v3    # "pipe":Ljava/io/FileOutputStream;
    .end local v4    # "toCopy":J
    .end local v6    # "pipeOkay":Z
    .end local v8    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v12    # "toRead":I
    .end local v13    # "nRead":I
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v31    # "agentSuccess":Z
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v42    # "pkg":Ljava/lang/String;
    :catch_559
    move-exception v0

    move-object/from16 v4, p7

    move-object/from16 v12, v40

    goto/16 :goto_649

    .line 771
    .restart local v3    # "pipe":Ljava/io/FileOutputStream;
    .restart local v4    # "toCopy":J
    .restart local v6    # "pipeOkay":Z
    .restart local v8    # "okay":Z
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "toRead":I
    .restart local v13    # "nRead":I
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "agentSuccess":Z
    .restart local v34    # "restoreAgentTimeoutMillis":J
    :cond_560
    move-object/from16 v42, v11

    .line 771
    .end local v11    # "pkg":Ljava/lang/String;
    .restart local v42    # "pkg":Ljava/lang/String;
    :goto_562
    if-gtz v13, :cond_565

    .line 772
    goto :goto_592

    .line 774
    :cond_565
    int-to-long v10, v13

    sub-long/2addr v4, v10

    .line 778
    if-eqz v6, :cond_579

    .line 780
    const/4 v10, 0x0

    :try_start_56a
    invoke-virtual {v3, v7, v10, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_56d
    .catch Ljava/io/IOException; {:try_start_56a .. :try_end_56d} :catch_56e

    .line 784
    goto :goto_579

    .line 781
    :catch_56e
    move-exception v0

    move-object v10, v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    :try_start_570
    const-string v10, "BackupManagerService"

    const-string v11, "Failed to write to restore pipe"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_577
    .catch Ljava/io/IOException; {:try_start_570 .. :try_end_577} :catch_559

    .line 783
    const/4 v0, 0x0

    .line 786
    .end local v6    # "pipeOkay":Z
    .end local v12    # "toRead":I
    .end local v13    # "nRead":I
    .local v0, "pipeOkay":Z
    move v6, v0

    .line 763
    .end local v0    # "pipeOkay":Z
    .restart local v6    # "pipeOkay":Z
    :cond_579
    :goto_579
    move-object/from16 v41, v42

    move-object/from16 v10, p1

    goto :goto_536

    .line 838
    .end local v3    # "pipe":Ljava/io/FileOutputStream;
    .end local v4    # "toCopy":J
    .end local v6    # "pipeOkay":Z
    .end local v8    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v31    # "agentSuccess":Z
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v42    # "pkg":Ljava/lang/String;
    :catch_57e
    move-exception v0

    move-object/from16 v4, p7

    move-object v3, v10

    move-object/from16 v12, v40

    goto/16 :goto_6a3

    :catch_586
    move-exception v0

    move-object/from16 v4, p7

    move-object v3, v10

    move-object/from16 v12, v40

    goto/16 :goto_1d7

    .line 790
    .restart local v3    # "pipe":Ljava/io/FileOutputStream;
    .restart local v4    # "toCopy":J
    .restart local v6    # "pipeOkay":Z
    .restart local v8    # "okay":Z
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "agentSuccess":Z
    .restart local v34    # "restoreAgentTimeoutMillis":J
    .restart local v41    # "pkg":Ljava/lang/String;
    :cond_58e
    move-object/from16 v42, v41

    move-object/from16 v7, p3

    .line 790
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v42    # "pkg":Ljava/lang/String;
    :goto_592
    :try_start_592
    iget-wide v10, v9, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_594
    .catch Ljava/io/IOException; {:try_start_592 .. :try_end_594} :catch_5b2

    move-object/from16 v12, v40

    :try_start_596
    invoke-virtual {v12, v10, v11}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 796
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v12, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v0

    if-eqz v0, :cond_5ac

    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 797
    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0

    if-eqz v0, :cond_5ac

    move/from16 v0, v26

    goto :goto_5ad

    :cond_5ac
    const/4 v0, 0x0

    :goto_5ad
    move/from16 v31, v0

    .line 803
    .end local v3    # "pipe":Ljava/io/FileOutputStream;
    .end local v6    # "pipeOkay":Z
    move-wide/from16 v32, v4

    goto :goto_5c0

    .line 838
    .end local v4    # "toCopy":J
    .end local v8    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v31    # "agentSuccess":Z
    .end local v34    # "restoreAgentTimeoutMillis":J
    .end local v42    # "pkg":Ljava/lang/String;
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5b2
    move-exception v0

    move-object/from16 v12, v40

    move-object/from16 v4, p7

    move-object/from16 v3, p1

    goto :goto_60e

    .line 803
    .restart local v8    # "okay":Z
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v31    # "agentSuccess":Z
    .restart local v32    # "toCopy":J
    .restart local v34    # "restoreAgentTimeoutMillis":J
    .restart local v41    # "pkg":Ljava/lang/String;
    :cond_5ba
    move-object/from16 v12, v40

    move-object/from16 v42, v41

    move-object/from16 v7, p3

    .line 803
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v41    # "pkg":Ljava/lang/String;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v42    # "pkg":Ljava/lang/String;
    :goto_5c0
    if-nez v31, :cond_603

    .line 805
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Agent failure restoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v42

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v42    # "pkg":Ljava/lang/String;
    .local v4, "pkg":Ljava/lang/String;
    const-string v5, "; now ignoring"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 810
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;
    :try_end_5ef
    .catch Ljava/io/IOException; {:try_start_596 .. :try_end_5ef} :catch_646

    const/4 v3, 0x0

    :try_start_5f0
    invoke-direct {v1, v0, v3}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_5f3
    .catch Ljava/io/IOException; {:try_start_5f0 .. :try_end_5f3} :catch_5fb

    .line 811
    :try_start_5f3
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5fa
    .catch Ljava/io/IOException; {:try_start_5f3 .. :try_end_5fa} :catch_646

    .line 811
    .end local v31    # "agentSuccess":Z
    .end local v32    # "toCopy":J
    .end local v34    # "restoreAgentTimeoutMillis":J
    goto :goto_629

    .line 838
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v8    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_5fb
    move-exception v0

    move-object/from16 v4, p7

    move v13, v3

    move-object/from16 v3, p1

    goto/16 :goto_6a3

    .line 818
    .restart local v8    # "okay":Z
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v42    # "pkg":Ljava/lang/String;
    :cond_603
    move-object/from16 v4, v42

    .line 818
    .end local v42    # "pkg":Ljava/lang/String;
    .restart local v4    # "pkg":Ljava/lang/String;
    goto :goto_629

    .line 838
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v8    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_606
    move-exception v0

    move-object/from16 v12, v40

    move-object/from16 v7, p3

    move-object/from16 v4, p7

    move-object v3, v10

    .line 838
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_60e
    const/4 v13, 0x0

    .line 838
    .end local v40    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v12    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_6a3

    .line 838
    .end local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_611
    move-exception v0

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v7, p3

    move-object/from16 v4, p7

    move-object v3, v10

    const/4 v13, 0x0

    goto/16 :goto_6a3

    .line 818
    .restart local v8    # "okay":Z
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_61f
    move/from16 v39, v8

    move-object v4, v11

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v7, p3

    .line 818
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v4, "pkg":Ljava/lang/String;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_629
    if-nez v8, :cond_66f

    .line 820
    :try_start_62b
    const-string v0, "BackupManagerService"

    const-string v3, "[discarding file content]"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-wide v5, v9, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x1ff

    add-long/2addr v5, v10

    const-wide/16 v10, -0x200

    and-long/2addr v5, v10

    .line 823
    .local v5, "bytesToConsume":J
    :goto_63a
    cmp-long v0, v5, v29

    if-lez v0, :cond_66f

    .line 824
    array-length v0, v7
    :try_end_63f
    .catch Ljava/io/IOException; {:try_start_62b .. :try_end_63f} :catch_669

    int-to-long v10, v0

    cmp-long v0, v5, v10

    if-lez v0, :cond_64d

    .line 825
    :try_start_644
    array-length v0, v7
    :try_end_645
    .catch Ljava/io/IOException; {:try_start_644 .. :try_end_645} :catch_646

    goto :goto_64e

    .line 838
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "bytesToConsume":J
    .end local v8    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_646
    move-exception v0

    move-object/from16 v4, p7

    .line 838
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_649
    move-object/from16 v3, p1

    goto/16 :goto_1d7

    .line 825
    .local v4, "pkg":Ljava/lang/String;
    .restart local v5    # "bytesToConsume":J
    .restart local v8    # "okay":Z
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_64d
    long-to-int v0, v5

    .line 826
    .local v0, "toRead":I
    :goto_64e
    move-object/from16 v3, p1

    const/4 v13, 0x0

    :try_start_651
    invoke-virtual {v3, v7, v13, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    int-to-long v10, v10

    .line 827
    .local v10, "nRead":J
    cmp-long v14, v10, v29

    if-ltz v14, :cond_65f

    .line 828
    iget-wide v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    add-long/2addr v14, v10

    iput-wide v14, v1, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J
    :try_end_65f
    .catch Ljava/io/IOException; {:try_start_651 .. :try_end_65f} :catch_666

    .line 830
    :cond_65f
    cmp-long v14, v10, v29

    if-gtz v14, :cond_664

    .line 831
    goto :goto_693

    .line 833
    :cond_664
    sub-long/2addr v5, v10

    .line 834
    .end local v0    # "toRead":I
    .end local v10    # "nRead":J
    goto :goto_63a

    .line 838
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "bytesToConsume":J
    .end local v8    # "okay":Z
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v25    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_666
    move-exception v0

    goto/16 :goto_c6

    :catch_669
    move-exception v0

    move-object/from16 v3, p1

    const/4 v13, 0x0

    goto/16 :goto_c6

    .line 844
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_66f
    move-object/from16 v3, p1

    const/4 v13, 0x0

    goto :goto_693

    .line 838
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :catch_673
    move-exception v0

    move-object v3, v10

    move/from16 v26, v13

    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v7, p3

    const/4 v13, 0x0

    goto :goto_6a1

    :catch_67e
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object v3, v10

    move-object/from16 v28, v14

    move v2, v15

    move-object/from16 v7, p3

    goto :goto_6a1

    .line 844
    .local v5, "info":Lcom/android/server/backup/FileMetadata;
    :cond_68a
    move-object v9, v5

    move v13, v6

    move/from16 v26, v8

    move-object v3, v10

    move-object v7, v11

    move-object/from16 v28, v14

    move v2, v15

    .line 844
    .end local v5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_693
    move-object/from16 v0, p7

    .line 844
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_695
    goto :goto_6ae

    .line 838
    .end local v0    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_696
    move-exception v0

    move v13, v6

    move/from16 v26, v8

    move-object/from16 v27, v9

    move-object v3, v10

    move-object v7, v11

    move-object/from16 v28, v14

    move v2, v15

    .line 838
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v4, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_6a1
    move-object/from16 v4, p7

    .line 840
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v0, "e":Ljava/io/IOException;
    .restart local v28    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_6a3
    const-string v5, "BackupManagerService"

    const-string v6, "io exception on restore socket read"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    nop

    .line 843
    .end local v0    # "e":Ljava/io/IOException;
    move-object v0, v4

    move-object/from16 v9, v27

    .line 843
    .end local v4    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v9    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_6ae
    move-object v4, v9

    .line 846
    .end local v9    # "info":Lcom/android/server/backup/FileMetadata;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v4, :cond_6b2

    goto :goto_6b4

    :cond_6b2
    move/from16 v26, v13

    :goto_6b4
    return v26

    nop

    :pswitch_data_6b6
    .packed-switch 0x1
        :pswitch_1da
        :pswitch_154
        :pswitch_13a
    .end packed-switch
.end method

.method public run()V
    .registers 14

    .line 174
    const-string v0, "BackupManagerService"

    const-string v1, "--- Performing full-dataset restore ---"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 176
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v0}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 179
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 180
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mPackagePolicies:Ljava/util/HashMap;

    const-string v1, "com.android.sharedstoragebackup"

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2a
    const/4 v0, 0x0

    .line 185
    .local v0, "rawInStream":Ljava/io/FileInputStream;
    const/4 v1, 0x1

    :try_start_2c
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 187
    const-string v2, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3d} :catch_15d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_15b

    .line 226
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 227
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 230
    if-eqz v0, :cond_4d

    .line 231
    :try_start_47
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_4d

    .line 234
    :catch_4b
    move-exception v2

    goto :goto_53

    .line 233
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_52} :catch_4b

    .line 237
    goto :goto_5b

    .line 234
    :goto_53
    nop

    .line 235
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5b
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 239
    :try_start_5e
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_87

    .line 242
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 243
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 244
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    return-void

    .line 241
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v1

    .line 192
    :cond_8a
    const-wide/16 v2, 0x0

    :try_start_8c
    iput-wide v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBytes:J

    .line 194
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v2

    .line 197
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V

    .line 199
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mDecryptPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->parseBackupFileHeaderAndReturnTarStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ab} :catch_15d
    .catchall {:try_start_8c .. :try_end_ab} :catchall_15b

    .line 201
    .local v2, "tarInputStream":Ljava/io/InputStream;
    if-nez v2, :cond_f9

    .line 226
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 227
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 230
    nop

    .line 231
    :try_start_b6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_bc

    .line 234
    :catch_ba
    move-exception v3

    goto :goto_c2

    .line 233
    :goto_bc
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_c1} :catch_ba

    .line 237
    goto :goto_ca

    .line 234
    :goto_c2
    nop

    .line 235
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v3    # "e":Ljava/io/IOException;
    :goto_ca
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 239
    :try_start_cd
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v3
    :try_end_d8
    .catchall {:try_start_cd .. :try_end_d8} :catchall_f6

    .line 242
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 243
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 244
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 204
    return-void

    .line 241
    :catchall_f6
    move-exception v1

    :try_start_f7
    monitor-exit v3
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v1

    .line 207
    :cond_f9
    const v3, 0x8000

    :try_start_fc
    new-array v3, v3, [B

    move-object v6, v3

    .line 210
    .local v6, "buffer":[B
    :cond_ff
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 212
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v9

    const/4 v10, 0x0

    .line 210
    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z

    move-result v3

    .line 213
    .local v3, "didRestore":Z
    if-nez v3, :cond_ff

    .line 215
    iget-object v7, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 216
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v9

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v10

    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 217
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12

    .line 215
    invoke-static/range {v7 .. v12}, Lcom/android/server/backup/BackupManagerServiceInjector;->restoreFileEnd(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;ILandroid/os/Handler;I)V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_12c} :catch_15d
    .catchall {:try_start_fc .. :try_end_12c} :catchall_15b

    .line 226
    .end local v2    # "tarInputStream":Ljava/io/InputStream;
    .end local v3    # "didRestore":Z
    .end local v6    # "buffer":[B
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 227
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 230
    nop

    .line 231
    :try_start_135
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_13b

    .line 234
    :catch_139
    move-exception v2

    goto :goto_141

    .line 233
    :goto_13b
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_140} :catch_139

    .line 237
    goto :goto_149

    .line 234
    :goto_141
    nop

    .line 235
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v2    # "e":Ljava/io/IOException;
    :goto_149
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 239
    :try_start_14c
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v2

    goto :goto_191

    :catchall_158
    move-exception v1

    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_14c .. :try_end_15a} :catchall_158

    throw v1

    .line 226
    :catchall_15b
    move-exception v2

    goto :goto_1b3

    .line 223
    :catch_15d
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_15e
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to read restore input"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catchall {:try_start_15e .. :try_end_165} :catchall_15b

    .line 226
    .end local v2    # "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 227
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 230
    if-eqz v0, :cond_175

    .line 231
    :try_start_16f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_175

    .line 234
    :catch_173
    move-exception v2

    goto :goto_17b

    .line 233
    :cond_175
    :goto_175
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_17a} :catch_173

    .line 237
    goto :goto_183

    .line 234
    :goto_17b
    nop

    .line 235
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v3, "BackupManagerService"

    const-string v4, "Close of restore data pipe threw"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v2    # "e":Ljava/io/IOException;
    :goto_183
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 239
    :try_start_186
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v2
    :try_end_191
    .catchall {:try_start_186 .. :try_end_191} :catchall_1b0

    .line 242
    :goto_191
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 243
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 244
    const-string v1, "BackupManagerService"

    const-string v2, "Full restore pass complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    nop

    .line 247
    return-void

    .line 241
    :catchall_1b0
    move-exception v1

    :try_start_1b1
    monitor-exit v2
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_1b0

    throw v1

    .line 226
    :goto_1b3
    invoke-direct {p0}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownPipes()V

    .line 227
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v1}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    .line 230
    if-eqz v0, :cond_1c3

    .line 231
    :try_start_1bd
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_1c3

    .line 234
    :catch_1c1
    move-exception v3

    goto :goto_1c9

    .line 233
    :cond_1c3
    :goto_1c3
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mInputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1c8} :catch_1c1

    .line 237
    goto :goto_1d1

    .line 234
    :goto_1c9
    nop

    .line 235
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Close of restore data pipe threw"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1d1
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 239
    :try_start_1d4
    iget-object v4, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mLatchObject:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v3
    :try_end_1df
    .catchall {:try_start_1d4 .. :try_end_1df} :catchall_1fd

    .line 242
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 243
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v1}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 244
    const-string v1, "BackupManagerService"

    const-string v3, "Full restore pass complete."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 241
    :catchall_1fd
    move-exception v1

    :try_start_1fe
    monitor-exit v3
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    throw v1
.end method
