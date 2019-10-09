.class public Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
.super Ljava/lang/Object;
.source "WrappedKey.java"


# static fields
.field private static final APPLICATION_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final GCM_TAG_LENGTH_BITS:I = 0x80

.field private static final KEY_WRAP_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final TAG:Ljava/lang/String; = "WrappedKey"


# instance fields
.field private final mKeyMaterial:[B

.field private final mNonce:[B

.field private final mPlatformKeyGenerationId:I

.field private final mRecoveryStatus:I


# direct methods
.method public constructor <init>([B[BI)V
    .registers 5
    .param p1, "nonce"    # [B
    .param p2, "keyMaterial"    # [B
    .param p3, "platformKeyGenerationId"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    .line 115
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    .line 116
    iput p3, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    .line 118
    return-void
.end method

.method public constructor <init>([B[BII)V
    .registers 5
    .param p1, "nonce"    # [B
    .param p2, "keyMaterial"    # [B
    .param p3, "platformKeyGenerationId"    # I
    .param p4, "recoveryStatus"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    .line 133
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    .line 134
    iput p3, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    .line 135
    iput p4, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    .line 136
    return-void
.end method

.method public static fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .registers 8
    .param p0, "wrappingKey"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_49

    .line 70
    :try_start_6
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_40
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_c} :catch_40

    .line 74
    .local v0, "cipher":Ljavax/crypto/Cipher;
    nop

    .line 72
    nop

    .line 76
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 79
    :try_start_16
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v1
    :try_end_1a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_16 .. :try_end_1a} :catch_2b

    .line 94
    .local v1, "encryptedKeyMaterial":[B
    nop

    .line 90
    nop

    .line 96
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 97
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    .line 99
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;->getGenerationId()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[BII)V

    .line 96
    return-object v2

    .line 80
    .end local v1    # "encryptedKeyMaterial":[B
    :catch_2b
    move-exception v1

    .line 81
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 82
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/security/KeyStoreException;

    if-eqz v3, :cond_38

    .line 88
    move-object v3, v2

    check-cast v3, Ljava/security/KeyStoreException;

    throw v3

    .line 90
    :cond_38
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "IllegalBlockSizeException should not be thrown by AES/GCM/NoPadding mode."

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 71
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :catch_40
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Android does not support AES/GCM/NoPadding. This should never happen."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_49
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key does not expose encoded material. It cannot be wrapped."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unwrapKeys(Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;Ljava/util/Map;)Ljava/util/Map;
    .registers 16
    .param p0, "platformKey"    # Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 189
    .local p1, "wrappedKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "unwrappedKeys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljavax/crypto/SecretKey;>;"
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 191
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v2

    .line 193
    .local v2, "platformKeyGenerationId":I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, "alias":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 195
    .local v5, "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x3

    if-ne v6, v2, :cond_6b

    .line 205
    const/4 v6, 0x4

    .line 207
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getKey()Landroid/security/keystore/AndroidKeyStoreSecretKey;

    move-result-object v10

    new-instance v11, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v12, 0x80

    .line 208
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 205
    invoke-virtual {v1, v6, v10, v11}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 211
    nop

    .line 212
    :try_start_46
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object v6

    const-string v10, "AES"

    .line 211
    invoke-virtual {v1, v6, v10, v9}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v6

    check-cast v6, Ljavax/crypto/SecretKey;
    :try_end_52
    .catch Ljava/security/InvalidKeyException; {:try_start_46 .. :try_end_52} :catch_58
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_52} :catch_58

    .line 221
    .local v6, "key":Ljavax/crypto/SecretKey;
    nop

    .line 220
    nop

    .line 222
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .end local v6    # "key":Ljavax/crypto/SecretKey;
    goto :goto_17

    .line 213
    .restart local v4    # "alias":Ljava/lang/String;
    .restart local v5    # "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    :catch_58
    move-exception v6

    .line 214
    .local v6, "e":Ljava/security/GeneralSecurityException;
    const-string v9, "WrappedKey"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Error unwrapping recoverable key with alias \'%s\'"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v7

    .line 215
    invoke-static {v10, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-static {v9, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    goto :goto_17

    .line 196
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_6b
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v7

    .line 201
    invoke-virtual {v5}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v8

    const/4 v7, 0x2

    .line 202
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/PlatformDecryptionKey;->getGenerationId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    .line 196
    const-string v7, "WrappedKey with alias \'%s\' was wrapped with platform key %d, not platform key %d"

    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/server/locksettings/recoverablekeystore/BadPlatformKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "wrappedKey":Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    :cond_92
    return-object v0
.end method


# virtual methods
.method public getKeyMaterial()[B
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mKeyMaterial:[B

    return-object v0
.end method

.method public getNonce()[B
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mNonce:[B

    return-object v0
.end method

.method public getPlatformKeyGenerationId()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mPlatformKeyGenerationId:I

    return v0
.end method

.method public getRecoveryStatus()I
    .registers 2

    .line 171
    iget v0, p0, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->mRecoveryStatus:I

    return v0
.end method
