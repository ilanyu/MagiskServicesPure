.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static final DBG:Z = false

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x3

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 70
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/DelayedDiskWrite;)V
    .registers 2
    .param p1, "writer"    # Lcom/android/server/net/DelayedDiskWrite;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 67
    return-void
.end method

.method static synthetic lambda$writeIpAndProxyConfigurationsToFile$0(Landroid/util/SparseArray;Ljava/io/DataOutputStream;)V
    .registers 5
    .param p0, "networks"    # Landroid/util/SparseArray;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 186
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 188
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method static synthetic lambda$writeIpConfigurations$1(Landroid/util/ArrayMap;Ljava/io/DataOutputStream;)V
    .registers 5
    .param p0, "networks"    # Landroid/util/ArrayMap;
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 196
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpConfiguration;

    invoke-static {p1, v1, v2}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 198
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 414
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 410
    const-string v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    invoke-static {p0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 234
    .local v0, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    if-nez v0, :cond_8

    .line 235
    const/4 v1, 0x0

    return-object v1

    .line 238
    :cond_8
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 239
    .local v1, "networksById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 240
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 241
    .local v3, "id":I
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IpConfiguration;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    .end local v3    # "id":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 244
    .end local v2    # "i":I
    :cond_2e
    return-object v1
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_11

    .line 225
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 224
    nop

    .line 226
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_11
    move-exception v0

    .line 223
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 224
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    return-object v1
.end method

.method public static readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;
    .registers 20
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    .line 251
    .local v1, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    const/4 v2, 0x0

    move-object v3, v2

    .line 253
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    move-object/from16 v4, p0

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    .line 255
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v5, v0

    .line 256
    .local v5, "version":I
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2b

    const/4 v0, 0x2

    if-eq v5, v0, :cond_2b

    if-eq v5, v7, :cond_2b

    .line 257
    const-string v0, "Bad version on IP configuration file, ignore read"

    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_23} :catch_28e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_23} :catch_269
    .catchall {:try_start_8 .. :try_end_23} :catchall_266

    .line 258
    nop

    .line 399
    nop

    .line 401
    :try_start_25
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 402
    goto :goto_2a

    :catch_29
    move-exception v0

    .line 258
    :goto_2a
    return-object v2

    .line 262
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    .line 264
    .local v0, "uniqueToken":Ljava/lang/String;
    :try_start_2c
    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 265
    .local v8, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 266
    .local v9, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v10, Landroid/net/StaticIpConfiguration;

    invoke-direct {v10}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 267
    .local v10, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/4 v11, 0x0

    .line 268
    .local v11, "proxyHost":Ljava/lang/String;
    const/4 v12, 0x0

    .line 269
    .local v12, "pacFileUrl":Ljava/lang/String;
    const/4 v13, -0x1

    .line 270
    .local v13, "proxyPort":I
    move v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v9

    move-object v9, v8

    move-object v8, v0

    move-object v0, v2

    .line 270
    .local v0, "exclusionList":Ljava/lang/String;
    .local v8, "uniqueToken":Ljava/lang/String;
    .local v9, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v11, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v12, "proxyHost":Ljava/lang/String;
    .local v13, "pacFileUrl":Ljava/lang/String;
    .local v14, "proxyPort":I
    :goto_3f
    move-object v15, v0

    .line 274
    .end local v0    # "exclusionList":Ljava/lang/String;
    .local v15, "exclusionList":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0
    :try_end_44
    .catch Ljava/io/EOFException; {:try_start_2c .. :try_end_44} :catch_28e
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_44} :catch_269
    .catchall {:try_start_2c .. :try_end_44} :catchall_266

    move-object/from16 v16, v0

    .line 276
    .local v16, "key":Ljava/lang/String;
    :try_start_46
    const-string v0, "id"
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_48} :catch_24c
    .catch Ljava/io/EOFException; {:try_start_46 .. :try_end_48} :catch_28e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_48} :catch_269
    .catchall {:try_start_46 .. :try_end_48} :catchall_266

    move-object/from16 v2, v16

    :try_start_4a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 276
    .end local v16    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    if-eqz v0, :cond_65

    .line 277
    if-ge v5, v6, :cond_5d

    .line 278
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 279
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    .line 280
    .end local v8    # "uniqueToken":Ljava/lang/String;
    .local v0, "uniqueToken":Ljava/lang/String;
    goto :goto_61

    .line 281
    .end local v0    # "uniqueToken":Ljava/lang/String;
    .restart local v8    # "uniqueToken":Ljava/lang/String;
    :cond_5d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 342
    .end local v15    # "exclusionList":Ljava/lang/String;
    .local v0, "exclusionList":Ljava/lang/String;
    :goto_61
    move-object v8, v0

    :goto_62
    move-object v0, v15

    goto/16 :goto_242

    .line 283
    .end local v0    # "exclusionList":Ljava/lang/String;
    .restart local v15    # "exclusionList":Ljava/lang/String;
    :cond_65
    const-string v0, "ipAssignment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 284
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    .line 342
    .end local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v0, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    move-object v9, v0

    goto :goto_62

    .line 285
    .end local v0    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    :cond_77
    const-string/jumbo v0, "linkAddress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 286
    new-instance v0, Landroid/net/LinkAddress;

    .line 287
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 288
    .local v0, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_a0

    iget-object v6, v10, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v6, :cond_a0

    .line 290
    iput-object v0, v10, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    goto :goto_b4

    .line 292
    :cond_a0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-IPv4 or duplicate address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 294
    .end local v0    # "linkAddr":Landroid/net/LinkAddress;
    :goto_b4
    goto :goto_62

    :cond_b5
    const-string v0, "gateway"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "dest":Landroid/net/LinkAddress;
    const/4 v6, 0x0

    .line 297
    .local v6, "gateway":Ljava/net/InetAddress;
    const/4 v7, 0x1

    if-ne v5, v7, :cond_ee

    .line 299
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    move-object v6, v7

    .line 300
    iget-object v7, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v7, :cond_d3

    .line 301
    iput-object v6, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto/16 :goto_143

    .line 303
    :cond_d3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Duplicate gateway: "

    .line 303
    .end local v0    # "dest":Landroid/net/LinkAddress;
    .local v17, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto :goto_143

    .line 306
    .end local v17    # "dest":Landroid/net/LinkAddress;
    .restart local v0    # "dest":Landroid/net/LinkAddress;
    :cond_ee
    move-object/from16 v17, v0

    .line 306
    .end local v0    # "dest":Landroid/net/LinkAddress;
    .restart local v17    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_109

    .line 307
    new-instance v0, Landroid/net/LinkAddress;

    .line 308
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 309
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-direct {v0, v7, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 309
    .end local v17    # "dest":Landroid/net/LinkAddress;
    .restart local v0    # "dest":Landroid/net/LinkAddress;
    goto :goto_10b

    .line 311
    .end local v0    # "dest":Landroid/net/LinkAddress;
    .restart local v17    # "dest":Landroid/net/LinkAddress;
    :cond_109
    move-object/from16 v0, v17

    .line 311
    .end local v17    # "dest":Landroid/net/LinkAddress;
    .restart local v0    # "dest":Landroid/net/LinkAddress;
    :goto_10b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_11b

    .line 312
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v6, v4

    .line 314
    :cond_11b
    new-instance v4, Landroid/net/RouteInfo;

    invoke-direct {v4, v0, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 315
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v16

    if-eqz v16, :cond_12d

    iget-object v7, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-nez v7, :cond_12d

    .line 317
    iput-object v6, v10, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto :goto_143

    .line 319
    :cond_12d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "Non-IPv4 default or duplicate route: "

    .line 319
    .end local v0    # "dest":Landroid/net/LinkAddress;
    .local v18, "dest":Landroid/net/LinkAddress;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 322
    .end local v4    # "route":Landroid/net/RouteInfo;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    .end local v18    # "dest":Landroid/net/LinkAddress;
    :goto_143
    goto/16 :goto_62

    :cond_145
    const-string v0, "dns"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15c

    .line 323
    iget-object v0, v10, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    .line 324
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 323
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    .line 325
    :cond_15c
    const-string/jumbo v0, "proxySettings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 326
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    .line 342
    .end local v11    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v0, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    move-object v11, v0

    goto/16 :goto_62

    .line 327
    .end local v0    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v11    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    :cond_170
    const-string/jumbo v0, "proxyHost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 328
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 342
    .end local v12    # "proxyHost":Ljava/lang/String;
    .local v0, "proxyHost":Ljava/lang/String;
    move-object v12, v0

    goto/16 :goto_62

    .line 329
    .end local v0    # "proxyHost":Ljava/lang/String;
    .restart local v12    # "proxyHost":Ljava/lang/String;
    :cond_180
    const-string/jumbo v0, "proxyPort"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 330
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 342
    .end local v14    # "proxyPort":I
    .local v0, "proxyPort":I
    move v14, v0

    goto/16 :goto_62

    .line 331
    .end local v0    # "proxyPort":I
    .restart local v14    # "proxyPort":I
    :cond_190
    const-string/jumbo v0, "proxyPac"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 332
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 342
    .end local v13    # "pacFileUrl":Ljava/lang/String;
    .local v0, "pacFileUrl":Ljava/lang/String;
    move-object v13, v0

    goto/16 :goto_62

    .line 333
    .end local v0    # "pacFileUrl":Ljava/lang/String;
    .restart local v13    # "pacFileUrl":Ljava/lang/String;
    :cond_1a0
    const-string v0, "exclusionList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 334
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 334
    .end local v15    # "exclusionList":Ljava/lang/String;
    .local v0, "exclusionList":Ljava/lang/String;
    goto/16 :goto_242

    .line 335
    .end local v0    # "exclusionList":Ljava/lang/String;
    .restart local v15    # "exclusionList":Ljava/lang/String;
    :cond_1ae
    const-string v0, "eos"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_1b4} :catch_24a
    .catch Ljava/io/EOFException; {:try_start_4a .. :try_end_1b4} :catch_28e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_1b4} :catch_269
    .catchall {:try_start_4a .. :try_end_1b4} :catchall_266

    if-eqz v0, :cond_226

    .line 336
    nop

    .line 345
    if-eqz v8, :cond_21e

    .line 346
    :try_start_1b9
    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 347
    .local v0, "config":Landroid/net/IpConfiguration;
    invoke-virtual {v1, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v4, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_294

    .line 362
    const-string v4, "Ignore invalid ip assignment while reading."

    goto :goto_1e1

    .line 358
    :pswitch_1cf
    const-string v4, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 359
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 360
    goto :goto_1e8

    .line 355
    :pswitch_1d9
    iput-object v9, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 356
    goto :goto_1e8

    .line 351
    :pswitch_1dc
    iput-object v10, v0, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 352
    iput-object v9, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 353
    goto :goto_1e8

    .line 362
    :goto_1e1
    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 363
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 367
    :goto_1e8
    sget-object v4, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual {v11}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_29e

    .line 387
    const-string v4, "Ignore invalid proxy settings while reading"

    goto :goto_217

    .line 383
    :pswitch_1f6
    const-string v4, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 384
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 385
    goto :goto_21e

    .line 380
    :pswitch_200
    iput-object v11, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 381
    goto :goto_21e

    .line 375
    :pswitch_203
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v13}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 376
    .local v4, "proxyPacProperties":Landroid/net/ProxyInfo;
    iput-object v11, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 377
    iput-object v4, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 378
    goto :goto_21e

    .line 369
    .end local v4    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_20d
    new-instance v4, Landroid/net/ProxyInfo;

    invoke-direct {v4, v12, v14, v15}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    .local v4, "proxyInfo":Landroid/net/ProxyInfo;
    iput-object v11, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 372
    iput-object v4, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 373
    goto :goto_21e

    .line 387
    .end local v4    # "proxyInfo":Landroid/net/ProxyInfo;
    :goto_217
    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 388
    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_21e
    .catch Ljava/io/EOFException; {:try_start_1b9 .. :try_end_21e} :catch_28e
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_21e} :catch_269
    .catchall {:try_start_1b9 .. :try_end_21e} :catchall_266

    .line 394
    .end local v0    # "config":Landroid/net/IpConfiguration;
    .end local v2    # "key":Ljava/lang/String;
    .end local v8    # "uniqueToken":Ljava/lang/String;
    .end local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v11    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v12    # "proxyHost":Ljava/lang/String;
    .end local v13    # "pacFileUrl":Ljava/lang/String;
    .end local v14    # "proxyPort":I
    .end local v15    # "exclusionList":Ljava/lang/String;
    :cond_21e
    :goto_21e
    nop

    .line 262
    const/4 v2, 0x0

    move-object/from16 v4, p0

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_2b

    .line 338
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v8    # "uniqueToken":Ljava/lang/String;
    .restart local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v11    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v12    # "proxyHost":Ljava/lang/String;
    .restart local v13    # "pacFileUrl":Ljava/lang/String;
    .restart local v14    # "proxyPort":I
    .restart local v15    # "exclusionList":Ljava/lang/String;
    :cond_226
    :try_start_226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore unknown key "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "while reading"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_240
    .catch Ljava/lang/IllegalArgumentException; {:try_start_226 .. :try_end_240} :catch_24a
    .catch Ljava/io/EOFException; {:try_start_226 .. :try_end_240} :catch_28e
    .catch Ljava/io/IOException; {:try_start_226 .. :try_end_240} :catch_269
    .catchall {:try_start_226 .. :try_end_240} :catchall_266

    goto/16 :goto_62

    .line 342
    .end local v15    # "exclusionList":Ljava/lang/String;
    .local v0, "exclusionList":Ljava/lang/String;
    :goto_242
    nop

    .line 270
    .end local v2    # "key":Ljava/lang/String;
    :goto_243
    const/4 v2, 0x0

    move-object/from16 v4, p0

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_3f

    .line 340
    .end local v0    # "exclusionList":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v15    # "exclusionList":Ljava/lang/String;
    :catch_24a
    move-exception v0

    goto :goto_24f

    .line 340
    .end local v2    # "key":Ljava/lang/String;
    .restart local v16    # "key":Ljava/lang/String;
    :catch_24c
    move-exception v0

    move-object/from16 v2, v16

    .line 341
    .end local v16    # "key":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "key":Ljava/lang/String;
    :goto_24f
    :try_start_24f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore invalid address while reading"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_263
    .catch Ljava/io/EOFException; {:try_start_24f .. :try_end_263} :catch_28e
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_263} :catch_269
    .catchall {:try_start_24f .. :try_end_263} :catchall_266

    .line 343
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 270
    move-object v0, v15

    goto :goto_243

    .line 399
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "version":I
    .end local v8    # "uniqueToken":Ljava/lang/String;
    .end local v9    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v10    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v11    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v12    # "proxyHost":Ljava/lang/String;
    .end local v13    # "pacFileUrl":Ljava/lang/String;
    .end local v14    # "proxyPort":I
    .end local v15    # "exclusionList":Ljava/lang/String;
    :catchall_266
    move-exception v0

    move-object v2, v0

    goto :goto_286

    .line 396
    :catch_269
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    :try_start_26a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing configuration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_27e
    .catchall {:try_start_26a .. :try_end_27e} :catchall_266

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_292

    .line 401
    :goto_280
    :try_start_280
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_280 .. :try_end_283} :catch_284

    .line 402
    goto :goto_292

    :catch_284
    move-exception v0

    goto :goto_292

    .line 399
    :goto_286
    if-eqz v3, :cond_28d

    .line 401
    :try_start_288
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_28b} :catch_28c

    .line 402
    goto :goto_28d

    :catch_28c
    move-exception v0

    :cond_28d
    :goto_28d
    throw v2

    .line 395
    :catch_28e
    move-exception v0

    .line 399
    if-eqz v3, :cond_292

    goto :goto_280

    .line 406
    :cond_292
    :goto_292
    return-object v1

    nop

    :pswitch_data_294
    .packed-switch 0x1
        :pswitch_1dc
        :pswitch_1d9
        :pswitch_1cf
    .end packed-switch

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_20d
        :pswitch_203
        :pswitch_200
        :pswitch_1f6
    .end packed-switch
