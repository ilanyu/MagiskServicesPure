.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreMgr"

.field private static mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;


# instance fields
.field private final mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

.field private final mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

.field private final mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

.field private final mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

.field private final mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

.field private final mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .param p3, "recoverySessionStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;
    .param p4, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p5, "snapshotStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;
    .param p6, "listenersStorage"    # Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;
    .param p7, "platformKeyManager"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .param p8, "applicationKeyStorage"    # Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    .param p9, "TestOnlyInsecureCertificateHelper"    # Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 154
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 155
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 156
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 157
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 158
    iput-object p7, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 159
    iput-object p8, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 160
    iput-object p9, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 163
    :try_start_15
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1d} :catch_1f

    .line 167
    nop

    .line 168
    return-void

    .line 164
    :catch_1f
    move-exception v0

    .line 165
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "AES keygen algorithm not available. AOSP must support this."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x16

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private checkRecoverKeyStorePermission()V
    .registers 5

    .line 914
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVER_KEYSTORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t have RecoverKeyStore permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 914
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method private decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B
    .registers 9
    .param p1, "sessionEntry"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    .param p2, "encryptedClaimResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 776
    nop

    .line 777
    const/16 v0, 0x16

    const/16 v1, 0x1a

    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getKeyClaimant()[B

    move-result-object v2

    .line 778
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getVaultParams()[B

    move-result-object v3

    .line 776
    invoke-static {v2, v3, p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryClaimResponse([B[B[B)[B

    move-result-object v2
    :try_end_11
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_11} :catch_9b
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_5 .. :try_end_11} :catch_78
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_11} :catch_6d

    .line 791
    .local v2, "locallyEncryptedKey":[B
    nop

    .line 790
    nop

    .line 794
    :try_start_13
    invoke-virtual {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->getLskfHash()[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptRecoveryKey([B[B)[B

    move-result-object v3
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_13 .. :try_end_1b} :catch_4a
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_13 .. :try_end_1b} :catch_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_1b} :catch_1c

    return-object v3

    .line 803
    :catch_1c
    move-exception v1

    .line 805
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 799
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_27
    move-exception v0

    .line 800
    .local v0, "e":Ljavax/crypto/AEADBadTagException;
    const-string v3, "RecoverableKeyStoreMgr"

    const-string v4, "Got AEADBadTagException during decrypting recovery key"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    new-instance v3, Landroid/os/ServiceSpecificException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decrypt recovery key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    invoke-virtual {v0}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 795
    .end local v0    # "e":Ljavax/crypto/AEADBadTagException;
    :catch_4a
    move-exception v0

    .line 796
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v3, "RecoverableKeyStoreMgr"

    const-string v4, "Got InvalidKeyException during decrypting recovery key"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    new-instance v3, Landroid/os/ServiceSpecificException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decrypt recovery key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 788
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    .end local v2    # "locallyEncryptedKey":[B
    :catch_6d
    move-exception v1

    .line 790
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 784
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_78
    move-exception v0

    .line 785
    .local v0, "e":Ljavax/crypto/AEADBadTagException;
    const-string v2, "RecoverableKeyStoreMgr"

    const-string v3, "Got AEADBadTagException during decrypting recovery claim response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 786
    new-instance v2, Landroid/os/ServiceSpecificException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decrypt recovery key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0}, Ljavax/crypto/AEADBadTagException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 780
    .end local v0    # "e":Ljavax/crypto/AEADBadTagException;
    :catch_9b
    move-exception v0

    .line 781
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v2, "RecoverableKeyStoreMgr"

    const-string v3, "Got InvalidKeyException during decrypting recovery claim response"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 782
    new-instance v2, Landroid/os/ServiceSpecificException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decrypt recovery key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private getAlias(IILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getGrantAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keystore"    # Landroid/security/KeyStore;

    const-class v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    if-nez v1, :cond_4e

    .line 114
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_52

    .line 118
    .local v1, "db":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    :try_start_b
    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    move-result-object v9

    .line 119
    .local v9, "platformKeyManager":Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInstance(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    move-result-object v10
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_13} :catch_47
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_13} :catch_3a
    .catchall {:try_start_b .. :try_end_13} :catchall_52

    .line 125
    .local v10, "applicationKeyStorage":Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    nop

    .line 124
    nop

    .line 127
    :try_start_15
    new-instance v12, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-direct {v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;-><init>()V

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 132
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->newInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    move-result-object v7

    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-direct {v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;-><init>()V

    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v11}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    move-object v2, v12

    move-object v4, v1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;)V

    sput-object v12, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .end local v1    # "db":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .end local v9    # "platformKeyManager":Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;
    .end local v10    # "applicationKeyStorage":Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;
    goto :goto_4e

    .line 123
    .restart local v1    # "db":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    :catch_3a
    move-exception v2

    .line 124
    .local v2, "e":Ljava/security/KeyStoreException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x16

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 120
    .end local v2    # "e":Ljava/security/KeyStoreException;
    :catch_47
    move-exception v2

    .line 122
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 138
    .end local v1    # "db":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_4e
    :goto_4e
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    :try_end_50
    .catchall {:try_start_15 .. :try_end_50} :catchall_52

    monitor-exit v0

    return-object v1

    .line 112
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "keystore":Landroid/security/KeyStore;
    :catchall_52
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 629
    .local p3, "keysByAlias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 630
    .local v0, "grantAliasesByAlias":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 631
    .local v2, "alias":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, p1, p2, v2, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 632
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "grantAlias":Ljava/lang/String;
    const-string v4, "RecoverableKeyStoreMgr"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Import %s -> %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "grantAlias":Ljava/lang/String;
    goto :goto_11

    .line 636
    :cond_46
    return-object v0
.end method

.method private publicKeysMatch(Ljava/security/PublicKey;[B)Z
    .registers 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "vaultParams"    # [B

    .line 920
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0

    .line 921
    .local v0, "encodedPublicKey":[B
    array-length v1, v0

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method private recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;
    .registers 12
    .param p1, "recoveryKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 818
    .local p2, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 819
    .local v0, "keyMaterialByAlias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x1a

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 820
    .local v2, "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 821
    .local v4, "alias":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v5

    .line 824
    .local v5, "encryptedKeyMaterial":[B
    nop

    .line 825
    :try_start_20
    invoke-static {p1, v5}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->decryptApplicationKey([B[B)[B

    move-result-object v6

    .line 826
    .local v6, "keyMaterial":[B
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_27} :catch_7a
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_27} :catch_40
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_20 .. :try_end_27} :catch_28

    .line 840
    .end local v6    # "keyMaterial":[B
    goto :goto_3f

    .line 836
    :catch_28
    move-exception v3

    .line 837
    .local v3, "e":Ljavax/crypto/AEADBadTagException;
    const-string v6, "RecoverableKeyStoreMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got AEADBadTagException during decrypting application key with alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v2    # "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    .end local v3    # "e":Ljavax/crypto/AEADBadTagException;
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "encryptedKeyMaterial":[B
    :goto_3f
    goto :goto_9

    .line 831
    .restart local v2    # "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v5    # "encryptedKeyMaterial":[B
    :catch_40
    move-exception v1

    .line 832
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got InvalidKeyException during decrypting application key with alias: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RecoverableKeyStoreMgr"

    invoke-static {v7, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    new-instance v6, Landroid/os/ServiceSpecificException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to recover key with alias \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 827
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_7a
    move-exception v1

    .line 828
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "RecoverableKeyStoreMgr"

    const-string v6, "Missing SecureBox algorithm. AOSP required to support this."

    invoke-static {v3, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v6, 0x16

    .line 830
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 842
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "applicationKey":Landroid/security/keystore/recovery/WrappedApplicationKey;
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "encryptedKeyMaterial":[B
    :cond_8e
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_aa

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9b

    goto :goto_aa

    .line 843
    :cond_9b
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "Failed to recover any of the application keys."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v1, Landroid/os/ServiceSpecificException;

    const-string v2, "Failed to recover any of the application keys."

    invoke-direct {v1, v3, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 847
    :cond_aa
    :goto_aa
    return-object v0
.end method


# virtual methods
.method public closeSession(Ljava/lang/String;)V
    .registers 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 656
    const-string v0, "invalid session"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(ILjava/lang/String;)V

    .line 658
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 681
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 683
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 687
    .local v1, "userId":I
    const/16 v2, 0x16

    :try_start_12
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v3
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_18} :catch_4d
    .catch Ljava/security/KeyStoreException; {:try_start_12 .. :try_end_18} :catch_42
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_12 .. :try_end_18} :catch_42
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_42
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_12 .. :try_end_18} :catch_35

    .line 695
    .local v3, "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    nop

    .line 694
    nop

    .line 698
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    .line 699
    invoke-virtual {v4, v3, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;)[B

    move-result-object v4

    .line 700
    .local v4, "secretKey":[B
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v5, v1, v0, p1, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 701
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_29
    .catch Ljava/security/KeyStoreException; {:try_start_1a .. :try_end_29} :catch_2a
    .catch Ljava/security/InvalidKeyException; {:try_start_1a .. :try_end_29} :catch_2a
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_1a .. :try_end_29} :catch_2a

    return-object v5

    .line 702
    .end local v4    # "secretKey":[B
    :catch_2a
    move-exception v4

    .line 703
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/os/ServiceSpecificException;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 693
    .end local v3    # "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_35
    move-exception v2

    .line 694
    .local v2, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x17

    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 691
    .end local v2    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    :catch_42
    move-exception v3

    .line 692
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/os/ServiceSpecificException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 688
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4d
    move-exception v2

    .line 690
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 765
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 767
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 768
    .local v1, "userId":I
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 331
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v1

    .line 332
    .local v1, "snapshot":Landroid/security/keystore/recovery/KeyChainSnapshot;
    if-eqz v1, :cond_10

    .line 335
    return-object v1

    .line 333
    :cond_10
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v2
.end method

.method public getRecoverySecretTypes()[I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 454
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 454
    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 404
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getStatusForAllKeys(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 12
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 720
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 721
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string/jumbo v0, "keyBytes is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_62

    .line 731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 732
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 736
    .local v1, "userId":I
    const/16 v8, 0x16

    :try_start_1d
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mPlatformKeyManager:Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getEncryptKey(I)Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;

    move-result-object v3
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_23} :catch_5b
    .catch Ljava/security/KeyStoreException; {:try_start_1d .. :try_end_23} :catch_50
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1d .. :try_end_23} :catch_50
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_50
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_1d .. :try_end_23} :catch_43

    .line 744
    .local v3, "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    nop

    .line 743
    nop

    .line 748
    :try_start_25
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverableKeyGenerator:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    move v4, v1

    move v5, v0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)V

    .line 751
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v2, v1, v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->setSymmetricKeyEntry(IILjava/lang/String;[B)V

    .line 752
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_37
    .catch Ljava/security/KeyStoreException; {:try_start_25 .. :try_end_37} :catch_38
    .catch Ljava/security/InvalidKeyException; {:try_start_25 .. :try_end_37} :catch_38
    .catch Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException; {:try_start_25 .. :try_end_37} :catch_38

    return-object v2

    .line 753
    :catch_38
    move-exception v2

    .line 754
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/os/ServiceSpecificException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 742
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "encryptionKey":Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    :catch_43
    move-exception v2

    .line 743
    .local v2, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x17

    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 740
    .end local v2    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    :catch_50
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 737
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5b
    move-exception v2

    .line 739
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 724
    .end local v0    # "uid":I
    .end local v1    # "userId":I
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_62
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v1, "The given key for import doesn\'t have the required length 256"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/16 v1, 0x1b

    const-string v2, "The given key does not contain 256 bits."

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method initRecoveryService(Ljava/lang/String;[B)V
    .registers 28
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 178
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 179
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 181
    .local v9, "uid":I
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 182
    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .end local p1    # "rootCertificateAlias":Ljava/lang/String;
    .local v10, "rootCertificateAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isValidRootCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x1c

    if-eqz v0, :cond_1e5

    .line 189
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getActiveRootOfTrust(II)Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, "activeRootAlias":Ljava/lang/String;
    if-nez v11, :cond_46

    .line 191
    const-string v0, "RecoverableKeyStoreMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root of trust for recovery agent + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is assigned for the first time to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 193
    :cond_46
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 194
    const-string v0, "RecoverableKeyStoreMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root of trust for recovery agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_72
    :goto_72
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setActiveRootOfTrust(IILjava/lang/String;)J

    move-result-wide v12

    .line 198
    .local v12, "updatedRows":J
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-ltz v0, :cond_1d9

    .line 205
    const/16 v7, 0x19

    :try_start_80
    invoke-static/range {p2 .. p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    move-result-object v0
    :try_end_84
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_80 .. :try_end_84} :catch_1b0

    move-object v5, v0

    .line 210
    .local v5, "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    nop

    .line 209
    nop

    .line 213
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getSerial()J

    move-result-wide v3

    .line 214
    .local v3, "newSerial":J
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 215
    .local v14, "oldSerial":Ljava/lang/Long;
    if-eqz v14, :cond_c4

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v0, v18, v3

    if-ltz v0, :cond_c4

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 216
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->isTestOnlyCertificateAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 217
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-nez v0, :cond_b3

    .line 218
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v2, "The cert file serial number is the same, so skip updating."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 220
    :cond_b3
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v2, "The cert file serial number is older than the one in database."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x1d

    const-string v6, "The cert file serial number is older than the one in database."

    invoke-direct {v0, v2, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 226
    :cond_c4
    const-string v0, "RecoverableKeyStoreMgr"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating the certificate with the new serial number "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 231
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    move-object v15, v0

    .line 233
    .local v15, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_e1
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v6, "Getting and validating a random endpoint certificate"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v5, v15}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getRandomEndpointCert(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object v0
    :try_end_ec
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_e1 .. :try_end_ec} :catch_198

    move-object v6, v0

    .line 238
    .local v6, "certPath":Ljava/security/cert/CertPath;
    nop

    .line 237
    nop

    .line 242
    :try_start_ef
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v2, "Saving the randomly chosen endpoint certificate to database"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9, v10, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J

    move-result-wide v18

    .line 245
    .local v18, "updatedCertPathRows":J
    const-wide/16 v16, 0x0

    cmp-long v0, v18, v16

    if-lez v0, :cond_162

    .line 246
    iget-object v2, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    :try_end_104
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_ef .. :try_end_104} :catch_17d

    move-wide/from16 v21, v3

    move v3, v8

    .end local v3    # "newSerial":J
    .local v21, "newSerial":J
    move v4, v9

    move-object/from16 v23, v5

    move-object v5, v10

    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .local v23, "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    move-object/from16 v20, v6

    move-object/from16 v24, v10

    const/16 v0, 0x16

    move v10, v7

    move-wide/from16 v6, v21

    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .local v20, "certPath":Ljava/security/cert/CertPath;
    .local v24, "rootCertificateAlias":Ljava/lang/String;
    :try_start_114
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryServiceCertSerial(IILjava/lang/String;J)J

    move-result-wide v2

    .line 248
    .local v2, "updatedCertSerialRows":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_158

    .line 255
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 256
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v4, 0x1

    invoke-virtual {v0, v8, v9, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 257
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v4, "This is a certificate change. Snapshot must be updated"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 259
    :cond_134
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v4, "This is a certificate change. Snapshot didn\'t exist"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_13b
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 262
    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    invoke-virtual {v0, v8, v9, v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setCounterId(IIJ)J

    move-result-wide v4

    .line 263
    .local v4, "updatedCounterIdRows":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_157

    .line 264
    const-string v0, "RecoverableKeyStoreMgr"

    const-string v6, "Failed to set the counter id in the local DB."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v2    # "updatedCertSerialRows":J
    .end local v4    # "updatedCounterIdRows":J
    :cond_157
    goto :goto_173

    .line 252
    .restart local v2    # "updatedCertSerialRows":J
    :cond_158
    new-instance v4, Landroid/os/ServiceSpecificException;

    const-string v5, "Failed to set the certificate serial number in the local DB."

    invoke-direct {v4, v0, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 270
    .end local v2    # "updatedCertSerialRows":J
    .end local v18    # "updatedCertPathRows":J
    :catch_160
    move-exception v0

    goto :goto_187

    .line 266
    .end local v20    # "certPath":Ljava/security/cert/CertPath;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v3    # "newSerial":J
    .restart local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v18    # "updatedCertPathRows":J
    :cond_162
    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    const/16 v0, 0x16

    move v10, v7

    .end local v3    # "newSerial":J
    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v20    # "certPath":Ljava/security/cert/CertPath;
    .restart local v21    # "newSerial":J
    .restart local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v24    # "rootCertificateAlias":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-ltz v2, :cond_175

    .line 273
    .end local v18    # "updatedCertPathRows":J
    :goto_173
    nop

    .line 274
    return-void

    .line 267
    .restart local v18    # "updatedCertPathRows":J
    :cond_175
    new-instance v2, Landroid/os/ServiceSpecificException;

    const-string v3, "Failed to set the certificate path in the local DB."

    invoke-direct {v2, v0, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_17d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_114 .. :try_end_17d} :catch_160

    .line 270
    .end local v18    # "updatedCertPathRows":J
    .end local v20    # "certPath":Ljava/security/cert/CertPath;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v3    # "newSerial":J
    .restart local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    :catch_17d
    move-exception v0

    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move v10, v7

    .line 271
    .end local v3    # "newSerial":J
    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v20    # "certPath":Ljava/security/cert/CertPath;
    .restart local v21    # "newSerial":J
    .restart local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v24    # "rootCertificateAlias":Ljava/lang/String;
    :goto_187
    const-string v2, "RecoverableKeyStoreMgr"

    const-string v3, "Failed to encode CertPath"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 235
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v20    # "certPath":Ljava/security/cert/CertPath;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v3    # "newSerial":J
    .restart local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    :catch_198
    move-exception v0

    move-wide/from16 v21, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v10

    .line 236
    .end local v3    # "newSerial":J
    .end local v5    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    .restart local v21    # "newSerial":J
    .restart local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .restart local v24    # "rootCertificateAlias":Ljava/lang/String;
    const-string v3, "RecoverableKeyStoreMgr"

    const-string v4, "Invalid endpoint cert"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 206
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    .end local v14    # "oldSerial":Ljava/lang/Long;
    .end local v15    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local v21    # "newSerial":J
    .end local v23    # "certXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .end local v24    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    :catch_1b0
    move-exception v0

    move-object/from16 v24, v10

    move v10, v7

    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v24    # "rootCertificateAlias":Ljava/lang/String;
    move-object v2, v0

    .line 207
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse the input as a cert file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RecoverableKeyStoreMgr"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 199
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
    .end local v24    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    :cond_1d9
    move-object/from16 v24, v10

    const/16 v0, 0x16

    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v24    # "rootCertificateAlias":Ljava/lang/String;
    new-instance v2, Landroid/os/ServiceSpecificException;

    const-string v3, "Failed to set the root of trust in the local DB."

    invoke-direct {v2, v0, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 184
    .end local v11    # "activeRootAlias":Ljava/lang/String;
    .end local v12    # "updatedRows":J
    .end local v24    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v10    # "rootCertificateAlias":Ljava/lang/String;
    :cond_1e5
    move-object/from16 v24, v10

    .end local v10    # "rootCertificateAlias":Ljava/lang/String;
    .restart local v24    # "rootCertificateAlias":Ljava/lang/String;
    new-instance v0, Landroid/os/ServiceSpecificException;

    const-string v3, "Invalid root certificate alias"

    invoke-direct {v0, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 10
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .param p3, "recoveryServiceSigFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 292
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 293
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    const-string/jumbo v0, "recoveryServiceCertFile is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v0, "recoveryServiceSigFile is null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :try_start_15
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    move-result-object v0
    :try_end_19
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_15 .. :try_end_19} :catch_5c

    .line 304
    .local v0, "sigXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
    nop

    .line 303
    nop

    .line 306
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 307
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 309
    .local v1, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_21
    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[B)V
    :try_end_24
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_21 .. :try_end_24} :catch_29

    .line 315
    nop

    .line 317
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryService(Ljava/lang/String;[B)V

    .line 318
    return-void

    .line 310
    :catch_29
    move-exception v2

    .line 311
    .local v2, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The signature over the cert file is invalid. Cert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Sig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    const-string v4, "RecoverableKeyStoreMgr"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x1c

    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 300
    .end local v0    # "sigXml":Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;
    .end local v1    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    :catch_5c
    move-exception v0

    .line 301
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse the sig file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecoverableKeyStoreMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v2, 0x19

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public lockScreenSecretAvailable(ILjava/lang/String;I)V
    .registers 13
    .param p1, "storedHashType"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v8, 0x0

    move v5, p3

    move v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;IILjava/lang/String;Z)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_28
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_30

    .line 876
    :catch_16
    move-exception v0

    .line 877
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "Impossible - insecure user, but user just entered lock screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    goto :goto_31

    .line 874
    :catch_1f
    move-exception v0

    .line 875
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "Key store error encountered during recoverable key sync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/security/KeyStoreException;
    goto :goto_30

    .line 872
    :catch_28
    move-exception v0

    .line 873
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_30
    nop

    .line 879
    :goto_31
    return-void
.end method

.method public lockScreenSecretChanged(ILjava/lang/String;I)V
    .registers 13
    .param p1, "storedHashType"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    const/4 v8, 0x1

    move v5, p3

    move v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;->newInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;IILjava/lang/String;Z)Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_28
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_30

    .line 908
    :catch_16
    move-exception v0

    .line 909
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "InsecureUserException during lock screen secret update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException;
    goto :goto_31

    .line 906
    :catch_1f
    move-exception v0

    .line 907
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "Key store error encountered during recoverable key sync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/security/KeyStoreException;
    goto :goto_30

    .line 904
    :catch_28
    move-exception v0

    .line 905
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "RecoverableKeyStoreMgr"

    const-string v2, "Should never happen - algorithm unavailable for KeySync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_30
    nop

    .line 911
    :goto_31
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 13
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "encryptedRecoveryKey"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 596
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 597
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 598
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->get(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    move-result-object v2

    .line 599
    .local v2, "sessionEntry":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
    if-eqz v2, :cond_40

    .line 608
    :try_start_13
    invoke-direct {p0, v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B

    move-result-object v3

    .line 609
    .local v3, "recoveryKey":[B
    invoke-direct {p0, v3, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 610
    .local v4, "keysByAlias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;

    move-result-object v5
    :try_end_1f
    .catch Ljava/security/KeyStoreException; {:try_start_13 .. :try_end_1f} :catch_2a
    .catchall {:try_start_13 .. :try_end_1f} :catchall_28

    .line 614
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 615
    iget-object v6, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v6, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 610
    return-object v5

    .line 614
    .end local v3    # "recoveryKey":[B
    .end local v4    # "keysByAlias":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :catchall_28
    move-exception v3

    goto :goto_37

    .line 611
    :catch_2a
    move-exception v3

    .line 612
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_2b
    new-instance v4, Landroid/os/ServiceSpecificException;

    const/16 v5, 0x16

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_28

    .line 614
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :goto_37
    invoke-virtual {v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 615
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    invoke-virtual {v4, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    throw v3

    .line 600
    :cond_40
    new-instance v3, Landroid/os/ServiceSpecificException;

    const/16 v4, 0x18

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 603
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 601
    const-string v7, "Application uid=%d does not have pending session \'%s\'"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 661
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 662
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 664
    .local v0, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 666
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->removeKey(ILjava/lang/String;)Z

    move-result v2

    .line 667
    .local v2, "wasRemoved":Z
    if-eqz v2, :cond_23

    .line 668
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 669
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    invoke-virtual {v3, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V

    .line 671
    :cond_23
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 10
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 416
    const-string/jumbo v0, "secretTypes is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 418
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 420
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    move-result-object v2

    .line 421
    .local v2, "currentSecretTypes":[I
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 422
    const-string v3, "RecoverableKeyStoreMgr"

    const-string v4, "Not updating secret types - same as old value."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_25
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoverySecretTypes(II[I)J

    move-result-wide v3

    .line 427
    .local v3, "updatedRows":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_61

    .line 432
    array-length v5, v2

    if-nez v5, :cond_3c

    .line 433
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "Initialized secret types."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 437
    :cond_3c
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "Updated secret types. Snapshot pending."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 439
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 440
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "Updated secret types. Snapshot must be updated"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 442
    :cond_59
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "Updated secret types. Snapshot didn\'t exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_60
    return-void

    .line 428
    :cond_61
    new-instance v5, Landroid/os/ServiceSpecificException;

    const/16 v6, 0x16

    const-string v7, "Database error trying to set secret types."

    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 385
    const-string v0, "alias is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setRecoveryStatus(ILjava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 387
    .local v0, "updatedRows":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1a

    .line 392
    return-void

    .line 388
    :cond_1a
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x16

    const-string v4, "Failed to set the key recovery status in the local DB."

    invoke-direct {v2, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public setServerParams([B)V
    .registers 10
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 351
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 352
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 354
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getServerParams(II)[B

    move-result-object v2

    .line 356
    .local v2, "currentServerParams":[B
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 357
    const-string v3, "RecoverableKeyStoreMgr"

    const-string v4, "Not updating server params - same as old value."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 361
    :cond_1f
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setServerParams(II[B)J

    move-result-wide v3

    .line 362
    .local v3, "updatedRows":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_53

    .line 367
    if-nez v2, :cond_35

    .line 368
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "Initialized server params."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void

    .line 372
    :cond_35
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getSnapshotVersion(II)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 373
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 374
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "Updated server params. Snapshot must be updated"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 376
    :cond_4b
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "Updated server params. Snapshot didn\'t exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_52
    return-void

    .line 363
    :cond_53
    new-instance v5, Landroid/os/ServiceSpecificException;

    const/16 v6, 0x16

    const-string v7, "Database failure trying to set server params."

    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 342
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->setSnapshotListener(ILandroid/app/PendingIntent;)V

    .line 343
    return-void
.end method

.method startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B
    .registers 14
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "verifierPublicKey"    # [B
    .param p3, "vaultParams"    # [B
    .param p4, "vaultChallenge"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    .local p5, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 481
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 483
    .local v0, "uid":I
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8c

    .line 490
    const/16 v1, 0x19

    :try_start_10
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->deserializePublicKey([B)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_10 .. :try_end_14} :catch_81

    .line 493
    .local v2, "publicKey":Ljava/security/PublicKey;
    nop

    .line 492
    nop

    .line 497
    invoke-direct {p0, v2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->publicKeysMatch(Ljava/security/PublicKey;[B)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 502
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->generateKeyClaimant()[B

    move-result-object v3

    .line 503
    .local v3, "keyClaimant":[B
    const/4 v4, 0x0

    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    invoke-virtual {v4}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getSecret()[B

    move-result-object v4

    .line 504
    .local v4, "kfHash":[B
    iget-object v5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    new-instance v6, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    invoke-direct {v6, p1, v4, v3, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;-><init>(Ljava/lang/String;[B[B[B)V

    invoke-virtual {v5, v0, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->add(ILcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)V

    .line 508
    const-string v5, "RecoverableKeyStoreMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received VaultParams for recovery: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :try_start_4f
    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->calculateThmKfHash([B)[B

    move-result-object v5

    .line 511
    .local v5, "thmKfHash":[B
    invoke-static {v2, p3, p4, v5, v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->encryptRecoveryClaim(Ljava/security/PublicKey;[B[B[B[B)[B

    move-result-object v6
    :try_end_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4f .. :try_end_57} :catch_63
    .catch Ljava/security/InvalidKeyException; {:try_start_4f .. :try_end_57} :catch_58

    return-object v6

    .line 520
    .end local v5    # "thmKfHash":[B
    :catch_58
    move-exception v5

    .line 521
    .local v5, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Landroid/os/ServiceSpecificException;

    invoke-virtual {v5}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 517
    .end local v5    # "e":Ljava/security/InvalidKeyException;
    :catch_63
    move-exception v1

    .line 518
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "RecoverableKeyStoreMgr"

    const-string v6, "SecureBox algorithm missing. AOSP must support this."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    new-instance v5, Landroid/os/ServiceSpecificException;

    const/16 v6, 0x16

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 498
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "keyClaimant":[B
    .end local v4    # "kfHash":[B
    :cond_77
    new-instance v1, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x1c

    const-string v4, "The public keys given in verifierPublicKey and vaultParams do not match."

    invoke-direct {v1, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 491
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    :catch_81
    move-exception v2

    .line 492
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-virtual {v2}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 484
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_8c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Only a single KeyChainProtectionParams is supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 16
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rootCertificateAlias"    # Ljava/lang/String;
    .param p3, "verifierCertPath"    # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"    # [B
    .param p5, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    invoke-direct {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 546
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 547
    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 548
    const-string v0, "invalid session"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string/jumbo v0, "verifierCertPath is null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string/jumbo v0, "vaultParams is null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string/jumbo v0, "vaultChallenge is null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string/jumbo v0, "secrets is null"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/16 v0, 0x19

    :try_start_28
    invoke-virtual {p3}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_2c
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_2c} :catch_7b

    .line 558
    .local v1, "certPath":Ljava/security/cert/CertPath;
    nop

    .line 557
    nop

    .line 561
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 562
    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 561
    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    :try_end_37
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_2e .. :try_end_37} :catch_67

    .line 566
    nop

    .line 568
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 569
    .local v2, "verifierPublicKey":[B
    if-eqz v2, :cond_58

    .line 575
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0

    .line 570
    :cond_58
    const-string v3, "RecoverableKeyStoreMgr"

    const-string v4, "Failed to encode verifierPublicKey"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v3, Landroid/os/ServiceSpecificException;

    const-string v4, "Failed to encode verifierPublicKey"

    invoke-direct {v3, v0, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 563
    .end local v2    # "verifierPublicKey":[B
    :catch_67
    move-exception v0

    .line 564
    .local v0, "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    const-string v2, "RecoverableKeyStoreMgr"

    const-string v3, "Failed to validate the given cert path"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    new-instance v2, Landroid/os/ServiceSpecificException;

    const/16 v3, 0x1c

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 556
    .end local v0    # "e":Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
    .end local v1    # "certPath":Ljava/security/cert/CertPath;
    :catch_7b
    move-exception v1

    .line 557
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Landroid/os/ServiceSpecificException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v2
.end method
