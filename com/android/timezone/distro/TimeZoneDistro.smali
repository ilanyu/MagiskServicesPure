.class public final Lcom/android/timezone/distro/TimeZoneDistro;
.super Ljava/lang/Object;
.source "TimeZoneDistro.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final DISTRO_VERSION_FILE_NAME:Ljava/lang/String; = "distro_version"

.field public static final FILE_NAME:Ljava/lang/String; = "distro.zip"

.field public static final ICU_DATA_FILE_NAME:Ljava/lang/String; = "icu/icu_tzdata.dat"

.field private static final MAX_GET_ENTRY_CONTENTS_SIZE:J = 0x20000L

.field public static final TZDATA_FILE_NAME:Ljava/lang/String; = "tzdata"

.field public static final TZLOOKUP_FILE_NAME:Ljava/lang/String; = "tzlookup.xml"


# instance fields
.field private final inputStream:Ljava/io/InputStream;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 117
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

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .line 71
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 72
    return-void
.end method

.method static extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V
    .registers 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "targetDir"    # Ljava/io/File;
    .param p2, "makeWorldReadable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p1, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 135
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/16 v1, 0x2000

    const/4 v2, 0x0

    :try_start_b
    new-array v1, v1, [B

    .line 138
    .local v1, "buffer":[B
    :goto_d
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v4, v3

    .local v4, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_67

    .line 141
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "name":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/timezone/distro/FileUtils;->createSubFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 146
    .local v5, "entryFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 147
    invoke-static {v5, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    goto :goto_59

    .line 150
    :cond_26
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_38

    .line 151
    nop

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 151
    invoke-static {v6, p2}, Lcom/android/timezone/distro/FileUtils;->ensureDirectoriesExist(Ljava/io/File;Z)V

    .line 155
    :cond_38
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3d} :catch_6d
    .catchall {:try_start_b .. :try_end_3d} :catchall_6b

    .line 157
    .local v6, "fos":Ljava/io/FileOutputStream;
    :goto_3d
    :try_start_3d
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_4a

    .line 158
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3d

    .line 161
    :cond_4a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_51} :catch_5d
    .catchall {:try_start_3d .. :try_end_51} :catchall_5a

    .line 162
    .end local v8    # "count":I
    :try_start_51
    invoke-static {v2, v6}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 164
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    if-eqz p2, :cond_59

    .line 165
    invoke-static {v5}, Lcom/android/timezone/distro/FileUtils;->makeWorldReadable(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_59} :catch_6d
    .catchall {:try_start_51 .. :try_end_59} :catchall_6b

    .line 168
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "entryFile":Ljava/io/File;
    :cond_59
    :goto_59
    goto :goto_d

    .line 162
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v5    # "entryFile":Ljava/io/File;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_5a
    move-exception v7

    move-object v8, v2

    goto :goto_63

    .line 155
    :catch_5d
    move-exception v7

    :try_start_5e
    throw v7
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 162
    :catchall_5f
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_63
    :try_start_63
    invoke-static {v8, v6}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_67} :catch_6d
    .catchall {:try_start_63 .. :try_end_67} :catchall_6b

    .line 169
    .end local v1    # "buffer":[B
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryFile":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_67
    invoke-static {v2, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 170
    .end local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    return-void

    .line 169
    .restart local v0    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_6b
    move-exception v1

    goto :goto_70

    .line 135
    :catch_6d
    move-exception v1

    move-object v2, v1

    :try_start_6f
    throw v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6b

    .line 169
    :goto_70
    invoke-static {v2, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 12
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v0, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_74

    .line 97
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 100
    goto :goto_5

    .line 103
    :cond_18
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4

    const-wide/32 v6, 0x20000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_51

    .line 106
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 107
    .local v4, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2c} :catch_7b
    .catchall {:try_start_6 .. :try_end_2c} :catchall_79

    .line 109
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "count":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_39

    .line 110
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2c

    .line 112
    :cond_39
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3d} :catch_47
    .catchall {:try_start_2c .. :try_end_3d} :catchall_44

    .line 113
    :try_start_3d
    invoke-static {v1, v5}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_7b
    .catchall {:try_start_3d .. :try_end_40} :catchall_79

    .line 117
    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 112
    return-object v6

    .line 113
    .end local v7    # "count":I
    :catchall_44
    move-exception v6

    move-object v7, v1

    goto :goto_4d

    .line 107
    :catch_47
    move-exception v6

    :try_start_48
    throw v6
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 113
    :catchall_49
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_4d
    :try_start_4d
    invoke-static {v7, v5}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6

    .line 104
    .end local v4    # "buffer":[B
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_51
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " too large: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_74} :catch_7b
    .catchall {:try_start_4d .. :try_end_74} :catchall_79

    .line 116
    .end local v2    # "name":Ljava/lang/String;
    :cond_74
    nop

    .line 117
    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 116
    return-object v1

    .line 117
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_79
    move-exception v2

    goto :goto_7d

    .line 94
    :catch_7b
    move-exception v1

    :try_start_7c
    throw v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_79

    .line 117
    :goto_7d
    invoke-static {v1, v0}, Lcom/android/timezone/distro/TimeZoneDistro;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method public extractTo(Ljava/io/File;)V
    .registers 4
    .param p1, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->extractZipSafely(Ljava/io/InputStream;Ljava/io/File;Z)V

    .line 126
    return-void
.end method

.method public getDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/timezone/distro/TimeZoneDistro;->inputStream:Ljava/io/InputStream;

    const-string v1, "distro_version"

    invoke-static {v0, v1}, Lcom/android/timezone/distro/TimeZoneDistro;->getEntryContents(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object v0

    .line 87
    .local v0, "contents":[B
    if-eqz v0, :cond_f

    .line 90
    invoke-static {v0}, Lcom/android/timezone/distro/DistroVersion;->fromBytes([B)Lcom/android/timezone/distro/DistroVersion;

    move-result-object v1

    return-object v1

    .line 88
    :cond_f
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    const-string v2, "Distro version file entry not found"

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
