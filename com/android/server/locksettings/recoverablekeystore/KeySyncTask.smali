.class public Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
.super Ljava/lang/Object;
.source "KeySyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LENGTH_PREFIX_BYTES:I = 0x4

.field private static final LOCK_SCREEN_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final RECOVERY_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final RECOVERY_KEY_SIZE_BITS:I = 0x100

.field private static final SALT_LENGTH_BYTES:I = 0x10

.field static final SCRYPT_PARAM_N:I = 0x1000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SCRYPT_PARAM_OUTLEN_BYTES:I = 0x20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SCRYPT_PARAM_P:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SCRYPT_PARAM_R:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "KeySyncTask"

.field private static final TRUSTED_HARDWARE_MAX_ATTEMPTS:I = 0xa


# instance fields
.field private final mCredential:Ljava/lang/String;

.field private final mCredentialType:I

.field private final mCredentialUpdated:Z

.field private final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field private final mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mScrypt:Landroid/security/Scrypt;

.field private final mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field private final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

.field private final mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;IILjava/lang/String;ZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V
    .registers 11
    .param p1, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p2, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p3, "recoverySnapshotListenersStorage"    # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p4, "userId"    # I
    .param p5, "credentialType"    # I
    .param p6, "credential"    # Ljava/lang/String;
    .param p7, "credentialUpdated"    # Z
    .param p8, "platformKeyManager"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .param p9, "testOnlyInsecureCertificateHelper"    # Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
    .param p10, "scrypt"    # Landroid/security/Scrypt;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 141
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 142
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 143
    iput p5, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    .line 144
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:Ljava/lang/String;

    .line 145
    iput-boolean p7, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    .line 146
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 147
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 148
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 149
    iput-object p10, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    .line 150
    return-void
.end method

