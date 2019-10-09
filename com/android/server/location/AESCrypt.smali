.class public Lcom/android/server/location/AESCrypt;
.super Ljava/lang/Object;
.source "AESCrypt.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final encBytes([B[B[B)[B
    .registers 7
    .param p0, "srcBytes"    # [B
    .param p1, "key"    # [B
    .param p2, "newIv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 20
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 21
    .local v1, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 22
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 23
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 24
    .local v3, "encrypted":[B
    return-object v3
.end method

.method public static final encText(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "sSrc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_2e

    .line 30
    .local v1, "key":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    .line 31
    .local v0, "ivk":[B
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 32
    .local v2, "srcBytes":[B
    invoke-static {v2, v1, v0}, Lcom/android/server/location/AESCrypt;->encBytes([B[B[B)[B

    move-result-object v3

    .line 33
    .local v3, "encrypted":[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "outPut":Ljava/lang/String;
    const-string v5, "\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\r"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 35
    return-object v4

    nop

    :array_2e
    .array-data 1
        0x61t
        0x72t
        0x65t
        0x79t
        0x6ft
        0x75t
        0x6ft
        0x6bt
        0x61t
        0x72t
        0x65t
        0x79t
        0x6ft
        0x75t
        0x6ft
        0x6bt
    .end array-data

    :array_3a
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data
.end method
