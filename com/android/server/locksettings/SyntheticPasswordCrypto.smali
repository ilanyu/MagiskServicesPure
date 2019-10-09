.class public Lcom/android/server/locksettings/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x20

.field private static final APPLICATION_ID_PERSONALIZATION:[B

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, "application-id"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlob(Ljava/lang/String;[B[BJ)[B
    .registers 12
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "applicationId"    # [B
    .param p3, "sid"    # J

    .line 149
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 150
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 151
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 152
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 153
    .local v2, "keyStore":Ljava/security/KeyStore;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 154
    new-instance v3, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v4, "GCM"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    const-string v4, "NoPadding"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    .line 157
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    .line 158
    .local v3, "builder":Landroid/security/keystore/KeyProtection$Builder;
    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-eqz v5, :cond_4e

    .line 159
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    .line 160
    invoke-virtual {v4, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v4

    const/16 v5, 0xf

    .line 161
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 164
    :cond_4e
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 166
    invoke-virtual {v3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v5

    .line 164
    invoke-virtual {v2, p0, v4, v5}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 167
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v4

    .line 168
    .local v4, "intermediate":[B
    invoke-static {v1, v4}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v5
    :try_end_64
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_64} :catch_65
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_64} :catch_65

    return-object v5

    .line 169
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "builder":Landroid/security/keystore/KeyProtection$Builder;
    .end local v4    # "intermediate":[B
    :catch_65
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to encrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 8
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 56
    if-nez p1, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 60
    .local v0, "iv":[B
    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 61
    .local v1, "ciphertext":[B
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 63
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v2, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public static decrypt([B[B[B)[B
    .registers 7
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "ciphertext"    # [B

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 103
    .local v0, "keyHash":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 106
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_17
    invoke-static {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v2

    .line 107
    :catch_1c
    move-exception v2

    .line 110
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 111
    const/4 v3, 0x0

    return-object v3
.end method

.method public static decryptBlob(Ljava/lang/String;[B[B)[B
    .registers 7
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .param p2, "applicationId"    # [B

    .line 131
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 132
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 134
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 135
    .local v1, "decryptionKey":Ljavax/crypto/SecretKey;
    invoke-static {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2

    .line 136
    .local v2, "intermediate":[B
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v3, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v3
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v3

    .line 137
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v2    # "intermediate":[B
    :catch_1b
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .registers 7
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "blob"    # [B
    .param p2, "applicationId"    # [B

    .line 117
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 118
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 120
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 121
    .local v1, "decryptionKey":Ljavax/crypto/SecretKey;
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v2

    .line 122
    .local v2, "intermediate":[B
    invoke-static {v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v3

    .line 123
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    .end local v1    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v2    # "intermediate":[B
    :catch_1b
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to decrypt blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .registers 3
    .param p0, "keyAlias"    # Ljava/lang/String;

    .line 181
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 182
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 183
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 187
    goto :goto_12

    .line 184
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    :catch_e
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 8
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 70
    if-nez p1, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 76
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 77
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 78
    .local v1, "ciphertext":[B
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    .line 79
    .local v2, "iv":[B
    array-length v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2b

    .line 82
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v3, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 84
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 85
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 80
    .end local v3    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_2b
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid iv length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static encrypt([B[B[B)[B
    .registers 7
    .param p0, "keyBytes"    # [B
    .param p1, "personalisation"    # [B
    .param p2, "message"    # [B

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    .line 90
    .local v0, "keyHash":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 93
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_17
    invoke-static {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v2

    .line 94
    :catch_1c
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    const/4 v3, 0x0

    return-object v3
.end method

.method protected static varargs personalisedHash([B[[B)[B
    .registers 7
    .param p0, "personalisation"    # [B
    .param p1, "message"    # [[B

    .line 192
    const/16 v0, 0x80

    .line 193
    .local v0, "PADDING_LENGTH":I
    :try_start_2
    const-string v1, "SHA-512"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 194
    .local v1, "digest":Ljava/security/MessageDigest;
    array-length v2, p0

    const/16 v3, 0x80

    if-gt v2, v3, :cond_26

    .line 199
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object p0, v2

    .line 200
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    array-length v2, p1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_21

    aget-object v4, p1, v3

    .line 202
    .local v4, "data":[B
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 201
    .end local v4    # "data":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 204
    :cond_21
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    return-object v2

    .line 195
    :cond_26
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Personalisation too long"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2e} :catch_2e

    .line 205
    .end local v0    # "PADDING_LENGTH":I
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :catch_2e
    move-exception v0

    .line 206
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
