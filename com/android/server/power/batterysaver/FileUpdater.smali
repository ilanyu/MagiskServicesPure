.class public Lcom/android/server/power/batterysaver/FileUpdater;
.super Ljava/lang/Object;
.source "FileUpdater.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PROP_SKIP_WRITE:Ljava/lang/String; = "debug.batterysaver.no_write_files"

.field private static final TAG:Ljava/lang/String; = "BatterySaverController"

.field private static final TAG_DEFAULT_ROOT:Ljava/lang/String; = "defaults"


# instance fields
.field private final MAX_RETRIES:I

.field private final RETRY_INTERVAL_MS:J

.field private final mContext:Landroid/content/Context;

.field private final mDefaultValues:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWrites:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetries:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 303
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

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x1388

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/power/batterysaver/FileUpdater;-><init>(Landroid/content/Context;Landroid/os/Looper;II)V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "maxRetries"    # I
    .param p4, "retryIntervalMs"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 171
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$FileUpdater$NUmipjKCJwbgmFbIcGS3uaz3QFk;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$FileUpdater$NUmipjKCJwbgmFbIcGS3uaz3QFk;-><init>(Lcom/android/server/power/batterysaver/FileUpdater;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    .line 112
    iput-object p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mContext:Landroid/content/Context;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    .line 115
    iput p3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->MAX_RETRIES:I

    .line 116
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->RETRY_INTERVAL_MS:J

    .line 117
    return-void
.end method

.method private cloneMap(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    .local p1, "source":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method private doWtf(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method

.method private ensureDefaultLoaded(Ljava/lang/String;)Z
    .registers 6
    .param p1, "file"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 267
    monitor-exit v0

    return v2

    .line 269
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_30

    .line 272
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/FileUpdater;->injectReadFromFileTrimmed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_25

    .line 279
    .local v0, "originalValue":Ljava/lang/String;
    nop

    .line 278
    nop

    .line 280
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_18
    iget-object v3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->saveDefaultValuesLocked()V

    .line 283
    monitor-exit v1

    .line 284
    return v2

    .line 283
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw v2

    .line 273
    .end local v0    # "originalValue":Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 275
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Unable to read from file"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/FileUpdater;->removePendingWrite(Ljava/lang/String;)V

    .line 278
    const/4 v1, 0x0

    return v1

    .line 269
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private getKeysString(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 175
    .local p1, "source":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleWriteOnHandler()V
    .registers 8

    .line 193
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 195
    monitor-exit v0

    return-void

    .line 203
    :cond_d
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->cloneMap(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 204
    .local v1, "writes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_41

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "needRetry":Z
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 211
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_3b

    .line 212
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    .local v4, "file":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    .local v5, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->ensureDefaultLoaded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 217
    goto :goto_38

    .line 223
    :cond_2f
    :try_start_2f
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->removePendingWrite(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_35} :catch_36

    .line 228
    goto :goto_38

    .line 226
    :catch_36
    move-exception v6

    .line 227
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 211
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 230
    .end local v3    # "i":I
    :cond_3b
    if-eqz v0, :cond_40

    .line 231
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->scheduleRetry()V

    .line 233
    :cond_40
    return-void

    .line 204
    .end local v0    # "needRetry":Z
    .end local v1    # "writes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "size":I
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/power/batterysaver/FileUpdater;)V
    .registers 1

    .line 171
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->handleWriteOnHandler()V

    return-void
.end method

.method private removePendingWrite(Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private saveDefaultValuesLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 311
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 313
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    move-object v2, v1

    .line 315
    .local v2, "outs":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 316
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 319
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 320
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 321
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 322
    const-string v4, "defaults"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    iget-object v4, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-static {v4, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 327
    const-string v4, "defaults"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 331
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_46} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_46} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_46} :catch_47

    .line 335
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_65

    .line 332
    :catch_47
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BatterySaverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method private scheduleRetry()V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 244
    monitor-exit v0

    return-void

    .line 247
    :cond_d
    iget v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 248
    iget v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    iget v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->MAX_RETRIES:I

    if-le v1, v2, :cond_35

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gave up writing files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-direct {p0, v2}, Lcom/android/server/power/batterysaver/FileUpdater;->getKeysString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->doWtf(Ljava/lang/String;)V

    .line 250
    monitor-exit v0

    return-void

    .line 253
    :cond_35
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->RETRY_INTERVAL_MS:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v1
.end method


# virtual methods
.method getDefaultValuesForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    return-object v0
.end method

.method injectDefaultValuesFilename()Ljava/io/File;
    .registers 4

    .line 392
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "battery-saver"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 394
    new-instance v1, Ljava/io/File;

    const-string v2, "default-values.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method injectReadFromFileTrimmed(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "file"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method injectShouldSkipWrite()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 399
    const-string v0, "debug.batterysaver.no_write_files"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method injectWriteToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectShouldSkipWrite()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 295
    const-string v0, "BatterySaverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped writing to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 301
    :cond_22
    :try_start_22
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_27} :catch_38

    .local v0, "out":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 302
    :try_start_28
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_32
    .catchall {:try_start_28 .. :try_end_2b} :catchall_30

    .line 303
    :try_start_2b
    invoke-static {v1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_38

    .line 306
    .end local v0    # "out":Ljava/io/FileWriter;
    nop

    .line 307
    return-void

    .line 303
    .restart local v0    # "out":Ljava/io/FileWriter;
    :catchall_30
    move-exception v2

    goto :goto_34

    .line 301
    :catch_32
    move-exception v1

    :try_start_33
    throw v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 303
    :goto_34
    :try_start_34
    invoke-static {v1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_38} :catch_38

    .end local v0    # "out":Ljava/io/FileWriter;
    :catch_38
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed writing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatterySaverController"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    throw v0
.end method

.method injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 388
    const-string v0, "BatterySaverController"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    return-void
.end method

.method loadDefaultValuesLocked()Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 341
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 345
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    move-object v2, v1

    .line 346
    .local v2, "read":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_d
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_11} :catch_8e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_11} :catch_72
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_11} :catch_72

    .line 347
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 348
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 351
    :cond_1e
    :goto_1e
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .local v8, "type":I
    if-eq v7, v4, :cond_62

    .line 352
    const/4 v7, 0x2

    if-eq v8, v7, :cond_29

    .line 353
    goto :goto_1e

    .line 355
    :cond_29
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 357
    .local v7, "depth":I
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 358
    .local v9, "tag":Ljava/lang/String;
    if-ne v7, v4, :cond_58

    .line 359
    const-string v10, "defaults"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    .line 360
    const-string v10, "BatterySaverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid root tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_51} :catch_6a
    .catchall {:try_start_11 .. :try_end_51} :catchall_68

    .line 361
    nop

    .line 369
    if-eqz v5, :cond_57

    :try_start_54
    invoke-static {v1, v5}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_8e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_72
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_57} :catch_72

    .line 361
    :cond_57
    return v3

    .line 365
    :cond_58
    :try_start_58
    new-array v10, v4, [Ljava/lang/String;

    .line 366
    .local v10, "tagName":[Ljava/lang/String;
    const-string v11, "defaults"

    invoke-static {v6, v11, v10, v1}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v11
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_60} :catch_6a
    .catchall {:try_start_58 .. :try_end_60} :catchall_68

    move-object v2, v11

    .line 368
    .end local v7    # "depth":I
    .end local v9    # "tag":Ljava/lang/String;
    .end local v10    # "tagName":[Ljava/lang/String;
    goto :goto_1e

    .line 369
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :cond_62
    if-eqz v5, :cond_90

    :try_start_64
    invoke-static {v1, v5}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_67} :catch_8e
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_67} :catch_72
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_67} :catch_72

    goto :goto_90

    :catchall_68
    move-exception v6

    goto :goto_6c

    .line 346
    :catch_6a
    move-exception v1

    :try_start_6b
    throw v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_68

    .line 369
    :goto_6c
    if-eqz v5, :cond_71

    :try_start_6e
    invoke-static {v1, v5}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_71
    throw v6
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_72} :catch_8e
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_72} :catch_72
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_72} :catch_72

    .line 371
    .end local v5    # "in":Ljava/io/FileInputStream;
    :catch_72
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "BatterySaverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_91

    .line 369
    :catch_8e
    move-exception v1

    .line 370
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .line 373
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_90
    :goto_90
    nop

    .line 374
    :goto_91
    if-eqz v2, :cond_9e

    .line 375
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 376
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 377
    return v4

    .line 379
    :cond_9e
    return v3
.end method

.method public restoreDefault()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 167
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->writeFiles(Landroid/util/ArrayMap;)V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public systemReady(Z)V
    .registers 5
    .param p1, "runtimeRestarted"    # Z

    .line 120
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    if-eqz p1, :cond_18

    .line 123
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->loadDefaultValuesLocked()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 124
    const-string v1, "BatterySaverController"

    const-string v2, "Default values loaded after runtime restart; writing them..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->restoreDefault()V

    goto :goto_1f

    .line 131
    :catchall_16
    move-exception v1

    goto :goto_21

    .line 129
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 131
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_16

    throw v1
.end method

.method public writeFiles(Landroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1f

    .line 140
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 150
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 152
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method
