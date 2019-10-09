.class Lcom/android/server/net/watchlist/WatchlistSettings;
.super Ljava/lang/Object;
.source "WatchlistSettings.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "watchlist_settings.xml"

.field private static final SECRET_KEY_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String; = "WatchlistSettings"

.field private static final sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;


# instance fields
.field private mPrivacySecretKey:[B

.field private final mXmlFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-direct {v0}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>()V

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 71
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getSystemWatchlistFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/watchlist/WatchlistSettings;-><init>(Ljava/io/File;)V

    .line 72
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "xmlFile"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 80
    new-instance v0, Landroid/util/AtomicFile;

    const-string/jumbo v1, "net-watchlist"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    .line 81
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->reloadSettings()V

    .line 82
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    if-nez v0, :cond_20

    .line 84
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->generatePrivacySecretKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    .line 85
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistSettings;->saveSettings()V

    .line 87
    :cond_20
    return-void
.end method

.method private generatePrivacySecretKey()[B
    .registers 3

    .line 134
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 135
    .local v0, "key":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 136
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistSettings;->sInstance:Lcom/android/server/net/watchlist/WatchlistSettings;

    return-object v0
.end method

.method static getSystemWatchlistFile()Ljava/io/File;
    .registers 3

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "watchlist_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseSecretKey(Lorg/xmlpull/v1/XmlPullParser;)[B
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 113
    const-string/jumbo v0, "secret-key"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    .local v0, "key":[B
    const-string/jumbo v2, "secret-key"

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    if-eqz v0, :cond_20

    array-length v2, v0

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1f

    goto :goto_20

    .line 120
    :cond_1f
    return-object v0

    .line 117
    :cond_20
    :goto_20
    const-string v2, "WatchlistSettings"

    const-string v3, "Unable to parse secret key"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v1
.end method

.method private reloadSettings()V
    .registers 7

    .line 90
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    .line 92
    return-void

    .line 94
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_f} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_f} :catch_63
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_f} :catch_63
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_63
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_f} :catch_63

    .line 94
    .local v0, "stream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 95
    :try_start_10
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 96
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v3, "network-watchlist-settings"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 98
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 99
    .local v3, "outerDepth":I
    :cond_27
    :goto_27
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "secret-key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 101
    invoke-direct {p0, v2}, Lcom/android/server/net/watchlist/WatchlistSettings;->parseSecretKey(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    goto :goto_27

    .line 104
    :cond_41
    const-string v4, "WatchlistSettings"

    const-string v5, "Reload watchlist settings done"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_48} :catch_50
    .catchall {:try_start_10 .. :try_end_48} :catchall_4e

    .line 105
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "outerDepth":I
    if-eqz v0, :cond_4d

    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_4a .. :try_end_4d} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_4a .. :try_end_4d} :catch_63
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4d} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_4d} :catch_63
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_63
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4a .. :try_end_4d} :catch_63

    .line 108
    .end local v0    # "stream":Ljava/io/FileInputStream;
    :cond_4d
    goto :goto_6b

    .line 105
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    :catchall_4e
    move-exception v2

    goto :goto_52

    .line 94
    :catch_50
    move-exception v1

    :try_start_51
    throw v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4e

    .line 105
    :goto_52
    if-eqz v0, :cond_62

    if-eqz v1, :cond_5f

    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_5a
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_59} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_59} :catch_63
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_59} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_59} :catch_63
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_63
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_56 .. :try_end_59} :catch_63

    goto :goto_62

    :catch_5a
    move-exception v3

    :try_start_5b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_62

    :cond_5f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_62
    :goto_62
    throw v2
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_63} :catch_63
    .catch Ljava/lang/NullPointerException; {:try_start_5b .. :try_end_63} :catch_63
    .catch Ljava/lang/NumberFormatException; {:try_start_5b .. :try_end_63} :catch_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_63} :catch_63
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_63
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b .. :try_end_63} :catch_63

    .end local v0    # "stream":Ljava/io/FileInputStream;
    :catch_63
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WatchlistSettings"

    const-string v2, "Failed parsing xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method

.method private saveSettings()V
    .registers 5

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_57

    .line 146
    .local v0, "stream":Ljava/io/FileOutputStream;
    nop

    .line 145
    nop

    .line 148
    :try_start_8
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 149
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 151
    const-string/jumbo v2, "network-watchlist-settings"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string/jumbo v2, "secret-key"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const-string/jumbo v2, "secret-key"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const-string/jumbo v2, "network-watchlist-settings"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 157
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_48} :catch_49

    .line 161
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_56

    .line 158
    :catch_49
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "WatchlistSettings"

    const-string v3, "Failed to write display settings, restoring backup."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mXmlFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    :goto_56
    return-void

    .line 143
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    :catch_57
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WatchlistSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write display settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method


# virtual methods
.method declared-synchronized getPrivacySecretKey()[B
    .registers 5

    monitor-enter p0

    .line 128
    const/16 v0, 0x30

    :try_start_3
    new-array v1, v0, [B

    .line 129
    .local v1, "key":[B
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistSettings;->mPrivacySecretKey:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 130
    monitor-exit p0

    return-object v1

    .line 127
    .end local v1    # "key":[B
    :catchall_d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/net/watchlist/WatchlistSettings;
    throw v0
.end method
