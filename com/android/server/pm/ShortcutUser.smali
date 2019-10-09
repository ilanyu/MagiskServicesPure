.class Lcom/android/server/pm/ShortcutUser;
.super Ljava/lang/Object;
.source "ShortcutUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    }
.end annotation


# static fields
.field private static final ATTR_KNOWN_LOCALES:Ljava/lang/String; = "locales"

.field private static final ATTR_LAST_APP_SCAN_OS_FINGERPRINT:Ljava/lang/String; = "last-app-scan-fp"

.field private static final ATTR_LAST_APP_SCAN_TIME:Ljava/lang/String; = "last-app-scan-time2"

.field private static final ATTR_RESTORE_SOURCE_FINGERPRINT:Ljava/lang/String; = "restore-from-fp"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final KEY_LAUNCHERS:Ljava/lang/String; = "launchers"

.field private static final KEY_PACKAGES:Ljava/lang/String; = "packages"

.field private static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_LAUNCHER:Ljava/lang/String; = "launcher"

.field static final TAG_ROOT:Ljava/lang/String; = "user"


# instance fields
.field private mCachedLauncher:Landroid/content/ComponentName;

.field private mKnownLocales:Ljava/lang/String;

.field private mLastAppScanOsFingerprint:Ljava/lang/String;

.field private mLastAppScanTime:J

.field private mLastKnownLauncher:Landroid/content/ComponentName;

.field private final mLaunchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreFromOsFingerprint:Ljava/lang/String;

.field final mService:Lcom/android/server/pm/ShortcutService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "userId"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 114
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 134
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 135
    iput p2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 136
    return-void
.end method

