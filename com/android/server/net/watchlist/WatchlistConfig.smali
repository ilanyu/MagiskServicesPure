.class Lcom/android/server/net/watchlist/WatchlistConfig;
.super Ljava/lang/Object;
.source "WatchlistConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;,
        Lcom/android/server/net/watchlist/WatchlistConfig$XmlTags;
    }
.end annotation


# static fields
.field private static final NETWORK_WATCHLIST_DB_FOR_TEST_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist_for_test.xml"

.field private static final NETWORK_WATCHLIST_DB_PATH:Ljava/lang/String; = "/data/misc/network_watchlist/network_watchlist.xml"

.field private static final TAG:Ljava/lang/String; = "WatchlistConfig"

.field private static final sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;


# instance fields
.field private volatile mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private volatile mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

.field private mIsSecureConfig:Z

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 95
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistConfig;-><init>(Ljava/io/File;)V

    .line 96
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "xmlFile"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 100
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 102
    return-void
.end method

.method private getCrc32(Ljava/lang/String;)[B
    .registers 10
    .param p1, "str"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 206
    .local v0, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 207
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 208
    .local v1, "tmp":J
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/16 v4, 0x18

    shr-long v4, v1, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/16 v4, 0x10

    shr-long v4, v1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/16 v4, 0x8

    shr-long v4, v1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x2

    aput-byte v4, v3, v5

    and-long v4, v1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v3, v5

    return-object v3
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;
    .registers 1

    .line 91
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistConfig;->sInstance:Lcom/android/server/net/watchlist/WatchlistConfig;

    return-object v0
.end method

.method private getSha256(Ljava/lang/String;)[B
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 216
    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_14

    .line 220
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 219
    nop

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 222
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 217
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_14
    move-exception v0

    .line 219
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 156
    .local p3, "hashList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v0, :cond_22

    .line 159
    const-string v2, "hash"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 161
    .local v2, "hash":[B
    const-string v4, "hash"

    invoke-interface {p1, v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v2    # "hash":[B
    goto :goto_5

    .line 164
    :cond_22
    invoke-interface {p1, v3, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method


# virtual methods
.method public containsDomain(Ljava/lang/String;)Z
    .registers 6
    .param p1, "domain"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 169
    .local v0, "domainDigests":Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 171
    return v1

    .line 174
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)[B

    move-result-object v2

    .line 175
    .local v2, "crc32":[B
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    if-nez v3, :cond_13

    .line 176
    return v1

    .line 179
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object v1

    .line 180
    .local v1, "sha256":[B
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    return v3
.end method

.method public containsIp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "ip"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 185
    .local v0, "ipDigests":Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 187
    return v1

    .line 190
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getCrc32(Ljava/lang/String;)[B

    move-result-object v2

    .line 191
    .local v2, "crc32":[B
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v2}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    if-nez v3, :cond_13

    .line 192
    return v1

    .line 195
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->getSha256(Ljava/lang/String;)[B

    move-result-object v1

    .line 196
    .local v1, "sha256":[B
    iget-object v3, v0, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v3, v1}, Lcom/android/server/net/watchlist/HarmfulDigests;->contains([B)Z

    move-result v3

    return v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    .line 278
    .local v0, "hash":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Watchlist config hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string v1, "Domain CRC32 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_30

    .line 282
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 284
    :cond_30
    const-string v1, "Domain SHA256 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_40

    .line 286
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 288
    :cond_40
    const-string v1, "Ip CRC32 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_50

    .line 291
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->crc32Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 293
    :cond_50
    const-string v1, "Ip SHA256 digest list:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    if-eqz v1, :cond_60

    .line 295
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    iget-object v1, v1, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;->sha256Digests:Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/net/watchlist/HarmfulDigests;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 297
    :cond_60
    return-void
.end method

.method public getWatchlistConfigHash()[B
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 236
    return-object v1

    .line 239
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_10} :catch_11

    return-object v0

    .line 240
    :catch_11
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WatchlistConfig"

    const-string v3, "Unable to get watchlist config hash"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public isConfigSecure()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    return v0
.end method

.method public reloadConfig()V
    .registers 14

    .line 108
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 110
    return-void

    .line 112
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_10} :catch_103
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_10} :catch_103
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_10} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_10} :catch_103
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_103
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_10} :catch_103

    .line 113
    .local v0, "stream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    :try_start_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, "crc32DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "sha256DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v4, "crc32IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v5, "sha256IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 119
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    const-string/jumbo v7, "watchlist-config"

    const/4 v8, 0x2

    invoke-interface {v6, v8, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_3c
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v8, :cond_bd

    .line 123
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "tagName":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x6f059362

    if-eq v11, v12, :cond_80

    const v12, -0xe260d6

    if-eq v11, v12, :cond_75

    const v12, 0x31cafa8d

    if-eq v11, v12, :cond_6b

    const v9, 0x6670a201

    if-eq v11, v9, :cond_61

    goto :goto_8a

    :cond_61
    const-string v9, "crc32-ip"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a

    const/4 v9, 0x1

    goto :goto_8b

    :cond_6b
    const-string/jumbo v11, "sha256-ip"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8a

    goto :goto_8b

    :cond_75
    const-string/jumbo v9, "sha256-domain"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a

    move v9, v8

    goto :goto_8b

    :cond_80
    const-string v9, "crc32-domain"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a

    const/4 v9, 0x0

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v9, v10

    :goto_8b
    packed-switch v9, :pswitch_data_10c

    .line 138
    const-string v9, "WatchlistConfig"

    goto :goto_a1

    .line 135
    :pswitch_91
    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 136
    goto :goto_bc

    .line 132
    :pswitch_95
    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 133
    goto :goto_bc

    .line 129
    :pswitch_99
    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 130
    goto :goto_bc

    .line 126
    :pswitch_9d
    invoke-direct {p0, v6, v7, v2}, Lcom/android/server/net/watchlist/WatchlistConfig;->parseHashes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    goto :goto_bc

    .line 138
    :goto_a1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 141
    .end local v7    # "tagName":Ljava/lang/String;
    :goto_bc
    goto :goto_3c

    .line 142
    :cond_bd
    const-string/jumbo v7, "watchlist-config"

    invoke-interface {v6, v9, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v7, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v8, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v8, v2}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v9, v3}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v7, v8, v9}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulDigests;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v7, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mDomainDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 145
    new-instance v7, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    new-instance v8, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v8, v4}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/android/server/net/watchlist/HarmfulDigests;

    invoke-direct {v9, v5}, Lcom/android/server/net/watchlist/HarmfulDigests;-><init>(Ljava/util/List;)V

    invoke-direct {v7, v8, v9}, Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;-><init>(Lcom/android/server/net/watchlist/HarmfulDigests;Lcom/android/server/net/watchlist/HarmfulDigests;)V

    iput-object v7, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIpDigests:Lcom/android/server/net/watchlist/WatchlistConfig$CrcShaDigests;

    .line 147
    const-string v7, "WatchlistConfig"

    const-string v8, "Reload watchlist done"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_ec} :catch_f2
    .catchall {:try_start_11 .. :try_end_ec} :catchall_f0

    .line 148
    .end local v2    # "crc32DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v3    # "sha256DomainList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "crc32IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "sha256IpList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_ec
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_ef
    .catch Ljava/lang/IllegalStateException; {:try_start_ec .. :try_end_ef} :catch_103
    .catch Ljava/lang/NullPointerException; {:try_start_ec .. :try_end_ef} :catch_103
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_ef} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ec .. :try_end_ef} :catch_103
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_103
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ec .. :try_end_ef} :catch_103

    .line 151
    .end local v0    # "stream":Ljava/io/FileInputStream;
    goto :goto_10b

    .line 148
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    :catchall_f0
    move-exception v2

    goto :goto_f4

    .line 112
    :catch_f2
    move-exception v1

    :try_start_f3
    throw v1
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f0

    .line 148
    :goto_f4
    if-eqz v1, :cond_ff

    :try_start_f6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_f9
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_f9} :catch_fa
    .catch Ljava/lang/IllegalStateException; {:try_start_f6 .. :try_end_f9} :catch_103
    .catch Ljava/lang/NullPointerException; {:try_start_f6 .. :try_end_f9} :catch_103
    .catch Ljava/lang/NumberFormatException; {:try_start_f6 .. :try_end_f9} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f6 .. :try_end_f9} :catch_103
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_103
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f6 .. :try_end_f9} :catch_103

    goto :goto_102

    :catch_fa
    move-exception v3

    :try_start_fb
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_102

    :cond_ff
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_102
    throw v2
    :try_end_103
    .catch Ljava/lang/IllegalStateException; {:try_start_fb .. :try_end_103} :catch_103
    .catch Ljava/lang/NullPointerException; {:try_start_fb .. :try_end_103} :catch_103
    .catch Ljava/lang/NumberFormatException; {:try_start_fb .. :try_end_103} :catch_103
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fb .. :try_end_103} :catch_103
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_103} :catch_103
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_fb .. :try_end_103} :catch_103

    .line 148
    .end local v0    # "stream":Ljava/io/FileInputStream;
    :catch_103
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WatchlistConfig"

    const-string v2, "Failed parsing xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10b
    return-void

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_91
    .end packed-switch
.end method

.method public removeTestModeConfig()V
    .registers 4

    .line 267
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 273
    .end local v0    # "f":Ljava/io/File;
    :cond_10
    goto :goto_19

    .line 271
    :catch_11
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WatchlistConfig"

    const-string v2, "Unable to delete test config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    return-void
.end method

.method public setTestMode(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "testConfigInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    const-string v0, "WatchlistConfig"

    const-string v1, "Setting watchlist testing config"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mIsSecureConfig:Z

    .line 261
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistConfig;->mXmlFile:Ljava/io/File;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 263
    return-void
.end method
