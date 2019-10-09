.class public Lcom/android/server/slice/SlicePermissionManager;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SlicePermissionManager$ParserHolder;,
        Lcom/android/server/slice/SlicePermissionManager$PkgUser;,
        Lcom/android/server/slice/SlicePermissionManager$H;
    }
.end annotation


# static fields
.field static final DB_VERSION:I = 0x2

.field private static final PERMISSION_CACHE_PERIOD:J = 0x493e0L

.field private static final SLICE_DIR:Ljava/lang/String; = "slice"

.field private static final TAG:Ljava/lang/String; = "SlicePermissionManager"

.field private static final TAG_LIST:Ljava/lang/String; = "slice-access-list"

.field private static final WRITE_GRACE_PERIOD:J = 0x1f4L


# instance fields
.field private final ATT_VERSION:Ljava/lang/String;

.field private final mCachedClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            "Lcom/android/server/slice/SliceClientPermissions;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/slice/SlicePermissionManager$PkgUser;",
            "Lcom/android/server/slice/SliceProviderPermissions;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDirty:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/slice/DirtyTracker$Persistable;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mSliceDir:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 190
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

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system/slice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V

    .line 92
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sliceDir"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->ATT_VERSION:Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 85
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/slice/SlicePermissionManager$H;-><init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p3, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    .line 88
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager;

    .line 48
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/slice/SlicePermissionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager;

    .line 48
    invoke-direct {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager;
    .param p1, "x1"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->handleRemove(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager;

    .line 48
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager;

    .line 48
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;
    .registers 9
    .param p1, "pkgUser"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 243
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceClientPermissions;

    .line 245
    .local v1, "client":Lcom/android/server/slice/SliceClientPermissions;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_74

    .line 246
    if-nez v1, :cond_72

    .line 247
    :try_start_e
    invoke-static {p1}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_16} :catch_5e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_16} :catch_4c

    .local v0, "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    const/4 v2, 0x0

    .line 248
    :try_start_17
    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v3

    move-object v1, v3

    .line 249
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_23} :catch_44
    .catchall {:try_start_17 .. :try_end_23} :catchall_42

    .line 250
    :try_start_23
    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_3f

    .line 252
    :try_start_29
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x493e0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_38} :catch_44
    .catchall {:try_start_29 .. :try_end_38} :catchall_42

    .line 254
    nop

    .line 255
    if-eqz v0, :cond_3e

    :try_start_3b
    invoke-static {v2, v0}, Lcom/android/server/slice/SlicePermissionManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3e} :catch_5e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_3e} :catch_4c

    .line 254
    :cond_3e
    return-object v1

    .line 251
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v4
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_42} :catch_44
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 255
    :catchall_42
    move-exception v3

    goto :goto_46

    .line 247
    :catch_44
    move-exception v2

    :try_start_45
    throw v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    .line 255
    :goto_46
    if-eqz v0, :cond_4b

    :try_start_48
    invoke-static {v2, v0}, Lcom/android/server/slice/SlicePermissionManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4b
    throw v3
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4c} :catch_5e
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_4c} :catch_4c

    .line 259
    .end local v0    # "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    :catch_4c
    move-exception v0

    .line 260
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "SlicePermissionManager"

    const-string v3, "Can\'t read client"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_60

    .line 257
    :catch_55
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SlicePermissionManager"

    const-string v3, "Can\'t read client"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5f

    .line 255
    :catch_5e
    move-exception v0

    .line 261
    :goto_5f
    nop

    .line 263
    :goto_60
    new-instance v0, Lcom/android/server/slice/SliceClientPermissions;

    invoke-direct {v0, p1, p0}, Lcom/android/server/slice/SliceClientPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 264
    .end local v1    # "client":Lcom/android/server/slice/SliceClientPermissions;
    .local v0, "client":Lcom/android/server/slice/SliceClientPermissions;
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 265
    :try_start_68
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit v2

    goto :goto_73

    :catchall_6f
    move-exception v1

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw v1

    .line 268
    .end local v0    # "client":Lcom/android/server/slice/SliceClientPermissions;
    .restart local v1    # "client":Lcom/android/server/slice/SliceClientPermissions;
    :cond_72
    move-object v0, v1

    .end local v1    # "client":Lcom/android/server/slice/SliceClientPermissions;
    .restart local v0    # "client":Lcom/android/server/slice/SliceClientPermissions;
    :goto_73
    return-object v0

    .line 245
    .end local v0    # "client":Lcom/android/server/slice/SliceClientPermissions;
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method private getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 313
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 315
    :cond_d
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    .registers 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 304
    .local v0, "file":Landroid/util/AtomicFile;
    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;-><init>(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$1;)V

    .line 305
    .local v1, "holder":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    # setter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;
    invoke-static {v1, v2}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$302(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 306
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    # setter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1, v2}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$102(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    .line 307
    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$300(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v4}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 308
    return-object v1
.end method

.method private getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;
    .registers 9
    .param p1, "pkgUser"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 273
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/SliceProviderPermissions;

    .line 275
    .local v1, "provider":Lcom/android/server/slice/SliceProviderPermissions;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_74

    .line 276
    if-nez v1, :cond_72

    .line 277
    :try_start_e
    invoke-static {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_16} :catch_5e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_16} :catch_4c

    .local v0, "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    const/4 v2, 0x0

    .line 278
    :try_start_17
    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v3

    move-object v1, v3

    .line 279
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_23} :catch_44
    .catchall {:try_start_17 .. :try_end_23} :catchall_42

    .line 280
    :try_start_23
    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_3f

    .line 282
    :try_start_29
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x493e0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_38} :catch_44
    .catchall {:try_start_29 .. :try_end_38} :catchall_42

    .line 284
    nop

    .line 285
    if-eqz v0, :cond_3e

    :try_start_3b
    invoke-static {v2, v0}, Lcom/android/server/slice/SlicePermissionManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3e} :catch_5e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_3e} :catch_4c

    .line 284
    :cond_3e
    return-object v1

    .line 281
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw v4
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_42} :catch_44
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    .line 285
    :catchall_42
    move-exception v3

    goto :goto_46

    .line 277
    :catch_44
    move-exception v2

    :try_start_45
    throw v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    .line 285
    :goto_46
    if-eqz v0, :cond_4b

    :try_start_48
    invoke-static {v2, v0}, Lcom/android/server/slice/SlicePermissionManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4b
    throw v3
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4c} :catch_5e
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_55
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_4c} :catch_4c

    .line 289
    .end local v0    # "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    :catch_4c
    move-exception v0

    .line 290
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "SlicePermissionManager"

    const-string v3, "Can\'t read provider"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_60

    .line 287
    :catch_55
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SlicePermissionManager"

    const-string v3, "Can\'t read provider"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5f

    .line 285
    :catch_5e
    move-exception v0

    .line 291
    :goto_5f
    nop

    .line 293
    :goto_60
    new-instance v0, Lcom/android/server/slice/SliceProviderPermissions;

    invoke-direct {v0, p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 294
    .end local v1    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    .local v0, "provider":Lcom/android/server/slice/SliceProviderPermissions;
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 295
    :try_start_68
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    monitor-exit v2

    goto :goto_73

    :catchall_6f
    move-exception v1

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw v1

    .line 298
    .end local v0    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    .restart local v1    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    :cond_72
    move-object v0, v1

    .end local v1    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    .restart local v0    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    :goto_73
    return-object v0

    .line 275
    .end local v0    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method private handlePersist()V
    .registers 8

    .line 319
    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 321
    .local v1, "persistable":Lcom/android/server/slice/DirtyTracker$Persistable;
    invoke-interface {v1}, Lcom/android/server/slice/DirtyTracker$Persistable;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_59

    .line 324
    .local v2, "file":Landroid/util/AtomicFile;
    :try_start_1b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_48
    .catchall {:try_start_1b .. :try_end_1f} :catchall_59

    .line 328
    .local v3, "stream":Ljava/io/FileOutputStream;
    nop

    .line 327
    nop

    .line 331
    :try_start_21
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 332
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 334
    invoke-interface {v1, v4}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 336
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 337
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3b} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_3b} :catch_3c
    .catchall {:try_start_21 .. :try_end_3b} :catchall_59

    .line 341
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_47

    .line 338
    :catch_3c
    move-exception v4

    .line 339
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3d
    const-string v5, "SlicePermissionManager"

    const-string v6, "Failed to save access file, restoring backup"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 342
    .end local v1    # "persistable":Lcom/android/server/slice/DirtyTracker$Persistable;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_47
    goto :goto_7

    .line 325
    .restart local v1    # "persistable":Lcom/android/server/slice/DirtyTracker$Persistable;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    :catch_48
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SlicePermissionManager"

    const-string v4, "Failed to save access file"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    monitor-exit p0

    return-void

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "persistable":Lcom/android/server/slice/DirtyTracker$Persistable;
    .end local v2    # "file":Landroid/util/AtomicFile;
    :cond_52
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 344
    monitor-exit p0

    .line 345
    return-void

    .line 344
    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_59

    throw v0