.method private static createApplicationKeyEntries(Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    .line 525
    .local p0, "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "keyEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 527
    .local v2, "alias":Ljava/lang/String;
    new-instance v3, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 528
    invoke-virtual {v3, v2}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 529
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    move-result-object v3

    .line 530
    invoke-virtual {v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3

    .line 527
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v2    # "alias":Ljava/lang/String;
    goto :goto_d

    .line 532
    :cond_34
    return-object v0
.end method

.method private generateAndStoreCounterId(I)J
    .registers 8
    .param p1, "recoveryAgentUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 397
    .local v0, "counter":J
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v2

    .line 398
    .local v2, "updatedRows":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_18

    .line 402
    return-wide v0

    .line 399
    :cond_18
    const-string v4, "KeySyncTask"

    const-string v5, "Failed to set the snapshot version in the local DB."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to set counterId in the local DB."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static generateRecoveryKey()Ljavax/crypto/SecretKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 518
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 519
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 520
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method private static generateSalt()[B
    .registers 2

    .line 464
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 465
    .local v0, "salt":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 466
    return-object v0
.end method

.method private getKeysToSync(I)Ljava/util/Map;
    .registers 6
    .param p1, "recoveryAgentUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getDecryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;

    move-result-object v0

    .line 413
    .local v0, "decryptKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 414
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v3

    .line 413
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getAllKeys(III)Ljava/util/Map;

    move-result-object v1

    .line 415
    .local v1, "wrappedKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method static getUiFormat(ILjava/lang/String;)I
    .registers 4
    .param p0, "credentialType"    # I
    .param p1, "credential"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 449
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 450
    const/4 v0, 0x3

    return v0

    .line 451
    :cond_5
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->isPin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 452
    return v0

    .line 454
    :cond_c
    const/4 v0, 0x2

    return v0
.end method

.method static hashCredentialsBySaltedSha256([BLjava/lang/String;)[B
    .registers 7
    .param p0, "salt"    # [B
    .param p1, "credentials"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 493
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 494
    .local v0, "credentialsBytes":[B
    array-length v1, p0

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 496
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 497
    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 498
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 499
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 500
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 501
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 504
    .local v2, "bytes":[B
    :try_start_26
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3
    :try_end_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_26 .. :try_end_30} :catch_31

    return-object v3

    .line 505
    :catch_31
    move-exception v3

    .line 507
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private hashCredentialsByScrypt([BLjava/lang/String;)[B
    .registers 10
    .param p1, "salt"    # [B
    .param p2, "credentials"    # Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mScrypt:Landroid/security/Scrypt;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 513
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 512
    const/16 v3, 0x1000

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x20

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private isCustomLockScreen()Z
    .registers 4

    .line 192
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method static isPin(Ljava/lang/String;)Z
    .registers 5
    .param p0, "credential"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 474
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 475
    return v0

    .line 477
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 478
    .local v1, "length":I
    move v2, v0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_19

    .line 479
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 480
    return v0

    .line 478
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 483
    .end local v2    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;IILjava/lang/String;Z)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p2, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p3, "recoverySnapshotListenersStorage"    # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p4, "userId"    # I
    .param p5, "credentialType"    # I
    .param p6, "credential"    # Ljava/lang/String;
    .param p7, "credentialUpdated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
        }
    .end annotation

    .line 104
    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 112
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v8

    new-instance v9, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v9}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    new-instance v10, Landroid/security/Scrypt;

    invoke-direct {v10}, Landroid/security/Scrypt;-><init>()V

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;IILjava/lang/String;ZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    .line 104
    return-object v11
.end method

.method private shouldCreateSnapshot(I)Z
    .registers 6
    .param p1, "recoveryAgentUid"    # I

    .line 423
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v0

    .line 424
    .local v0, "types":[I
    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_12

    .line 427
    const/4 v1, 0x0

    return v1

    .line 429
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v1, :cond_29

    .line 431
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 432
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 433
    return v3

    .line 437
    :cond_29
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getShouldCreateSnapshot(II)Z

    move-result v1

    return v1
.end method

.method private shouldUseScryptToHashCredential()Z
    .registers 3

    .line 536
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private syncKeys()V
    .registers 8

    .line 165
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    .line 167
    const-string v0, "KeySyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials are not set for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getGenerationId(I)I

    move-result v0

    .line 169
    .local v0, "generation":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->invalidatePlatformKey(II)V

    .line 170
    return-void

    .line 172
    .end local v0    # "generation":I
    :cond_2d
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->isCustomLockScreen()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 173
    const-string v0, "KeySyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported credential type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysForUserIdOnCustomScreenLock(I)V

    .line 175
    return-void

    .line 178
    :cond_5d
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryAgents(I)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "recoveryAgents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 181
    .local v2, "uid":I
    :try_start_79
    invoke-direct {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeysForAgent(I)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 184
    goto :goto_94

    .line 182
    :catch_7d
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "KeySyncTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException during sync for agent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v2    # "uid":I
    .end local v3    # "e":Ljava/io/IOException;
    :goto_94
    goto :goto_69

    .line 186
    :cond_95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 187
    const-string v1, "KeySyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No recovery agent initialized for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_b3
    return-void
.end method

.method private syncKeysForAgent(I)V
    .registers 27
    .param p1, "recoveryAgentUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 198
    move/from16 v2, p1

    const/4 v0, 0x0

    .line 199
    .local v0, "shouldRecreateCurrentVersion":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldCreateSnapshot(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_34

    .line 200
    iget-object v3, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v5, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 201
    invoke-virtual {v3, v5, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 202
    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v3

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    move v0, v3

    .line 203
    if-eqz v0, :cond_2c

    .line 204
    const-string v3, "KeySyncTask"

    const-string v5, "Recreating most recent snapshot"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 206
    :cond_2c
    const-string v3, "KeySyncTask"

    const-string v4, "Key sync not needed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 211
    .end local v0    # "shouldRecreateCurrentVersion":Z
    .local v3, "shouldRecreateCurrentVersion":Z
    :cond_34
    :goto_34
    move v3, v0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v5, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 212
    invoke-virtual {v0, v5, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "rootCertAlias":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 214
    invoke-virtual {v5, v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .end local v0    # "rootCertAlias":Ljava/lang/String;
    .local v5, "rootCertAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v6, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v6, v2, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v6

    .line 219
    .local v6, "certPath":Ljava/security/cert/CertPath;
    if-eqz v6, :cond_63

    .line 220
    const-string v0, "KeySyncTask"

    const-string v7, "Using the public key in stored CertPath for syncing"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v6}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .local v0, "publicKey":Ljava/security/PublicKey;
    goto :goto_72

    .line 223
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    :cond_63
    const-string v0, "KeySyncTask"

    const-string v7, "Using the stored raw public key for syncing"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v7, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v7, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServicePublicKey(II)Ljava/security/PublicKey;

    move-result-object v0

    .restart local v0    # "publicKey":Ljava/security/PublicKey;
    :goto_72
    move-object v7, v0

    .line 227
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    .local v7, "publicKey":Ljava/security/PublicKey;
    if-nez v7, :cond_7d

    .line 228
    const-string v0, "KeySyncTask"

    const-string v4, "Not initialized for KeySync: no public key set. Cancelling task."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_7d
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v8, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v8, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v8

    .line 233
    .local v8, "vaultHandle":[B
    if-nez v8, :cond_a0

    .line 234
    const-string v0, "KeySyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No device ID set for user "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 238
    :cond_a0
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 239
    const-string v0, "KeySyncTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Insecure root certificate is used by recovery agent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    iget v9, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    iget-object v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->doesCredentialSupportInsecureMode(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 243
    const-string v0, "KeySyncTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Whitelisted credential is used to generate snapshot by recovery agent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 246
    :cond_e1
    const-string v0, "KeySyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Non whitelisted credential is used to generate recovery snapshot by "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " - ignore attempt."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 252
    :cond_fd
    :goto_fd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->shouldUseScryptToHashCredential()Z

    move-result v9

    .line 253
    .local v9, "useScryptToHashCredential":Z
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateSalt()[B

    move-result-object v10

    .line 255
    .local v10, "salt":[B
    if-eqz v9, :cond_10e

    .line 256
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:Ljava/lang/String;

    invoke-direct {v1, v10, v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsByScrypt([BLjava/lang/String;)[B

    move-result-object v0

    .local v0, "localLskfHash":[B
    goto :goto_114

    .line 258
    .end local v0    # "localLskfHash":[B
    :cond_10e
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->hashCredentialsBySaltedSha256([BLjava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "localLskfHash":[B
    :goto_114
    move-object v11, v0

    .line 263
    .end local v0    # "localLskfHash":[B
    .local v11, "localLskfHash":[B
    :try_start_115
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getKeysToSync(I)Ljava/util/Map;

    move-result-object v0
    :try_end_119
    .catch Ljava/security/GeneralSecurityException; {:try_start_115 .. :try_end_119} :catch_291
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_115 .. :try_end_119} :catch_27f
    .catch Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException; {:try_start_115 .. :try_end_119} :catch_26d
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_119} :catch_25b

    .line 278
    .local v0, "rawKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/crypto/SecretKey;>;"
    nop

    .line 277
    nop

    .line 280
    iget-object v12, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v12, v5}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_129

    .line 281
    iget-object v12, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v12, v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->keepOnlyWhitelistedInsecureKeys(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 286
    .end local v0    # "rawKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/crypto/SecretKey;>;"
    .local v12, "rawKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/crypto/SecretKey;>;"
    :cond_129
    move-object v12, v0

    :try_start_12a
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateRecoveryKey()Ljavax/crypto/SecretKey;

    move-result-object v0
    :try_end_12e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12a .. :try_end_12e} :catch_24b

    move-object v13, v0

    .line 290
    .local v13, "recoveryKey":Ljavax/crypto/SecretKey;
    nop

    .line 289
    nop

    .line 294
    :try_start_131
    invoke-static {v13, v12}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_135
    .catch Ljava/security/InvalidKeyException; {:try_start_131 .. :try_end_135} :catch_239
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_131 .. :try_end_135} :catch_239

    move-object v14, v0

    .line 301
    .local v14, "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    nop

    .line 300
    nop

    .line 305
    iget-boolean v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialUpdated:Z

    if-eqz v0, :cond_147

    .line 306
    move-object v15, v5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v4

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .local v15, "rootCertAlias":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 314
    .local v4, "counterId":Ljava/lang/Long;
    :cond_145
    :goto_145
    move-object v4, v0

    goto :goto_15b

    .line 308
    .end local v4    # "counterId":Ljava/lang/Long;
    .end local v15    # "rootCertAlias":Ljava/lang/String;
    .restart local v5    # "rootCertAlias":Ljava/lang/String;
    :cond_147
    move-object v15, v5

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .restart local v15    # "rootCertAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v4, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getCounterId(II)Ljava/lang/Long;

    move-result-object v0

    .line 309
    .local v0, "counterId":Ljava/lang/Long;
    if-nez v0, :cond_145

    .line 310
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->generateAndStoreCounterId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_145

    .line 314
    .end local v0    # "counterId":Ljava/lang/Long;
    .restart local v4    # "counterId":Ljava/lang/Long;
    :goto_15b
    nop

    .line 316
    move-object/from16 v16, v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 314
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .local v16, "certPath":Ljava/security/cert/CertPath;
    const/16 v0, 0xa

    invoke-static {v7, v5, v6, v0, v8}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->packVaultParams(Ljava/security/PublicKey;JI[B)[B

    move-result-object v5

    .line 322
    .local v5, "vaultParams":[B
    :try_start_168
    invoke-static {v7, v11, v5, v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->thmEncryptRecoveryKey(Ljava/security/PublicKey;[B[BLjavax/crypto/SecretKey;)[B

    move-result-object v6
    :try_end_16c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_168 .. :try_end_16c} :catch_225
    .catch Ljava/security/InvalidKeyException; {:try_start_168 .. :try_end_16c} :catch_211

    .line 333
    .local v6, "encryptedRecoveryKey":[B
    nop

    .line 332
    nop

    .line 336
    if-eqz v9, :cond_177

    .line 337
    const/16 v0, 0x1000

    invoke-static {v10, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    .local v0, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    goto :goto_17b

    .line 340
    .end local v0    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    :cond_177
    invoke-static {v10}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    .restart local v0    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    :goto_17b
    move-object/from16 v17, v0

    .line 342
    .end local v0    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v17, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    move-object/from16 v18, v5

    const/16 v5, 0x64

    .line 343
    .end local v5    # "vaultParams":[B
    .local v18, "vaultParams":[B
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    iget v5, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredentialType:I

    move-object/from16 v19, v7

    iget-object v7, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mCredential:Ljava/lang/String;

    .line 344
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .local v19, "publicKey":Ljava/security/PublicKey;
    invoke-static {v5, v7}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getUiFormat(ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    .line 345
    move-object/from16 v5, v17

    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    .end local v17    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v5, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    move-object/from16 v20, v5

    const/4 v7, 0x0

    new-array v5, v7, [B

    .line 346
    .end local v5    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .local v20, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setSecret([B)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v5

    .line 349
    .local v5, "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 350
    .local v7, "metadataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v0, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 354
    move-object/from16 v21, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->getSnapshotVersion(IZ)I

    move-result v5

    .line 353
    .end local v5    # "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .local v21, "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 355
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 356
    move/from16 v22, v9

    move-object/from16 v23, v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .end local v9    # "useScryptToHashCredential":Z
    .end local v10    # "salt":[B
    .local v22, "useScryptToHashCredential":Z
    .local v23, "salt":[B
    invoke-virtual {v0, v9, v10}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0, v7}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 359
    invoke-static {v14}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->createApplicationKeyEntries(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v6}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-result-object v0

    move-object v5, v0

    .line 362
    .local v5, "keyChainSnapshotBuilder":Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    move-object/from16 v9, v16

    :try_start_1ec
    invoke-virtual {v5, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_1ef
    .catch Ljava/security/cert/CertificateException; {:try_start_1ec .. :try_end_1ef} :catch_207

    .line 367
    .end local v16    # "certPath":Ljava/security/cert/CertPath;
    .local v9, "certPath":Ljava/security/cert/CertPath;
    nop

    .line 368
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverySnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->put(ILandroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 369
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mSnapshotListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->recoverySnapshotAvailable(I)V

    .line 371
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v10, v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 372
    return-void

    .line 363
    :catch_207
    move-exception v0

    move-object v1, v0

    .line 365
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v1, "KeySyncTask"

    const-string v10, "Cannot serialize CertPath when calling setTrustedHardwareCertPath"

    invoke-static {v1, v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    return-void

    .line 330
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v6    # "encryptedRecoveryKey":[B
    .end local v18    # "vaultParams":[B
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v20    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    .end local v21    # "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .local v5, "vaultParams":[B
    .local v7, "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    .restart local v16    # "certPath":Ljava/security/cert/CertPath;
    :catch_211
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v16

    .end local v5    # "vaultParams":[B
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .end local v16    # "certPath":Ljava/security/cert/CertPath;
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v18    # "vaultParams":[B
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 331
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v1, "KeySyncTask"

    const-string v5, "Could not encrypt with recovery key"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    return-void

    .line 327
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v18    # "vaultParams":[B
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .restart local v5    # "vaultParams":[B
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    .restart local v16    # "certPath":Ljava/security/cert/CertPath;
    :catch_225
    move-exception v0

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v9, v16

    .end local v5    # "vaultParams":[B
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .end local v16    # "certPath":Ljava/security/cert/CertPath;
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v18    # "vaultParams":[B
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 328
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "KeySyncTask"

    const-string v5, "SecureBox encrypt algorithms unavailable"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    return-void

    .line 296
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "counterId":Ljava/lang/Long;
    .end local v14    # "encryptedApplicationKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v15    # "rootCertAlias":Ljava/lang/String;
    .end local v18    # "vaultParams":[B
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .local v5, "rootCertAlias":Ljava/lang/String;
    .local v6, "certPath":Ljava/security/cert/CertPath;
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    :catch_239
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object v9, v6

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v15    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 297
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "KeySyncTask"

    const-string v4, "Should be impossible: could not encrypt application keys with random key"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    return-void

    .line 287
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v13    # "recoveryKey":Ljavax/crypto/SecretKey;
    .end local v15    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .restart local v5    # "rootCertAlias":Ljava/lang/String;
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    :catch_24b
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object v9, v6

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v15    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 288
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "AES should never be unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    return-void

    .line 275
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v12    # "rawKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/crypto/SecretKey;>;"
    .end local v15    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .restart local v5    # "rootCertAlias":Ljava/lang/String;
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    :catch_25b
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object v9, v6

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v15    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "KeySyncTask"

    const-string v4, "Local database error."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    return-void

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    .end local v15    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .restart local v5    # "rootCertAlias":Ljava/lang/String;
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    :catch_26d
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object v9, v6

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v15    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 272
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;
    const-string v1, "KeySyncTask"

    const-string v4, "Loaded keys for same generation ID as platform key, so BadPlatformKeyException should be impossible."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    return-void

    .line 267
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;
    .end local v15    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .restart local v5    # "rootCertAlias":Ljava/lang/String;
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    :catch_27f
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object v9, v6

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v15    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 268
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    const-string v1, "KeySyncTask"

    const-string v4, "A screen unlock triggered the key sync flow, so user must have lock screen. This should be impossible."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    return-void

    .line 264
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    .end local v15    # "rootCertAlias":Ljava/lang/String;
    .end local v19    # "publicKey":Ljava/security/PublicKey;
    .end local v22    # "useScryptToHashCredential":Z
    .end local v23    # "salt":[B
    .restart local v5    # "rootCertAlias":Ljava/lang/String;
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    .local v9, "useScryptToHashCredential":Z
    .restart local v10    # "salt":[B
    :catch_291
    move-exception v0

    move-object v15, v5

    move-object/from16 v19, v7

    move/from16 v22, v9

    move-object/from16 v23, v10

    move-object v9, v6

    .end local v5    # "rootCertAlias":Ljava/lang/String;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    .end local v10    # "salt":[B
    .local v9, "certPath":Ljava/security/cert/CertPath;
    .restart local v15    # "rootCertAlias":Ljava/lang/String;
    .restart local v19    # "publicKey":Ljava/security/PublicKey;
    .restart local v22    # "useScryptToHashCredential":Z
    .restart local v23    # "salt":[B
    move-object v1, v0

    .line 265
    .local v0, "e":Ljava/security/GeneralSecurityException;
    const-string v1, "KeySyncTask"

    const-string v4, "Failed to load recoverable keys for sync"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    return-void
.end method


# virtual methods
.method getSnapshotVersion(IZ)I
    .registers 8
    .param p1, "recoveryAgentUid"    # I
    .param p2, "shouldRecreateCurrentVersion"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v0

    .line 378
    .local v0, "snapshotVersion":Ljava/lang/Long;
    const-wide/16 v1, 0x1

    if-eqz p2, :cond_18

    .line 380
    if-nez v0, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_24

    .line 382
    :cond_18
    if-nez v0, :cond_1b

    goto :goto_20

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    :goto_20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 385
    :goto_24
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mRecoverableKeyStoreDb:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget v2, p0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->mUserId:I

    .line 386
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 385
    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setSnapshotVersion(IIJ)J

    move-result-wide v1

    .line 387
    .local v1, "updatedRows":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3b

    .line 392
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    return v3

    .line 388
    :cond_3b
    const-string v3, "KeySyncTask"

    const-string v4, "Failed to set the snapshot version in the local DB."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to set the snapshot version in the local DB."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public run()V
    .registers 4

    .line 156
    :try_start_0
    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_b

    .line 157
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->syncKeys()V

    .line 158
    monitor-exit v0

    .line 161
    goto :goto_13

    .line 158
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    :try_start_a
    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b} :catch_b

    .line 159
    :catch_b
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeySyncTask"

    const-string v2, "Unexpected exception thrown during KeySyncTask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13
    return-void
.end method