.end method

.method public static readIpConfigurations(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .line 204
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_11

    .line 210
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    nop

    .line 209
    nop

    .line 211
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpConfigurations(Ljava/io/InputStream;)Landroid/util/ArrayMap;

    move-result-object v1

    return-object v1

    .line 205
    .end local v0    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_11
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error opening configuration file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 209
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    return-object v1
.end method

.method private static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;)Z
    .registers 4
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z

    move-result v0

    return v0
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;Ljava/lang/String;Landroid/net/IpConfiguration;I)Z
    .registers 9
    .param p0, "out"    # Ljava/io/DataOutputStream;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "config"    # Landroid/net/IpConfiguration;
    .param p3, "version"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    move v1, v0

    .line 84
    .local v1, "written":Z
    :try_start_2
    sget-object v2, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v3, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v3}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_152

    .line 118
    const-string v0, "Ignore invalid ip assignment while writing"

    goto/16 :goto_8f

    .line 116
    :pswitch_13
    goto/16 :goto_92

    .line 110
    :pswitch_15
    const-string v0, "ipAssignment"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 111
    iget-object v0, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x1

    .line 113
    goto :goto_92

    .line 86
    :pswitch_25
    const-string v2, "ipAssignment"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    iget-object v2, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    iget-object v2, p2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 89
    .local v2, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v2, :cond_8d

    .line 90
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v3, :cond_55

    .line 91
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 92
    .local v3, "ipAddress":Landroid/net/LinkAddress;
    const-string/jumbo v4, "linkAddress"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    .end local v3    # "ipAddress":Landroid/net/LinkAddress;
    :cond_55
    iget-object v3, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v3, :cond_6e

    .line 97
    const-string v3, "gateway"

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    iget-object v0, v2, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    :cond_6e
    iget-object v0, v2, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 103
    .local v3, "inetAddr":Ljava/net/InetAddress;
    const-string v4, "dns"

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 105
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    goto :goto_74

    .line 107
    :cond_8d
    const/4 v1, 0x1

    .line 108
    goto :goto_92

    .line 118
    .end local v2    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :goto_8f
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 122
    :goto_92
    sget-object v0, Lcom/android/server/net/IpConfigStore$1;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_15c

    .line 155
    const-string v0, "Ignore invalid proxy settings while writing"

    goto :goto_115

    .line 153
    :pswitch_a2
    goto :goto_118

    .line 147
    :pswitch_a3
    const-string/jumbo v0, "proxySettings"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 148
    iget-object v0, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    .line 150
    .end local v1    # "written":Z
    .local v0, "written":Z
    nop

    .line 159
    move v1, v0

    goto :goto_118

    .line 139
    .end local v0    # "written":Z
    .restart local v1    # "written":Z
    :pswitch_b6
    iget-object v0, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 140
    .local v0, "proxyPacProperties":Landroid/net/ProxyInfo;
    const-string/jumbo v2, "proxySettings"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 141
    iget-object v2, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "proxyPac"

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x1

    .line 145
    goto :goto_118

    .line 124
    .end local v0    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_da
    iget-object v0, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 125
    .local v0, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "exclusionList":Ljava/lang/String;
    const-string/jumbo v3, "proxySettings"

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 127
    iget-object v3, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v3}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v3, "proxyHost"

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v3, "proxyPort"

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 132
    if-eqz v2, :cond_113

    .line 133
    const-string v3, "exclusionList"

    invoke-virtual {p0, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 136
    :cond_113
    const/4 v1, 0x1

    .line 137
    goto :goto_118

    .line 155
    .end local v0    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v2    # "exclusionList":Ljava/lang/String;
    :goto_115
    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 159
    :goto_118
    if-eqz v1, :cond_131

    .line 160
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x3

    if-ge p3, v0, :cond_12e

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_131

    .line 164
    :cond_12e
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_131} :catch_132

    .line 169
    :cond_131
    :goto_131
    goto :goto_14a

    .line 167
    :catch_132
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure in writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 170
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_14a
    const-string v0, "eos"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    return v1

    nop

    nop

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_25
        :pswitch_15
        :pswitch_13
    .end packed-switch

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_da
        :pswitch_b6
        :pswitch_a3
        :pswitch_a2
    .end packed-switch
.end method


# virtual methods
.method public writeIpAndProxyConfigurationsToFile(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$O2tmBZ0pfEt3xGZYo5ZrQq4edzM;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 189
    return-void
.end method

.method public writeIpConfigurations(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p2, "networks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;

    invoke-direct {v1, p2}, Lcom/android/server/net/-$$Lambda$IpConfigStore$rFY3yG3j6RGRgrQey7yYfi0Yze0;-><init>(Landroid/util/ArrayMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 199
    return-void
.end method
