.class public Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;
.super Ljava/lang/Object;
.source "KeySyncUtils.java"


# static fields
.field private static final ENCRYPTED_APPLICATION_KEY_HEADER:[B

.field private static final KEY_CLAIMANT_LENGTH_BYTES:I = 0x10

.field private static final LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field private static final PUBLIC_KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "EC"

.field private static final RECOVERY_CLAIM_HEADER:[B

.field private static final RECOVERY_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final RECOVERY_KEY_SIZE_BITS:I = 0x100

.field private static final RECOVERY_RESPONSE_HEADER:[B

.field private static final THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

.field private static final THM_KF_HASH_PREFIX:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    const-string v0, "V1 THM_encrypted_recovery_key"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 52
    const-string v0, "V1 locally_encrypted_recovery_key"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 54
    const-string v0, "V1 encrypted_application_key"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .line 56
    const-string v0, "V1 KF_claim"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    .line 58
    const-string v0, "V1 reencrypted_recovery_key"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    .line 61
    const-string v0, "THM_KF_hash"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateThmKfHash([B)[B
    .registers 3
    .param p0, "lockScreenHash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 107
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 108
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_KF_HASH_PREFIX:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1
.end method

.method static varargs concat([[B)[B
    .registers 9
    .param p0, "arrays"    # [[B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "length":I
    .local v3, "length":I
    :goto_5
    if-ge v0, v1, :cond_e

    aget-object v4, p0, v0

    .line 320
    .local v4, "array":[B
    array-length v5, v4

    add-int/2addr v3, v5

    .line 319
    .end local v4    # "array":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 323
    :cond_e
    new-array v0, v3, [B

    .line 324
    .local v0, "concatenated":[B
    const/4 v1, 0x0

    .line 325
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_14
    if-ge v1, v4, :cond_21

    aget-object v6, p0, v1

    .line 326
    .local v6, "array":[B
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 327
    array-length v7, v6

    add-int/2addr v5, v7

    .line 325
    .end local v6    # "array":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 330
    :cond_21
    return-object v0
.end method

.method public static decryptApplicationKey([B[B)[B
    .registers 4
    .param p0, "recoveryKey"    # [B
    .param p1, "encryptedApplicationKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptRecoveryClaimResponse([B[B[B)[B
    .registers 6
    .param p0, "keyClaimant"    # [B
    .param p1, "vaultParams"    # [B
    .param p2, "encryptedResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [[B

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_RESPONSE_HEADER:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 227
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v0

    .line 224
    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptRecoveryKey([B[B)[B
    .registers 4
    .param p0, "lskfHash"    # [B
    .param p1, "encryptedRecoveryKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    const/4 v1, 0x0

    invoke-static {v1, p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static deserializePublicKey([B)Ljava/security/PublicKey;
    .registers 4
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 279
    :try_start_0
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_12

    .line 283
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    nop

    .line 282
    nop

    .line 284
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 285
    .local v1, "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    .line 280
    .end local v0    # "keyFactory":Ljava/security/KeyFactory;
    .end local v1    # "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_12
    move-exception v0

    .line 282
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static encryptKeysWithRecoveryKey(Ljavax/crypto/SecretKey;Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .param p0, "recoveryKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 157
    .local p1, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/crypto/SecretKey;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v0, "encryptedKeys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    .line 160
    .local v3, "key":Ljavax/crypto/SecretKey;
    const/4 v4, 0x0

    .line 162
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    sget-object v6, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->ENCRYPTED_APPLICATION_KEY_HEADER:[B

    .line 164
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    .line 160
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v4

    .line 165
    .local v4, "encryptedKey":[B
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v4    # "encryptedKey":[B
    goto :goto_d

    .line 167
    :cond_32
    return-object v0
.end method

.method public static encryptRecoveryClaim(Ljava/security/PublicKey;[B[B[B[B)[B
    .registers 9
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "vaultParams"    # [B
    .param p2, "challenge"    # [B
    .param p3, "thmKfHash"    # [B
    .param p4, "keyClaimant"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x3

    new-array v0, v0, [[B

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->RECOVERY_CLAIM_HEADER:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v3, 0x2

    aput-object p2, v0, v3

    .line 205
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v0

    new-array v3, v3, [[B

    aput-object p3, v3, v2

    aput-object p4, v3, v1

    .line 206
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v1

    .line 202
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateKeyClaimant()[B
    .registers 2

    .line 176
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 177
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 178
    .local v1, "key":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 179
    return-object v1
.end method

.method public static generateRecoveryKey()Ljavax/crypto/SecretKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 138
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 139
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 140
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    return-object v1
.end method

.method static locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B
    .registers 5
    .param p0, "lockScreenHash"    # [B
    .param p1, "recoveryKey"    # Ljavax/crypto/SecretKey;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->LOCALLY_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    .line 129
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 125
    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static packVaultParams(Ljava/security/PublicKey;JI[B)[B
    .registers 8
    .param p0, "thmPublicKey"    # Ljava/security/PublicKey;
    .param p1, "counterId"    # J
    .param p3, "maxAttempts"    # I
    .param p4, "vaultHandle"    # [B

    .line 299
    array-length v0, p4

    const/16 v1, 0x4d

    add-int/2addr v1, v0

    .line 304
    .local v1, "vaultParamsLength":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 305
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 306
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 304
    return-object v0
.end method

.method public static thmEncryptRecoveryKey(Ljava/security/PublicKey;[B[BLjavax/crypto/SecretKey;)[B
    .registers 9
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "lockScreenHash"    # [B
    .param p2, "vaultParams"    # [B
    .param p3, "recoveryKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 86
    invoke-static {p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->locallyEncryptRecoveryKey([BLjavax/crypto/SecretKey;)[B

    move-result-object v0

    .line 87
    .local v0, "encryptedRecoveryKey":[B
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->calculateThmKfHash([B)[B

    move-result-object v1

    .line 88
    .local v1, "thmKfHash":[B
    const/4 v2, 0x2

    new-array v2, v2, [[B

    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->THM_ENCRYPTED_RECOVERY_KEY_HEADER:[B

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncUtils;->concat([[B)[B

    move-result-object v2

    .line 89
    .local v2, "header":[B
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encrypt(Ljava/security/PublicKey;[B[B[B)[B

    move-result-object v3

    return-object v3
.end method
