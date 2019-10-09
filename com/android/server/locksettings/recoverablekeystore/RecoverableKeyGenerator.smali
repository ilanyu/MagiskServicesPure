.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
.super Ljava/lang/Object;
.source "RecoverableKeyGenerator.java"


# static fields
.field static final KEY_SIZE_BITS:I = 0x100

.field private static final RESULT_CANNOT_INSERT_ROW:I = -0x1

.field private static final SECRET_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final TAG:Ljava/lang/String; = "PlatformKeyGen"


# instance fields
.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mKeyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method private constructor <init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .registers 3
    .param p1, "keyGenerator"    # Ljavax/crypto/KeyGenerator;
    .param p2, "recoverableKeyStoreDb"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 73
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 74
    return-void
.end method

.method public static newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    .registers 3
    .param p0, "database"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 62
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 63
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    invoke-direct {v1, v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;-><init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    return-object v1
.end method


# virtual methods
.method public generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;)[B
    .registers 15
    .param p1, "platformKey"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 100
    .local v0, "key":Ljavax/crypto/SecretKey;
    invoke-static {p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object v1

    .line 101
    .local v1, "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, p2, p3, p4, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide v2

    .line 103
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_36

    .line 109
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    move-result-wide v4

    .line 110
    .local v4, "updatedRows":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_31

    .line 111
    const-string v6, "PlatformKeyGen"

    const-string v7, "Failed to set the shoudCreateSnapshot flag in the local DB."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_31
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    return-object v6

    .line 104
    .end local v4    # "updatedRows":J
    :cond_36
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object p4, v7, v5

    .line 105
    const-string v5, "Failed writing (%d, %s) to database."

    invoke-static {v6, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)V
    .registers 16
    .param p1, "platformKey"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p5, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 142
    .local v0, "key":Ljavax/crypto/SecretKey;
    invoke-static {p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object v1

    .line 143
    .local v1, "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v2, p2, p3, p4, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide v2

    .line 145
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1e

    .line 151
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 152
    return-void

    .line 146
    :cond_1e
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 148
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object p4, v7, v5

    .line 147
    const-string v5, "Failed writing (%d, %s) to database."

    invoke-static {v6, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
