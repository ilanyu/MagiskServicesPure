.class final Lcom/android/server/timezone/PackageStatusStorage;
.super Ljava/lang/Object;
.source "PackageStatusStorage.java"


# static fields
.field private static final ATTRIBUTE_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field private static final ATTRIBUTE_DATA_APP_VERSION:Ljava/lang/String; = "dataAppPackageVersion"

.field private static final ATTRIBUTE_OPTIMISTIC_LOCK_ID:Ljava/lang/String; = "optimisticLockId"

.field private static final ATTRIBUTE_UPDATE_APP_VERSION:Ljava/lang/String; = "updateAppPackageVersion"

.field private static final LOG_TAG:Ljava/lang/String; = "timezone.PackageStatusStorage"

.field private static final TAG_PACKAGE_STATUS:Ljava/lang/String; = "PackageStatus"

.field private static final UNKNOWN_PACKAGE_VERSION:J = -0x1L


# instance fields
.field private final mPackageStatusFile:Landroid/util/AtomicFile;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 139
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 5
    .param p1, "storageDir"    # Ljava/io/File;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-status.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "timezone-status"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    .line 85
    return-void
.end method

.method private getCurrentOptimisticLockId()I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_22

    .line 254
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 255
    :try_start_7
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 256
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v3, "optimisticLockId"

    invoke-static {v2, v3}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_12} :catch_1a
    .catchall {:try_start_7 .. :try_end_12} :catchall_18

    .line 257
    if-eqz v0, :cond_17

    :try_start_14
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_22

    .line 256
    :cond_17
    return v3

    .line 257
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_18
    move-exception v2

    goto :goto_1c

    .line 254
    :catch_1a
    move-exception v1

    :try_start_1b
    throw v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_18

    .line 257
    :goto_1c
    if-eqz v0, :cond_21

    :try_start_1e
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_21
    throw v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_22

    .line 257
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :catch_22
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Unable to read file"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 259
    .local v1, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 260
    throw v1
.end method