.method private addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V
    .registers 5
    .param p1, "launcher"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 190
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutLauncher;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v1

    .line 192
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method private addPackage(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 4
    .param p1, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .line 170
    invoke-virtual {p1, p0}, Lcom/android/server/pm/ShortcutPackage;->replaceUser(Lcom/android/server/pm/ShortcutUser;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/io/File;

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "numFiles":I
    const-wide/16 v1, 0x0

    .line 603
    .local v1, "size":J
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 604
    .local v3, "children":[Ljava/io/File;
    if-eqz v3, :cond_3e

    .line 605
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_3e

    aget-object v7, v4, v6

    .line 606
    .local v7, "child":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 607
    add-int/lit8 v0, v0, 0x1

    .line 608
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v1, v8

    goto :goto_3b

    .line 609
    :cond_21
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 610
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 605
    .end local v7    # "child":Ljava/io/File;
    :cond_3b
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 614
    :cond_3e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    const-string v4, "Path: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    const-string v4, "/ has "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 619
    const-string v4, " files, size="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 621
    const-string v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget-object v4, v4, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method private getKnownLocales()Ljava/lang/String;
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 285
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 288
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$attemptToRestoreIfNeededAndSave$2(Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 1
    .param p0, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 329
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 330
    return-void
.end method

.method static synthetic lambda$detectLocaleChange$1(Lcom/android/server/pm/ShortcutPackage;)V
    .registers 1
    .param p0, "pkg"    # Lcom/android/server/pm/ShortcutPackage;

    .line 307
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resetRateLimiting()V

    .line 308
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutPackage;->resolveResourceStrings()V

    .line 309
    return-void
.end method

.method static synthetic lambda$forPackageItem$0(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V
    .registers 5
    .param p0, "packageUserId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/util/function/Consumer;
    .param p3, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;

    .line 256
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    if-ne v0, p0, :cond_13

    .line 257
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 258
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 260
    :cond_13
    return-void
.end method

.method public static synthetic lambda$mergeRestoredFile$3(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[ILcom/android/server/pm/ShortcutLauncher;)V
    .registers 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "restoredLaunchers"    # [I
    .param p3, "sl"    # Lcom/android/server/pm/ShortcutLauncher;

    .line 507
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 508
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 509
    return-void

    .line 511
    :cond_1d
    invoke-direct {p0, p3}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 512
    const/4 v0, 0x0

    aget v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v0

    .line 513
    return-void
.end method

.method public static synthetic lambda$mergeRestoredFile$4(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[ILcom/android/server/pm/ShortcutPackage;)V
    .registers 9
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "restoredPackages"    # [I
    .param p3, "restoredShortcuts"    # [I
    .param p4, "sp"    # Lcom/android/server/pm/ShortcutPackage;

    .line 517
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 518
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 519
    return-void

    .line 522
    :cond_1d
    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 523
    .local v0, "previous":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->hasNonManifestShortcuts()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 524
    const-string v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcuts for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " are being restored. Existing non-manifeset shortcuts will be overwritten."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_4c
    invoke-direct {p0, p4}, Lcom/android/server/pm/ShortcutUser;->addPackage(Lcom/android/server/pm/ShortcutPackage;)V

    .line 528
    const/4 v1, 0x0

    aget v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v1

    .line 529
    aget v2, p3, v1

    invoke-virtual {p4}, Lcom/android/server/pm/ShortcutPackage;->getShortcutCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p3, v1

    .line 530
    return-void
.end method

.method public static loadFromXml(Lcom/android/server/pm/ShortcutService;Lorg/xmlpull/v1/XmlPullParser;IZ)Lcom/android/server/pm/ShortcutUser;
    .registers 21
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 382
    move/from16 v4, p3

    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    invoke-direct {v0, v1, v3}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    move-object v5, v0

    .line 385
    .local v5, "ret":Lcom/android/server/pm/ShortcutUser;
    :try_start_e
    const-string/jumbo v0, "locales"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 390
    const-string/jumbo v0, "last-app-scan-time2"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    .line 392
    .local v6, "lastAppScanTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    move-result-wide v8

    .line 393
    .local v8, "currentTime":J
    cmp-long v0, v6, v8

    if-gez v0, :cond_28

    move-wide v10, v6

    goto :goto_2a

    :cond_28
    const-wide/16 v10, 0x0

    :goto_2a
    iput-wide v10, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 394
    const-string/jumbo v0, "last-app-scan-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 396
    const-string/jumbo v0, "restore-from-fp"

    invoke-static {v2, v0}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 398
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 400
    .local v0, "outerDepth":I
    :goto_42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v11, v10

    .line 400
    .local v11, "type":I
    const/4 v12, 0x1

    if-eq v10, v12, :cond_c3

    const/4 v10, 0x3

    if-ne v11, v10, :cond_53

    .line 401
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v0, :cond_c3

    .line 402
    :cond_53
    const/4 v10, 0x2

    if-eq v11, v10, :cond_57

    .line 403
    goto :goto_42

    .line 405
    :cond_57
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 406
    .local v13, "depth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 408
    .local v14, "tag":Ljava/lang/String;
    add-int/lit8 v15, v0, 0x1

    if-ne v13, v15, :cond_bf

    .line 409
    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v12, -0x53e0f060

    if-eq v10, v12, :cond_8e

    const v12, -0x4457a875

    if-eq v10, v12, :cond_83

    const v12, -0x301acbba

    if-eq v10, v12, :cond_78

    goto :goto_99

    :cond_78
    const-string/jumbo v10, "package"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    const/4 v12, 0x1

    goto :goto_9a

    :cond_83
    const-string/jumbo v10, "launcher-pins"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    const/4 v12, 0x2

    goto :goto_9a

    :cond_8e
    const-string/jumbo v10, "launcher"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_99

    const/4 v12, 0x0

    goto :goto_9a

    :cond_99
    :goto_99
    move v12, v15

    :goto_9a
    packed-switch v12, :pswitch_data_ce

    goto :goto_bf

    .line 425
    :pswitch_9e
    nop

    .line 426
    invoke-static {v2, v5, v3, v4}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v10

    .line 425
    invoke-direct {v5, v10}, Lcom/android/server/pm/ShortcutUser;->addLauncher(Lcom/android/server/pm/ShortcutLauncher;)V

    .line 427
    goto :goto_42

    .line 416
    :pswitch_a7
    invoke-static {v1, v5, v2, v4}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Lorg/xmlpull/v1/XmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v10

    .line 420
    .local v10, "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    iget-object v12, v5, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    goto :goto_42

    .line 411
    .end local v10    # "shortcuts":Lcom/android/server/pm/ShortcutPackage;
    :pswitch_b5
    const-string/jumbo v10, "value"

    invoke-static {v2, v10}, Lcom/android/server/pm/ShortcutService;->parseComponentNameAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v5, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    .line 413
    goto :goto_42

    .line 431
    :cond_bf
    :goto_bf
    invoke-static {v13, v14}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_c2} :catch_c5

    .line 432
    .end local v13    # "depth":I
    .end local v14    # "tag":Ljava/lang/String;
    goto :goto_42

    .line 436
    .end local v0    # "outerDepth":I
    .end local v6    # "lastAppScanTime":J
    .end local v8    # "currentTime":J
    .end local v11    # "type":I
    :cond_c3
    nop

    .line 437
    return-object v5

    .line 433
    :catch_c5
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v6, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    const-string v7, "Unable to parse file"

    invoke-direct {v6, v7, v0}, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_a7
        :pswitch_9e
    .end packed-switch
.end method

.method private saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "spi"    # Lcom/android/server/pm/ShortcutPackageItem;
    .param p3, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 372
    if-eqz p3, :cond_d

    .line 373
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 374
    return-void

    .line 377
    :cond_d
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 378
    return-void
.end method

.method private setLauncher(Landroid/content/ComponentName;Z)V
    .registers 5
    .param p1, "launcherComponent"    # Landroid/content/ComponentName;
    .param p2, "allowPurgeLastKnown"    # Z

    .line 462
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    .line 464
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    return-void

    .line 467
    :cond_b
    if-nez p2, :cond_10

    if-nez p1, :cond_10

    .line 468
    return-void

    .line 470
    :cond_10
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    .line 471
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 472
    return-void
.end method


# virtual methods
.method public attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .registers 5
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageUserId"    # I

    .line 328
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$bsc89E_40a5X2amehalpqawQ5hY;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/pm/ShortcutUser;->forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 331
    return-void
.end method

.method public clearLauncher()V
    .registers 2

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;)V

    .line 451
    return-void
.end method

.method public detectLocaleChange()V
    .registers 4

    .line 296
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectGetLocaleTagsForUser(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "currentLocales":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutUser;->getKnownLocales()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 298
    return-void

    .line 304
    :cond_13
    iput-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 306
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutUser$6rBk7xJFaM9dXyyKHFs-DCus0iM;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->scheduleSaveUser(I)V

    .line 312
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 543
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 544
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    const-string v0, "User: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 547
    const-string v0, "  Known locales: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 549
    const-string v0, "  Last app scan: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 551
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {v0, v1}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    const-string v0, "Last app scan FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 561
    const-string v0, "Restore from FP: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    const-string v0, "Cached launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 571
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    const-string v0, "Last known launcher: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 574
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 577
    :cond_86
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_88
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_a8

    .line 578
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ShortcutLauncher;

    .line 579
    .local v2, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 580
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/ShortcutLauncher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 577
    .end local v2    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto :goto_88

    .line 584
    .end local v1    # "i":I
    :cond_a8
    nop

    .local v0, "i":I
    :goto_a9
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_c9

    .line 585
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    .line 586
    .local v1, "pkg":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isPackageMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 587
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/ShortcutPackage;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 584
    .end local v1    # "pkg":Lcom/android/server/pm/ShortcutPackage;
    :cond_c6
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 591
    .end local v0    # "i":I
    :cond_c9
    invoke-virtual {p3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->shouldDumpDetails()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 592
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 593
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    const-string v0, "Bitmap directories: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutUser;->dumpDirectorySize(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/io/File;)V

    .line 597
    :cond_f6
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .registers 7
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 627
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 629
    .local v0, "result":Lorg/json/JSONObject;
    const-string/jumbo v1, "userId"

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 632
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 633
    .local v1, "launchers":Lorg/json/JSONArray;
    const/4 v2, 0x0

    move v3, v2

    .line 633
    .local v3, "i":I
    :goto_14
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_2e

    .line 634
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutLauncher;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutLauncher;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 633
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 636
    .end local v3    # "i":I
    :cond_2e
    const-string/jumbo v3, "launchers"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 640
    .end local v1    # "launchers":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 641
    .local v1, "packages":Lorg/json/JSONArray;
    nop

    .line 641
    .local v2, "i":I
    :goto_3a
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 642
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutPackage;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 641
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 644
    .end local v2    # "i":I
    :cond_54
    const-string/jumbo v2, "packages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    .end local v1    # "packages":Lorg/json/JSONArray;
    return-object v0
.end method

.method public forAllLaunchers(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutLauncher;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 243
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 244
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 246
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public forAllPackageItems(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackageItem;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 251
    return-void
.end method

.method public forAllPackages(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Lcom/android/server/pm/ShortcutPackage;>;"
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 236
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 237
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 239
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public forPackageItem(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/pm/ShortcutPackageItem;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/pm/ShortcutPackageItem;>;"
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$XHWlvjfCvG1SoVwGHi3envhmtfM;-><init>(ILjava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 261
    return-void
.end method

.method public forceClearLauncher()V
    .registers 3

    .line 458
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    .line 459
    return-void
.end method

.method getAllLaunchersForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Lcom/android/server/pm/ShortcutLauncher;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getAllPackagesForTest()Landroid/util/ArrayMap;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ShortcutPackage;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getCachedLauncher()Landroid/content/ComponentName;
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLastAppScanOsFingerprint()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAppScanTime()J
    .registers 3

    .line 143
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    return-wide v0
.end method

.method public getLastKnownLauncher()Landroid/content/ComponentName;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLauncherShortcuts(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "launcherUserId"    # I

    .line 223
    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v0

    .line 224
    .local v0, "key":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutLauncher;

    .line 225
    .local v1, "ret":Lcom/android/server/pm/ShortcutLauncher;
    if-nez v1, :cond_1c

    .line 226
    new-instance v2, Lcom/android/server/pm/ShortcutLauncher;

    iget v3, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    move-object v1, v2

    .line 227
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 229
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 231
    :goto_1f
    return-object v1
.end method

.method public getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 213
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_13

    .line 214
    new-instance v1, Lcom/android/server/pm/ShortcutPackage;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/pm/ShortcutPackage;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;)V

    move-object v0, v1

    .line 215
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_13
    return-object v0
.end method

.method public getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 204
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v0, :cond_d

    .line 205
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackage;->attemptToRestoreIfNeededAndSave()V

    .line 207
    :cond_d
    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    return v0
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V
    .registers 10
    .param p1, "restored"    # Lcom/android/server/pm/ShortcutUser;

    .line 485
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 499
    .local v0, "s":Lcom/android/server/pm/ShortcutService;
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 500
    .local v2, "restoredLaunchers":[I
    new-array v3, v1, [I

    .line 501
    .local v3, "restoredPackages":[I
    new-array v1, v1, [I

    .line 503
    .local v1, "restoredShortcuts":[I
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 504
    new-instance v4, Lcom/android/server/pm/-$$Lambda$ShortcutUser$zwhAnw7NjAOfNphKSeWurjAD6OM;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$zwhAnw7NjAOfNphKSeWurjAD6OM;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 514
    new-instance v4, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/server/pm/-$$Lambda$ShortcutUser$078_3k15h1rTyJTkYAHYqf5ltYg;-><init>(Lcom/android/server/pm/ShortcutUser;Lcom/android/server/pm/ShortcutService;[I[I)V

    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 532
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 533
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 535
    iget-object v4, p1, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 537
    const-string v4, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored: L="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget v7, v2, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " P="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " S="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method public onCalledByPublisher(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange()V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 281
    return-void
.end method

.method public removeLauncher(ILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .registers 5
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutLauncher;

    return-object v0
.end method

.method public removePackage(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ShortcutPackage;

    .line 177
    .local v0, "removed":Lcom/android/server/pm/ShortcutPackage;
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    .line 179
    return-object v0
.end method

.method public rescanPackageIfNeeded(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceRescan"    # Z

    .line 315
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 317
    .local v0, "isNewApp":Z
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 319
    .local v1, "shortcutPackage":Lcom/android/server/pm/ShortcutPackage;
    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/ShortcutPackage;->rescanPackageIfNeeded(ZZ)Z

    move-result v2

    if-nez v2, :cond_19

    .line 320
    if-eqz v0, :cond_19

    .line 321
    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_19
    return-void
.end method

.method public resetThrottling()V
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 480
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->resetThrottling()V

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 482
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 335
    const-string/jumbo v0, "user"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    if-nez p2, :cond_32

    .line 339
    const-string/jumbo v0, "locales"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 340
    const-string/jumbo v0, "last-app-scan-time2"

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    invoke-static {p1, v0, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 342
    const-string/jumbo v0, "last-app-scan-fp"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    const-string/jumbo v0, "restore-from-fp"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 347
    const-string/jumbo v0, "launcher"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mLastKnownLauncher:Landroid/content/ComponentName;

    invoke-static {p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_3e

    .line 349
    :cond_32
    const-string/jumbo v0, "restore-from-fp"

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 350
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->injectBuildFingerprint()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {p1, v0, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 355
    :goto_3e
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 356
    .local v0, "size":I
    const/4 v2, 0x0

    move v3, v2

    .line 356
    .local v3, "i":I
    :goto_46
    if-ge v3, v0, :cond_56

    .line 357
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 361
    .end local v0    # "size":I
    .end local v3    # "i":I
    :cond_56
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 362
    .restart local v0    # "size":I
    nop

    .line 362
    .local v2, "i":I
    :goto_5d
    if-ge v2, v0, :cond_6d

    .line 363
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/pm/ShortcutUser;->saveShortcutPackageItem(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/ShortcutPackageItem;Z)V

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 367
    .end local v0    # "size":I
    .end local v2    # "i":I
    :cond_6d
    const-string/jumbo v0, "user"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    return-void
.end method

.method public setLastAppScanOsFingerprint(Ljava/lang/String;)V
    .registers 2
    .param p1, "lastAppScanOsFingerprint"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setLastAppScanTime(J)V
    .registers 3
    .param p1, "lastAppScanTime"    # J

    .line 147
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 148
    return-void
.end method

.method public setLauncher(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "launcherComponent"    # Landroid/content/ComponentName;

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutUser;->setLauncher(Landroid/content/ComponentName;Z)V

    .line 446
    return-void
.end method