.end method

.method private handleRemove(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V
    .registers 4
    .param p1, "pkgUser"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 348
    invoke-static {p1}, Lcom/android/server/slice/SliceClientPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 349
    invoke-static {p1}, Lcom/android/server/slice/SliceProviderPermissions;->getFileName(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 350
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method static synthetic lambda$writeBackup$0(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 1
    .param p0, "obj"    # Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 172
    return-void
.end method


# virtual methods
.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;

    .line 137
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 138
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/slice/SliceProviderPermissions;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 139
    .local v2, "authority":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    invoke-virtual {v2}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getPkgs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 140
    .local v4, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    # getter for: Lcom/android/server/slice/SlicePermissionManager$PkgUser;->mPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->access$000(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v4    # "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    goto :goto_2b

    .line 142
    .end local v2    # "authority":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    :cond_3f
    goto :goto_17

    .line 143
    :cond_40
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public grantFullAccess(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 95
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v0, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v1

    .line 97
    .local v1, "client":Lcom/android/server/slice/SliceClientPermissions;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/slice/SliceClientPermissions;->setHasFullAccess(Z)V

    .line 98
    return-void
.end method

.method public grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "providerPkg"    # Ljava/lang/String;
    .param p4, "providerUser"    # I
    .param p5, "uri"    # Landroid/net/Uri;

    .line 102
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 103
    .local v0, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v1, p3, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 105
    .local v1, "providerPkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v2

    .line 106
    .local v2, "client":Lcom/android/server/slice/SliceClientPermissions;
    invoke-virtual {v2, p5, v1}, Lcom/android/server/slice/SliceClientPermissions;->grantUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    .line 108
    invoke-direct {p0, v1}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v3

    .line 109
    .local v3, "provider":Lcom/android/server/slice/SliceProviderPermissions;
    invoke-static {p5}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/slice/SliceProviderPermissions;->getOrCreateAuthority(Ljava/lang/String;)Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->addPkg(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    .line 111
    return-void
.end method

.method public hasFullAccess(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 147
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 148
    .local v0, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/slice/SliceClientPermissions;->hasFullAccess()Z

    move-result v1

    return v1
.end method

.method public hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .line 152
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 153
    .local v0, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v1

    .line 154
    .local v1, "client":Lcom/android/server/slice/SliceClientPermissions;
    invoke-static {p3, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v2

    .line 155
    .local v2, "providerUserId":I
    invoke-virtual {v1}, Lcom/android/server/slice/SliceClientPermissions;->hasFullAccess()Z

    move-result v3

    if-nez v3, :cond_20

    .line 156
    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/slice/SliceClientPermissions;->hasPermission(Landroid/net/Uri;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v3, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v3, 0x1

    .line 155
    :goto_21
    return v3
.end method

.method public onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .registers 6
    .param p1, "obj"    # Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 161
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    return-void
.end method

.method public readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 198
    monitor-enter p0

    .line 199
    :goto_1
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    const-string/jumbo v0, "slice-access-list"

    .line 200
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 201
    :cond_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_20

    .line 202
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    .line 204
    :cond_20
    const-string/jumbo v0, "version"

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, "xmlVersion":I
    if-ge v0, v2, :cond_2c

    .line 207
    monitor-exit p0

    return-void

    .line 209
    :cond_2c
    :goto_2c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_ac

    .line 210
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v2, :cond_a8

    .line 211
    const-string v3, "client"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/32 v4, 0x493e0

    if-eqz v3, :cond_6f

    .line 212
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v3

    .line 214
    .local v3, "client":Lcom/android/server/slice/SliceClientPermissions;
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_ae

    .line 215
    :try_start_4e
    iget-object v7, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/slice/SliceClientPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_6c

    .line 217
    :try_start_58
    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 218
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    .line 219
    invoke-virtual {v3}, Lcom/android/server/slice/SliceClientPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 218
    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6b
    .catchall {:try_start_58 .. :try_end_6b} :catchall_ae

    .line 221
    .end local v3    # "client":Lcom/android/server/slice/SliceClientPermissions;
    goto :goto_2c

    .line 216
    .restart local v3    # "client":Lcom/android/server/slice/SliceClientPermissions;
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v1

    .line 221
    .end local v3    # "client":Lcom/android/server/slice/SliceClientPermissions;
    :cond_6f
    const-string/jumbo v3, "provider"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 222
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v3

    .line 224
    .local v3, "provider":Lcom/android/server/slice/SliceProviderPermissions;
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_83
    .catchall {:try_start_6e .. :try_end_83} :catchall_ae

    .line 225
    :try_start_83
    iget-object v7, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/slice/SliceProviderPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_a1

    .line 227
    :try_start_8d
    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 228
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    .line 229
    invoke-virtual {v3}, Lcom/android/server/slice/SliceProviderPermissions;->getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 228
    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_ae

    .line 231
    .end local v3    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    goto :goto_2c

    .line 226
    .restart local v3    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    :catchall_a1
    move-exception v1

    :try_start_a2
    monitor-exit v6
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v1

    .line 232
    .end local v3    # "provider":Lcom/android/server/slice/SliceProviderPermissions;
    :cond_a4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2c

    .line 235
    :cond_a8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_2c

    .line 238
    .end local v0    # "xmlVersion":I
    :cond_ac
    monitor-exit p0

    .line 239
    return-void

    .line 238
    :catchall_ae
    move-exception v0

    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method public removePkg(Ljava/lang/String;I)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 123
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 124
    .local v0, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v1

    .line 126
    .local v1, "provider":Lcom/android/server/slice/SliceProviderPermissions;
    invoke-virtual {v1}, Lcom/android/server/slice/SliceProviderPermissions;->getAuthorities()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 127
    .local v3, "authority":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    invoke-virtual {v3}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getPkgs()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 128
    .local v5, "p":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-direct {p0, v5}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lcom/android/server/slice/SliceClientPermissions;->removeAuthority(Ljava/lang/String;I)V

    .line 129
    .end local v5    # "p":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    goto :goto_25

    .line 130
    .end local v3    # "authority":Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;
    :cond_3d
    goto :goto_11

    .line 131
    :cond_3e
    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v2

    .line 132
    .local v2, "client":Lcom/android/server/slice/SliceClientPermissions;
    invoke-virtual {v2}, Lcom/android/server/slice/SliceClientPermissions;->clear()V

    .line 133
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 134
    return-void
.end method

.method public revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "providerPkg"    # Ljava/lang/String;
    .param p4, "providerUser"    # I
    .param p5, "uri"    # Landroid/net/Uri;

    .line 115
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 116
    .local v0, "pkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    new-instance v1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-direct {v1, p3, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 118
    .local v1, "providerPkgUser":Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    invoke-direct {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v2

    .line 119
    .local v2, "client":Lcom/android/server/slice/SliceClientPermissions;
    invoke-virtual {v2, p5, v1}, Lcom/android/server/slice/SliceClientPermissions;->revokeUri(Landroid/net/Uri;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    .line 120
    return-void
.end method

.method public writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 167
    monitor-enter p0

    .line 168
    :try_start_1
    const-string/jumbo v0, "slice-access-list"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    sget-object v0, Lcom/android/server/slice/-$$Lambda$SlicePermissionManager$y3Tun5dTftw8s8sky62syeWR34U;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SlicePermissionManager$y3Tun5dTftw8s8sky62syeWR34U;

    .line 173
    .local v0, "tracker":Lcom/android/server/slice/DirtyTracker;
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 174
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 175
    invoke-direct {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    .line 177
    :cond_25
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_36
    if-ge v5, v4, :cond_8d

    aget-object v6, v3, v5

    .line 178
    .local v6, "file":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 178
    .end local v6    # "file":Ljava/lang/String;
    goto :goto_80

    .line 179
    .restart local v6    # "file":Ljava/lang/String;
    :cond_41
    invoke-direct {p0, v6}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    move-result-object v7
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_95

    .line 181
    .local v7, "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    :goto_45
    :try_start_45
    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    if-eq v8, v2, :cond_57

    .line 182
    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_45

    .line 184
    :cond_57
    const-string v8, "client"

    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 185
    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    move-result-object v8

    .line 185
    .local v8, "p":Lcom/android/server/slice/DirtyTracker$Persistable;
    goto :goto_78

    .line 187
    .end local v8    # "p":Lcom/android/server/slice/DirtyTracker$Persistable;
    :cond_70
    # getter for: Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    move-result-object v8

    .line 189
    .restart local v8    # "p":Lcom/android/server/slice/DirtyTracker$Persistable;
    :goto_78
    invoke-interface {v8, p1}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_7b} :catch_85
    .catchall {:try_start_45 .. :try_end_7b} :catchall_83

    .line 190
    .end local v8    # "p":Lcom/android/server/slice/DirtyTracker$Persistable;
    if-eqz v7, :cond_80

    :try_start_7d
    invoke-static {v1, v7}, Lcom/android/server/slice/SlicePermissionManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_95

    .line 177
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    :cond_80
    :goto_80
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 190
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v7    # "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    :catchall_83
    move-exception v2

    goto :goto_87

    .line 179
    :catch_85
    move-exception v1

    :try_start_86
    throw v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_83

    .line 190
    :goto_87
    if-eqz v7, :cond_8c

    :try_start_89
    invoke-static {v1, v7}, Lcom/android/server/slice/SlicePermissionManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8c
    throw v2

    .line 193
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "parser":Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    :cond_8d
    const-string/jumbo v2, "slice-access-list"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    .end local v0    # "tracker":Lcom/android/server/slice/DirtyTracker;
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_95
    move-exception v0

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_89 .. :try_end_97} :catchall_95

    throw v0
.end method