.method private static getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 379
    invoke-static {p0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 380
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_b

    .line 383
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 381
    :cond_b
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "attributeValue":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 367
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 368
    return-object v0

    .line 370
    :cond_f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 366
    :cond_18
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " missing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_34} :catch_34

    .line 371
    :catch_34
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad integer for attributeName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_47

    .line 130
    .local v0, "fis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v0}, Lcom/android/server/timezone/PackageStatusStorage;->parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 131
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "checkStatus"

    invoke-static {v2, v3}, Lcom/android/server/timezone/PackageStatusStorage;->getNullableIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_3f
    .catchall {:try_start_7 .. :try_end_11} :catchall_3d

    .line 132
    .local v3, "checkStatus":Ljava/lang/Integer;
    if-nez v3, :cond_1a

    .line 133
    nop

    .line 139
    if-eqz v0, :cond_19

    :try_start_16
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_47

    .line 133
    :cond_19
    return-object v1

    .line 135
    :cond_1a
    :try_start_1a
    const-string/jumbo v4, "updateAppPackageVersion"

    invoke-static {v2, v4}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    .line 136
    .local v4, "updateAppVersion":I
    const-string v5, "dataAppPackageVersion"

    invoke-static {v2, v5}, Lcom/android/server/timezone/PackageStatusStorage;->getIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 137
    .local v5, "dataAppVersion":I
    new-instance v6, Lcom/android/server/timezone/PackageStatus;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Lcom/android/server/timezone/PackageVersions;

    int-to-long v9, v4

    int-to-long v11, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v6, v7, v8}, Lcom/android/server/timezone/PackageStatus;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_37} :catch_3f
    .catchall {:try_start_1a .. :try_end_37} :catchall_3d

    .line 139
    if-eqz v0, :cond_3c

    :try_start_39
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_47

    .line 137
    :cond_3c
    return-object v6

    .line 139
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "checkStatus":Ljava/lang/Integer;
    .end local v4    # "updateAppVersion":I
    .end local v5    # "dataAppVersion":I
    :catchall_3d
    move-exception v2

    goto :goto_41

    .line 129
    :catch_3f
    move-exception v1

    :try_start_40
    throw v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    .line 139
    :goto_41
    if-eqz v0, :cond_46

    :try_start_43
    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageStatusStorage;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_46
    throw v2
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_47

    .line 139
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :catch_47
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    const-string v3, "Error reading package status"

    invoke-direct {v1, v3, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 141
    .local v1, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    throw v1
.end method

.method private insertInitialPackageStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 164
    .local v0, "initialOptimisticLockId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 166
    return v0
.end method

.method private static parseToPackageStatusTag(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 6
    .param p0, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 269
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 271
    :goto_e
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_27

    .line 272
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "tag":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    const-string v4, "PackageStatus"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 274
    return-object v1

    .line 276
    .end local v2    # "tag":Ljava/lang/String;
    :cond_26
    goto :goto_e

    .line 277
    :cond_27
    new-instance v2, Ljava/text/ParseException;

    const-string v4, "Unable to find PackageStatus tag"

    invoke-direct {v2, v4, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_2f} :catch_3c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2f} :catch_2f

    .line 280
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catch_2f
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Error reading XML"

    invoke-direct {v2, v3, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 282
    .local v0, "e2":Ljava/text/ParseException;
    invoke-virtual {v1, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 283
    throw v0

    .line 278
    .end local v0    # "e2":Ljava/text/ParseException;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3c
    move-exception v0

    .line 279
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to configure parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private recoverFromBadData(Ljava/lang/Exception;)I
    .registers 4
    .param p1, "cause"    # Ljava/lang/Exception;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 150
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    move-result v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    .line 151
    :catch_a
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 153
    .local v1, "fatal":Ljava/lang/IllegalStateException;
    invoke-virtual {v1, p1}, Ljava/lang/IllegalStateException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    throw v1
.end method

.method private writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    .registers 14
    .param p1, "status"    # Ljava/lang/Integer;
    .param p2, "optimisticLockId"    # I
    .param p3, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-nez p3, :cond_b

    move v0, v1

    nop

    :cond_b
    if-ne v2, v0, :cond_88

    .line 315
    const/4 v0, 0x0

    move-object v2, v0

    .line 317
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_f
    iget-object v3, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 318
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 319
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 320
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "namespace":Ljava/lang/String;
    const-string v1, "PackageStatus"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 323
    if-nez p1, :cond_36

    const-string v1, ""

    goto :goto_3e

    :cond_36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "statusAttributeValue":Ljava/lang/String;
    :goto_3e
    const-string v4, "checkStatus"

    invoke-interface {v3, v0, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 325
    const-string/jumbo v4, "optimisticLockId"

    .line 326
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-interface {v3, v0, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 327
    const-wide/16 v4, -0x1

    if-nez p1, :cond_53

    .line 328
    move-wide v6, v4

    goto :goto_55

    :cond_53
    iget-wide v6, p3, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    .line 329
    .local v6, "updateAppVersion":J
    :goto_55
    const-string/jumbo v8, "updateAppPackageVersion"

    .line 330
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 329
    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    if-nez p1, :cond_62

    .line 332
    goto :goto_64

    :cond_62
    iget-wide v4, p3, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    .line 333
    .local v4, "dataAppVersion":J
    :goto_64
    const-string v8, "dataAppPackageVersion"

    .line 334
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 333
    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    const-string v8, "PackageStatus"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 336
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 337
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 338
    iget-object v8, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_7d} :catch_7f

    .line 344
    .end local v0    # "namespace":Ljava/lang/String;
    .end local v1    # "statusAttributeValue":Ljava/lang/String;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "dataAppVersion":J
    .end local v6    # "updateAppVersion":J
    nop

    .line 346
    return-void

    .line 339
    :catch_7f
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_87

    .line 341
    iget-object v1, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 343
    :cond_87
    throw v0

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provide both status and packageVersions, or neither."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z
    .registers 7
    .param p1, "optimisticLockId"    # I
    .param p2, "newOptimisticLockId"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v1
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_f

    .line 295
    .local v1, "currentOptimisticLockId":I
    if-eq v1, p1, :cond_8

    .line 296
    return v0

    .line 301
    :cond_8
    nop

    .line 300
    nop

    .line 303
    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V

    .line 304
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v1    # "currentOptimisticLockId":I
    :catch_f
    move-exception v1

    .line 299
    .local v1, "e":Ljava/text/ParseException;
    invoke-direct {p0, v1}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    .line 300
    return v0
.end method


# virtual methods
.method deleteFileForTests()V
    .registers 2

    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 101
    monitor-exit p0

    .line 102
    return-void

    .line 101
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public forceCheckStateForTests(ILcom/android/server/timezone/PackageVersions;)V
    .registers 5
    .param p1, "checkStatus"    # I
    .param p2, "packageVersions"    # Lcom/android/server/timezone/PackageVersions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 354
    .local v0, "initialOptimisticLockId":I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusLocked(Ljava/lang/Integer;ILcom/android/server/timezone/PackageVersions;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_12
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    .line 357
    .end local v0    # "initialOptimisticLockId":I
    nop

    .line 358
    :try_start_e
    monitor-exit p0

    .line 359
    return-void

    .line 358
    :catchall_10
    move-exception v0

    goto :goto_19

    .line 355
    :catch_12
    move-exception v0

    .line 356
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_10

    throw v0
.end method

.method generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;
    .registers 7
    .param p1, "currentInstalledVersions"    # Lcom/android/server/timezone/PackageVersions;

    .line 174
    if-eqz p1, :cond_3e

    .line 178
    monitor-enter p0

    .line 181
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_7} :catch_a
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    .line 187
    .local v0, "optimisticLockId":I
    goto :goto_18

    .line 202
    .end local v0    # "optimisticLockId":I
    :catchall_8
    move-exception v0

    goto :goto_3c

    .line 182
    :catch_a
    move-exception v0

    .line 183
    .local v0, "e":Ljava/text/ParseException;
    :try_start_b
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_8

    .line 186
    .end local v0    # "e":Ljava/text/ParseException;
    move v0, v1

    .line 189
    .local v0, "optimisticLockId":I
    :goto_18
    add-int/lit8 v1, v0, 0x1

    .line 191
    .local v1, "newOptimisticLockId":I
    nop

    .line 192
    const/4 v2, 0x1

    :try_start_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v2

    .line 194
    .local v2, "statusUpdated":Z
    if-eqz v2, :cond_2d

    .line 198
    new-instance v3, Lcom/android/server/timezone/CheckToken;

    invoke-direct {v3, v1, p1}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2b} :catch_35
    .catchall {:try_start_1c .. :try_end_2b} :catchall_8

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_8

    return-object v3

    .line 195
    :cond_2d
    :try_start_2d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to update status to CHECK_STARTED. synchronization failure?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_8

    .line 199
    .end local v2    # "statusUpdated":Z
    :catch_35
    move-exception v2

    .line 200
    .local v2, "e":Ljava/io/IOException;
    :try_start_36
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 202
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_8

    throw v0

    .line 175
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "currentInstalledVersions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getPackageStatus()Lcom/android/server/timezone/PackageStatus;
    .registers 5

    .line 109
    monitor-enter p0

    .line 111
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_9
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    :try_start_5
    monitor-exit p0

    return-object v0

    .line 124
    :catchall_7
    move-exception v0

    goto :goto_24

    .line 112
    :catch_9
    move-exception v0

    .line 114
    .local v0, "e":Ljava/text/ParseException;
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string v2, "Package status invalid, resetting and retrying"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_7

    .line 119
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatusLocked()Lcom/android/server/timezone/PackageStatus;

    move-result-object v1
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_1b
    .catchall {:try_start_15 .. :try_end_19} :catchall_7

    :try_start_19
    monitor-exit p0

    return-object v1

    .line 120
    :catch_1b
    move-exception v1

    .line 121
    .local v1, "e2":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Recovery from bad file failed"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 124
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "e2":Ljava/text/ParseException;
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_7

    throw v0
.end method

.method initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/server/timezone/PackageStatusStorage;->mPackageStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 94
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->insertInitialPackageStatus()I

    .line 96
    :cond_f
    return-void
.end method

.method markChecked(Lcom/android/server/timezone/CheckToken;Z)Z
    .registers 8
    .param p1, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p2, "succeeded"    # Z

    .line 239
    monitor-enter p0

    .line 240
    :try_start_1
    iget v0, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    .line 241
    .local v0, "optimisticLockId":I
    add-int/lit8 v1, v0, 0x1

    .line 242
    .local v1, "newOptimisticLockId":I
    if-eqz p2, :cond_9

    const/4 v2, 0x2

    goto :goto_a

    :cond_9
    const/4 v2, 0x3

    .line 244
    .local v2, "status":I
    :goto_a
    nop

    .line 245
    :try_start_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    .line 244
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_17
    .catchall {:try_start_b .. :try_end_15} :catchall_1e

    :try_start_15
    monitor-exit p0

    return v3

    .line 246
    :catch_17
    move-exception v3

    .line 247
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 249
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "status":I
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method resetCheckState()V
    .registers 6

    .line 209
    monitor-enter p0

    .line 212
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezone/PackageStatusStorage;->getCurrentOptimisticLockId()I

    move-result v0
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_5} :catch_8
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 218
    .local v0, "optimisticLockId":I
    goto :goto_17

    .line 230
    .end local v0    # "optimisticLockId":I
    :catchall_6
    move-exception v0

    goto :goto_42

    .line 213
    :catch_8
    move-exception v0

    .line 214
    .local v0, "e":Ljava/text/ParseException;
    :try_start_9
    const-string/jumbo v1, "timezone.PackageStatusStorage"

    const-string/jumbo v2, "resetCheckState: Unable to find optimistic lock ID from package status"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, v0}, Lcom/android/server/timezone/PackageStatusStorage;->recoverFromBadData(Ljava/lang/Exception;)I

    move-result v1
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_6

    .line 217
    .end local v0    # "e":Ljava/text/ParseException;
    move v0, v1

    .line 220
    .local v0, "optimisticLockId":I
    :goto_17
    add-int/lit8 v1, v0, 0x1

    .line 222
    .local v1, "newOptimisticLockId":I
    const/4 v2, 0x0

    :try_start_1a
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/server/timezone/PackageStatusStorage;->writePackageStatusWithOptimisticLockCheck(IILjava/lang/Integer;Lcom/android/server/timezone/PackageVersions;)Z

    move-result v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_3b
    .catchall {:try_start_1a .. :try_end_1e} :catchall_6

    if-eqz v2, :cond_23

    .line 229
    nop

    .line 230
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_6

    .line 231
    return-void

    .line 224
    .restart local v0    # "optimisticLockId":I
    .restart local v1    # "newOptimisticLockId":I
    :cond_23
    :try_start_23
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetCheckState: Unable to reset package status, newOptimisticLockId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3b} :catch_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_6

    .line 227
    :catch_3b
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    :try_start_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 230
    .end local v0    # "optimisticLockId":I
    .end local v1    # "newOptimisticLockId":I
    .end local v2    # "e":Ljava/io/IOException;
    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_6

    throw v0
.end method
