.class public Lcom/android/server/wifi/WifiServiceInjector;
.super Ljava/lang/Object;
.source "WifiServiceInjector.java"


# static fields
.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "WifiServiceInjector"

.field private static final WIFI_CONFIG_HEADER:Ljava/lang/String; = "network={"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfBackgroundScanAllowed(Landroid/content/Context;Landroid/os/WorkSource;)Z
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 35
    if-eqz p1, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v0

    goto :goto_c

    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 37
    .local v0, "realOwner":I
    :goto_c
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 38
    return v2

    .line 42
    :cond_14
    :try_start_14
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1a} :catch_21

    .line 45
    nop

    .line 46
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v1

    return v1

    .line 43
    :catch_21
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/SecurityException;
    return v2
.end method

.method private static encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "ssid"    # Ljava/lang/String;

    .line 163
    const-string v0, ""

    .line 165
    .local v0, "hex":Ljava/lang/String;
    :try_start_2
    const-string v1, "GBK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceInjector;->toHex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 168
    goto :goto_25

    .line 166
    :catch_e
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "WifiServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeGbk to hex failed when read wifi data from wpa_supplicant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_25
    return-object v0
.end method

.method private static encodeUtf8SSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "ssid"    # Ljava/lang/String;

    .line 153
    const-string v0, ""

    .line 155
    .local v0, "hex":Ljava/lang/String;
    :try_start_2
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceInjector;->toHex([B)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 158
    goto :goto_25

    .line 156
    :catch_e
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "WifiServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeUtf8 to hex failed when read wifi data from wpa_supplicant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_25
    return-object v0
.end method

.method private static fromHex(CZ)I
    .registers 5
    .param p0, "ch"    # C
    .param p1, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 196
    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    .line 197
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 198
    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_17

    const/16 v1, 0x66

    if-gt p0, v1, :cond_17

    .line 199
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 200
    :cond_17
    const/16 v0, 0x46

    if-gt p0, v0, :cond_23

    const/16 v0, 0x41

    if-lt p0, v0, :cond_23

    .line 201
    add-int/lit8 v1, p0, 0xa

    sub-int/2addr v1, v0

    return v1

    .line 202
    :cond_23
    if-eqz p1, :cond_27

    .line 203
    const/4 v0, -0x1

    return v0

    .line 205
    :cond_27
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad hex-character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static handleClientMessage(Landroid/os/Message;)V
    .registers 7
    .param p0, "msg"    # Landroid/os/Message;

    .line 50
    iget v0, p0, Landroid/os/Message;->what:I

    const v1, 0x25fa1

    if-eq v0, v1, :cond_8

    goto :goto_40

    .line 53
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_15

    .line 54
    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 56
    :cond_15
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    goto :goto_1f

    :cond_1e
    move-object v0, v3

    .line 57
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    :goto_1f
    if-eqz v0, :cond_3c

    .line 59
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 60
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiServiceInjector;->parseKeyMgmt(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiServiceInjector;->readWifiConfigFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "wifiConfig":Ljava/lang/String;
    if-eqz v1, :cond_3c

    .line 62
    const/4 v2, 0x1

    const-string v3, "config"

    .line 63
    invoke-static {v3, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 62
    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 64
    goto :goto_40

    .line 67
    .end local v1    # "wifiConfig":Ljava/lang/String;
    :cond_3c
    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 68
    nop

    .line 72
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_40
    return-void
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "text"    # Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_3c

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/2addr v0, v1

    new-array v0, v0, [B

    .line 185
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 186
    .local v1, "position":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "n":I
    .local v3, "position":I
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3b

    .line 187
    nop

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v2}, Lcom/android/server/wifi/WifiServiceInjector;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 189
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiServiceInjector;->fromHex(CZ)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 186
    add-int/lit8 v1, v1, 0x2

    goto :goto_13

    .line 192
    .end local v1    # "n":I
    :cond_3b
    return-object v0

    .line 182
    .end local v0    # "data":[B
    .end local v3    # "position":I
    :cond_3c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd length hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isGBK(Ljava/lang/String;)Z
    .registers 10
    .param p0, "hex"    # Ljava/lang/String;

    .line 210
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceInjector;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 213
    .local v0, "bytes":[B
    const/4 v1, 0x1

    .line 214
    .local v1, "isAllASCII":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "isAllASCII":Z
    :goto_8
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v1, v4, :cond_38

    .line 215
    aget-byte v4, v0, v1

    const/16 v6, 0xff

    and-int/2addr v4, v6

    .line 216
    .local v4, "byte1":I
    const/16 v7, 0x81

    if-lt v4, v7, :cond_30

    if-ge v4, v6, :cond_30

    add-int/lit8 v7, v1, 0x1

    array-length v8, v0

    if-ge v7, v8, :cond_30

    .line 217
    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v0, v7

    and-int/2addr v7, v6

    .line 218
    .local v7, "byte2":I
    const/16 v8, 0x40

    if-lt v7, v8, :cond_2f

    if-ge v7, v6, :cond_2f

    const/16 v6, 0x7f

    if-eq v7, v6, :cond_2f

    .line 220
    const/4 v3, 0x0

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 223
    goto :goto_35

    .line 225
    :cond_2f
    return v2

    .line 227
    .end local v7    # "byte2":I
    :cond_30
    const/16 v6, 0x80

    if-ge v4, v6, :cond_37

    .line 229
    nop

    .line 214
    :goto_35
    add-int/2addr v1, v5

    goto :goto_8

    .line 231
    :cond_37
    return v2

    .line 235
    .end local v1    # "i":I
    .end local v4    # "byte1":I
    :cond_38
    if-eqz v3, :cond_3b

    .line 236
    return v2

    .line 237
    :cond_3b
    return v5
.end method

.method private static isUTF8(Ljava/lang/String;)Z
    .registers 9
    .param p0, "hex"    # Ljava/lang/String;

    .line 241
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceInjector;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 242
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 244
    .local v1, "nBytes":I
    const/4 v2, 0x1

    .line 245
    .local v2, "isAllASCII":Z
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "nBytes":I
    .local v4, "isAllASCII":Z
    :goto_a
    array-length v5, v0

    if-ge v1, v5, :cond_4b

    .line 246
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    .line 247
    .local v5, "chr":I
    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_16

    .line 248
    const/4 v4, 0x0

    .line 250
    :cond_16
    const/16 v6, 0x80

    if-nez v2, :cond_41

    .line 251
    if-lt v5, v6, :cond_48

    .line 252
    const/16 v6, 0xfc

    if-lt v5, v6, :cond_26

    const/16 v6, 0xfd

    if-gt v5, v6, :cond_26

    .line 253
    const/4 v2, 0x6

    goto :goto_3d

    .line 254
    :cond_26
    const/16 v6, 0xf8

    if-lt v5, v6, :cond_2c

    .line 255
    const/4 v2, 0x5

    goto :goto_3d

    .line 256
    :cond_2c
    const/16 v6, 0xf0

    if-lt v5, v6, :cond_32

    .line 257
    const/4 v2, 0x4

    goto :goto_3d

    .line 258
    :cond_32
    const/16 v6, 0xe0

    if-lt v5, v6, :cond_38

    .line 259
    const/4 v2, 0x3

    goto :goto_3d

    .line 260
    :cond_38
    const/16 v6, 0xc0

    if-lt v5, v6, :cond_40

    .line 261
    const/4 v2, 0x2

    .line 265
    :goto_3d
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 263
    :cond_40
    return v3

    .line 268
    :cond_41
    and-int/lit16 v7, v5, 0xc0

    if-eq v7, v6, :cond_46

    .line 269
    return v3

    .line 271
    :cond_46
    add-int/lit8 v2, v2, -0x1

    .line 245
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 275
    .end local v1    # "i":I
    .end local v5    # "chr":I
    :cond_4b
    if-gtz v2, :cond_52

    if-eqz v4, :cond_50

    goto :goto_52

    .line 278
    :cond_50
    const/4 v1, 0x1

    return v1

    .line 276
    :cond_52
    :goto_52
    return v3
.end method

.method private static parseKeyMgmt(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 285
    .local v1, "nextSetBit":I
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 287
    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 288
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 292
    :cond_21
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_30

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 295
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static readWifiConfigFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "keyMgmt"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "wifiConfigBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move-object v2, v1

    .line 79
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 80
    const/4 v3, 0x0

    .line 82
    .local v3, "found":Z
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceInjector;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "ssidNoQuotes":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "ssidWithQuotes":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "line":Ljava/lang/String;
    :goto_2f
    if-eqz v6, :cond_f9

    .line 86
    const-string v7, "[ \\t]*network=\\{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 87
    const/4 v3, 0x1

    .line 89
    :cond_3a
    if-eqz v3, :cond_f2

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "trimmedLine":Ljava/lang/String;
    const/4 v8, 0x0

    .line 92
    .local v8, "match":Z
    const-string/jumbo v9, "ssid="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b9

    .line 93
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "ssidHex":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_72

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x22

    if-ne v10, v12, :cond_72

    .line 95
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_72

    .line 96
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 97
    const/4 v8, 0x1

    goto :goto_93

    .line 100
    :cond_72
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceInjector;->isUTF8(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_82

    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceInjector;->encodeUtf8SSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_92

    .line 101
    :cond_82
    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceInjector;->isGBK(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceInjector;->encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 102
    :cond_92
    const/4 v8, 0x1

    .line 105
    :cond_93
    :goto_93
    if-eqz v8, :cond_b8

    .line 106
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "network={\n"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ssid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .end local v9    # "ssidHex":Ljava/lang/String;
    :cond_b8
    goto :goto_cf

    :cond_b9
    if-eqz v0, :cond_cf

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_cf
    :goto_cf
    const-string/jumbo v9, "key_mgmt="

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e7

    if-eqz v0, :cond_e7

    .line 113
    const/16 v9, 0x9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e7

    .line 114
    const/4 v0, 0x0

    .line 117
    :cond_e7
    const-string v9, "[ \\t]*\\}"

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f2

    if-eqz v0, :cond_f2

    .line 118
    goto :goto_f9

    .line 85
    .end local v7    # "trimmedLine":Ljava/lang/String;
    .end local v8    # "match":Z
    :cond_f2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f6} :catch_120
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f6} :catch_103
    .catchall {:try_start_3 .. :try_end_f6} :catchall_101

    move-object v6, v7

    goto/16 :goto_2f

    .line 128
    .end local v3    # "found":Z
    .end local v4    # "ssidNoQuotes":Ljava/lang/String;
    .end local v5    # "ssidWithQuotes":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    :cond_f9
    :goto_f9
    nop

    .line 129
    :try_start_fa
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_fe

    goto :goto_100

    .line 131
    :catch_fe
    move-exception v3

    .line 134
    goto :goto_13d

    .line 133
    :cond_100
    :goto_100
    goto :goto_13d

    .line 127
    :catchall_101
    move-exception v1

    goto :goto_145

    .line 124
    :catch_103
    move-exception v3

    .line 125
    .local v3, "e":Ljava/io/IOException;
    :try_start_104
    const-string v4, "WifiServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_104 .. :try_end_11a} :catchall_101

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_100

    .line 129
    :try_start_11c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_fe

    goto :goto_100

    .line 122
    :catch_120
    move-exception v3

    .line 123
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_121
    const-string v4, "WifiServiceInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_121 .. :try_end_137} :catchall_101

    .line 128
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_100

    .line 129
    :try_start_139
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_fe

    goto :goto_100

    .line 136
    :goto_13d
    if-eqz v0, :cond_144

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_144
    return-object v1

    .line 127
    :goto_145
    nop

    .line 128
    if-eqz v2, :cond_14e

    .line 129
    :try_start_148
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_14c

    goto :goto_14e

    .line 131
    :catch_14c
    move-exception v3

    nop

    .line 133
    :cond_14e
    :goto_14e
    throw v1
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 300
    const-string v0, ""

    return-object v0

    .line 302
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 303
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_28

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_28

    add-int/lit8 v2, v0, -0x1

    .line 304
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_28

    .line 305
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 307
    :cond_28
    return-object p0
.end method

.method private static replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 6
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 142
    .local v0, "reply":Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 143
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 144
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 148
    .end local v0    # "reply":Landroid/os/Message;
    goto :goto_1b

    .line 146
    :catch_12
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiServiceInjector"

    const-string/jumbo v2, "replyToMessage Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 9
    .param p0, "octets"    # [B

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_26

    aget-byte v4, p0, v3

    .line 175
    .local v4, "o":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v4, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .end local v4    # "o":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 177
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
