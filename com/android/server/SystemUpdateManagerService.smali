.class public Lcom/android/server/SystemUpdateManagerService;
.super Landroid/os/ISystemUpdateManager$Stub;
.source "SystemUpdateManagerService.java"


# static fields
.field private static final INFO_FILE:Ljava/lang/String; = "system-update-info.xml"

.field private static final INFO_FILE_VERSION:I = 0x0

.field private static final KEY_BOOT_COUNT:Ljava/lang/String; = "boot-count"

.field private static final KEY_INFO_BUNDLE:Ljava/lang/String; = "info-bundle"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "SystemUpdateManagerService"

.field private static final TAG_INFO:Ljava/lang/String; = "info"

.field private static final UID_UNKNOWN:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFile:Landroid/util/AtomicFile;

.field private mLastStatus:I

.field private mLastUid:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Landroid/os/ISystemUpdateManager$Stub;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 78
    iput-object p1, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system-update-info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    .line 82
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private getBootCount()I
    .registers 4

    .line 253
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "boot_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private loadSystemUpdateInfoLocked()Landroid/os/Bundle;
    .registers 9

    .line 131
    const/4 v0, 0x0

    move-object v1, v0

    .line 132
    .local v1, "loadedBundle":Landroid/os/PersistableBundle;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_8} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_8} :catch_3e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_35

    .line 133
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 134
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v3}, Lcom/android/server/SystemUpdateManagerService;->readInfoFileLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_22
    .catchall {:try_start_8 .. :try_end_19} :catchall_20

    move-object v1, v4

    .line 136
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v2, :cond_64

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1f} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_35

    goto :goto_64

    :catchall_20
    move-exception v3

    goto :goto_24

    .line 132
    :catch_22
    move-exception v0

    :try_start_23
    throw v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 136
    :goto_24
    if-eqz v2, :cond_34

    if-eqz v0, :cond_31

    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2b} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2b} :catch_3e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_35

    goto :goto_34

    :catch_2c
    move-exception v4

    :try_start_2d
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_31
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_34
    :goto_34
    throw v3
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_35} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_35} :catch_3e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_35

    .line 140
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_35
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Failed to read the info file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_65

    .line 138
    :catch_3e
    move-exception v0

    .line 139
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Failed to parse the info file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_64

    .line 136
    :catch_47
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "SystemUpdateManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No existing info file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_64
    :goto_64
    nop

    .line 145
    :goto_65
    if-nez v1, :cond_6c

    .line 146
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 149
    :cond_6c
    const-string/jumbo v0, "version"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "version":I
    if-ne v0, v2, :cond_82

    .line 151
    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Invalid info file (invalid version). Ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 155
    :cond_82
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, "lastUid":I
    if-ne v3, v2, :cond_97

    .line 157
    const-string v2, "SystemUpdateManagerService"

    const-string v4, "Invalid info file (invalid UID). Ignored"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 161
    :cond_97
    const-string v4, "boot-count"

    invoke-virtual {v1, v4, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 162
    .local v4, "lastBootCount":I
    if-eq v4, v2, :cond_da

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v2

    if-eq v4, v2, :cond_a6

    goto :goto_da

    .line 167
    :cond_a6
    const-string v2, "info-bundle"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 168
    .local v2, "infoBundle":Landroid/os/PersistableBundle;
    if-nez v2, :cond_ba

    .line 169
    const-string v5, "SystemUpdateManagerService"

    const-string v6, "Invalid info file (missing info). Ignored"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v5

    return-object v5

    .line 173
    :cond_ba
    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 174
    .local v5, "lastStatus":I
    if-nez v5, :cond_d0

    .line 175
    const-string v6, "SystemUpdateManagerService"

    const-string v7, "Invalid info file (invalid status). Ignored"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v6

    return-object v6

    .line 180
    :cond_d0
    iput v5, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 181
    iput v3, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 182
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v6

    .line 163
    .end local v2    # "infoBundle":Landroid/os/PersistableBundle;
    .end local v5    # "lastStatus":I
    :cond_da
    :goto_da
    const-string v2, "SystemUpdateManagerService"

    const-string v5, "Outdated info file. Ignored"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method private readInfoFileLocked(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c

    .line 207
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const-string v0, "info"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0

    .line 211
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeInfoFileAndGetDefaultInfoBundleLocked()Landroid/os/Bundle;
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 241
    const-string v0, "SystemUpdateManagerService"

    const-string v1, "Removing info file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 245
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 246
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 247
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v1, "infoBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    return-object v1
.end method

.method private saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V
    .registers 6
    .param p1, "infoBundle"    # Landroid/os/PersistableBundle;
    .param p2, "uid"    # I

    .line 188
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 189
    .local v0, "outBundle":Landroid/os/PersistableBundle;
    const-string v1, "info-bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 190
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v1, "boot-count"

    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->getBootCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 195
    invoke-direct {p0, v0}, Lcom/android/server/SystemUpdateManagerService;->writeInfoFileLocked(Landroid/os/PersistableBundle;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 196
    iput p2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    .line 197
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/SystemUpdateManagerService;->mLastStatus:I

    .line 199
    :cond_31
    return-void
.end method

.method private writeInfoFileLocked(Landroid/os/PersistableBundle;)Z
    .registers 7
    .param p1, "outBundle"    # Landroid/os/PersistableBundle;

    .line 215
    const/4 v0, 0x0

    move-object v1, v0

    .line 217
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 219
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 220
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 221
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 223
    const-string v4, "info"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 225
    const-string v4, "info"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 228
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_34} :catch_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_34} :catch_35

    .line 229
    return v3

    .line 230
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_35
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Failed to save the info file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    if-eqz v1, :cond_44

    .line 233
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_44
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public retrieveSystemUpdateInfo()Landroid/os/Bundle;
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYSTEM_UPDATE_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECOVERY"

    .line 117
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 119
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t read system update info. Requiring READ_SYSTEM_UPDATE_INFO or RECOVERY permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/SystemUpdateManagerService;->loadSystemUpdateInfoLocked()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "infoBundle"    # Landroid/os/PersistableBundle;

    .line 89
    iget-object v0, p0, Lcom/android/server/SystemUpdateManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECOVERY"

    const-string v2, "SystemUpdateManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "status":I
    if-nez v0, :cond_1b

    .line 93
    const-string v1, "SystemUpdateManagerService"

    const-string v2, "Invalid status info. Ignored"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 103
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 104
    .local v1, "uid":I
    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    iget v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLastUid:I

    if-eq v2, v1, :cond_34

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2c

    goto :goto_34

    .line 109
    :cond_2c
    const-string v2, "SystemUpdateManagerService"

    const-string v3, "Inactive updater reporting IDLE status. Ignored"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 105
    :cond_34
    :goto_34
    iget-object v2, p0, Lcom/android/server/SystemUpdateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 106
    :try_start_37
    invoke-direct {p0, p1, v1}, Lcom/android/server/SystemUpdateManagerService;->saveSystemUpdateInfoLocked(Landroid/os/PersistableBundle;I)V

    .line 107
    monitor-exit v2

    .line 111
    :goto_3b
    return-void

    .line 107
    :catchall_3c
    move-exception v3

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v3
.end method
