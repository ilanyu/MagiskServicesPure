.class public Lcom/android/server/usage/UsageStatsXml;
.super Ljava/lang/Object;
.source "UsageStatsXml.java"


# static fields
.field static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsageStatsXml"

.field private static final USAGESTATS_TAG:Ljava/lang/String; = "usagestats"

.field private static final VERSION_ATTR:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBeginTime(Landroid/util/AtomicFile;)J
    .registers 3
    .param p0, "file"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseBeginTime(Ljava/io/File;)J
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "name":Ljava/lang/String;
    :goto_4
    const-string v1, "-c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "-c"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 52
    :cond_1d
    :try_start_1d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_21} :catch_22

    return-wide v1

    .line 53
    :catch_22
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 5
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4} :catch_22

    .line 62
    .local v0, "in":Ljava/io/FileInputStream;
    :try_start_4
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 63
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 64
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1b

    .line 67
    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_22

    .line 70
    goto :goto_19

    .line 68
    :catch_17
    move-exception v1

    .line 71
    nop

    .line 75
    .end local v0    # "in":Ljava/io/FileInputStream;
    :goto_19
    nop

    .line 76
    return-void

    .line 66
    .restart local v0    # "in":Ljava/io/FileInputStream;
    :catchall_1b
    move-exception v1

    .line 67
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_22

    .line 70
    goto :goto_21

    .line 68
    :catch_20
    move-exception v2

    .line 70
    :goto_21
    :try_start_21
    throw v1
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_22} :catch_22

    .line 72
    .end local v0    # "in":Ljava/io/FileInputStream;
    :catch_22
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UsageStatsXml"

    const-string v2, "UsageStats Xml"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    throw v0
.end method

.method static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 93
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_4
    const-string/jumbo v1, "utf-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "usagestats"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    const-string/jumbo v2, "version"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_18} :catch_61

    .line 97
    .local v1, "versionStr":Ljava/lang/String;
    :try_start_18
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_26

    .line 99
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    .line 100
    nop

    .line 109
    nop

    .line 113
    .end local v1    # "versionStr":Ljava/lang/String;
    nop

    .line 114
    return-void

    .line 103
    .restart local v1    # "versionStr":Ljava/lang/String;
    :cond_26
    const-string v2, "UsageStatsXml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_53} :catch_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_53} :catch_61

    .line 106
    :catch_53
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_54
    const-string v3, "UsageStatsXml"

    const-string v4, "Bad version"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_61
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_61} :catch_61

    .line 110
    .end local v1    # "versionStr":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_61
    move-exception v1

    .line 111
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "UsageStatsXml"

    const-string v3, "Failed to parse Xml"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .param p0, "file"    # Landroid/util/AtomicFile;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 81
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    .line 82
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 83
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_10
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
.end method

.method static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 118
    .local v0, "xml":Lcom/android/internal/util/FastXmlSerializer;
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "utf-8"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 121
    const-string/jumbo v1, "usagestats"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string/jumbo v1, "version"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V

    .line 126
    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 128
    return-void
.end method
