.class Lcom/android/server/pm/InstantAppRegistry;
.super Ljava/lang/Object;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;,
        Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    }
.end annotation


# static fields
.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_INSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final DEFAULT_UNINSTALLED_INSTANT_APP_MAX_CACHE_PERIOD:J = 0x39ef8b000L

.field static final DEFAULT_UNINSTALLED_INSTANT_APP_MIN_CACHE_PERIOD:J = 0x240c8400L

.field private static final INSTANT_APPS_FOLDER:Ljava/lang/String; = "instant"

.field private static final INSTANT_APP_ANDROID_ID_FILE:Ljava/lang/String; = "android_id"

.field private static final INSTANT_APP_COOKIE_FILE_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final INSTANT_APP_COOKIE_FILE_SIFFIX:Ljava/lang/String; = ".dat"

.field private static final INSTANT_APP_ICON_FILE:Ljava/lang/String; = "icon.png"

.field private static final INSTANT_APP_METADATA_FILE:Ljava/lang/String; = "metadata.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "InstantAppRegistry"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "permissions"


# instance fields
.field private final mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

.field private mInstalledInstantAppUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService.mPackages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mInstantGrants:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService.mPackages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/pm/PackageManagerService;

.field private mUninstalledInstantApps:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService.mPackages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 202
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

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 134
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;-><init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 135
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .line 80
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/InstantAppRegistry;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/io/File;
    .param p4, "x4"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppRegistry;->persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V

    return-void
.end method

.method private addUninstalledInstantAppLPw(Landroid/content/pm/PackageParser$Package;I)V
    .registers 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 482
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 484
    .local v0, "uninstalledApp":Landroid/content/pm/InstantAppInfo;
    if-nez v0, :cond_8

    .line 485
    return-void

    .line 487
    :cond_8
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v1, :cond_13

    .line 488
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 490
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 491
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 492
    .local v1, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v1, :cond_28

    .line 493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 494
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    :cond_28
    new-instance v2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V

    .line 498
    .local v2, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V

    .line 501
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->writeInstantApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 502
    return-void
.end method

.method private static computeInstantCookieFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sha256Digest"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1001
    invoke-static {p0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1002
    .local v0, "appDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1004
    .local v1, "cookieFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;
    .registers 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .param p3, "addApplicationInfo"    # Z

    .line 829
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 830
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 831
    return-object v1

    .line 833
    :cond_8
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 834
    return-object v1

    .line 837
    :cond_f
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 838
    .local v1, "requestedPermissions":[Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 840
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v2

    .line 841
    .local v2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 842
    .local v3, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 844
    if-eqz p3, :cond_37

    .line 845
    new-instance v4, Landroid/content/pm/InstantAppInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5, v1, v3}, Landroid/content/pm/InstantAppInfo;-><init>(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v4

    .line 848
    :cond_37
    new-instance v4, Landroid/content/pm/InstantAppInfo;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 849
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1, v3}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 848
    return-object v4
.end method

.method private static deleteDir(Ljava/io/File;)V
    .registers 5
    .param p0, "dir"    # Ljava/io/File;

    .line 1138
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1139
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 1140
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 1141
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 1140
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1144
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1145
    return-void
.end method

.method private generateInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 233
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 234
    .local v0, "randomBytes":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 235
    invoke-static {v0}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "id":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 237
    .local v2, "appDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 238
    const-string v3, "InstantAppRegistry"

    const-string v4, "Cannot create instant app cookie directory"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-object v1

    .line 241
    :cond_2e
    new-instance v3, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "android_id"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v3, "idFile":Ljava/io/File;
    :try_start_39
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_52

    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 244
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_46} :catch_4c
    .catchall {:try_start_3f .. :try_end_46} :catchall_4a

    .line 245
    :try_start_46
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_52

    .line 247
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_69

    .line 245
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_4a
    move-exception v6

    goto :goto_4e

    .line 243
    :catch_4c
    move-exception v5

    :try_start_4d
    throw v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    .line 245
    :goto_4e
    :try_start_4e
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_52
    move-exception v4

    .line 246
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "InstantAppRegistry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing instant app android id file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v4    # "e":Ljava/io/IOException;
    :goto_69
    return-object v1
.end method

.method private getInstalledInstantApplicationsLPr(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 802
    const/4 v0, 0x0

    .line 804
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 805
    .local v1, "packageCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_39

    .line 806
    iget-object v3, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 807
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 808
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_36

    invoke-virtual {v4, p1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-nez v5, :cond_23

    .line 809
    goto :goto_36

    .line 811
    :cond_23
    const/4 v5, 0x1

    invoke-direct {p0, v3, p1, v5}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Landroid/content/pm/PackageParser$Package;IZ)Landroid/content/pm/InstantAppInfo;

    move-result-object v5

    .line 813
    .local v5, "info":Landroid/content/pm/InstantAppInfo;
    if-nez v5, :cond_2b

    .line 814
    goto :goto_36

    .line 816
    :cond_2b
    if-nez v0, :cond_33

    .line 817
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 819
    :cond_33
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "info":Landroid/content/pm/InstantAppInfo;
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 822
    .end local v2    # "i":I
    :cond_39
    return-object v0
.end method

.method private static getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1134
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getInstantApplicationsDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"    # I

    .line 1129
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "instant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUninstalledInstantAppStatesLPr(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;"
        }
    .end annotation

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-eqz v1, :cond_11

    .line 930
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 931
    if-eqz v0, :cond_11

    .line 932
    return-object v0

    .line 936
    :cond_11
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v1

    .line 937
    .local v1, "instantAppsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 938
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 939
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_4c

    .line 940
    array-length v3, v2

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v3, :cond_4c

    aget-object v5, v2, v4

    .line 941
    .local v5, "instantDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 942
    goto :goto_49

    .line 944
    :cond_2e
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "metadata.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 946
    .local v6, "metadataFile":Ljava/io/File;
    nop

    .line 947
    invoke-static {v6}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v7

    .line 948
    .local v7, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v7, :cond_3e

    .line 949
    goto :goto_49

    .line 951
    :cond_3e
    if-nez v0, :cond_46

    .line 952
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    .line 954
    :cond_46
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    .end local v5    # "instantDir":Ljava/io/File;
    .end local v6    # "metadataFile":Ljava/io/File;
    .end local v7    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 959
    .end local v2    # "files":[Ljava/io/File;
    :cond_4c
    if-eqz v0, :cond_5e

    .line 960
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v2, :cond_59

    .line 961
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 963
    :cond_59
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 966
    :cond_5e
    return-object v0
.end method

.method private getUninstalledInstantApplicationsLPr(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 856
    nop

    .line 857
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantAppStatesLPr(I)Ljava/util/List;

    move-result-object v0

    .line 858
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2d

    .line 862
    :cond_e
    const/4 v1, 0x0

    .line 863
    .local v1, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 864
    .local v2, "stateCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_2c

    .line 865
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 866
    .local v4, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v1, :cond_24

    .line 867
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 869
    :cond_24
    iget-object v5, v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 871
    .end local v3    # "i":I
    :cond_2c
    return-object v1

    .line 859
    .end local v1    # "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    .end local v2    # "stateCount":I
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasInstantAppMetadataLPr(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 602
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 603
    .local v0, "instantAppDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_35

    .line 606
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_33

    goto :goto_35

    :cond_33
    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v1, 0x1

    .line 603
    :goto_36
    return v1
.end method

.method private hasUninstalledInstantAppStateLPr(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 584
    return v1

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 587
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 588
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v0, :cond_11

    .line 589
    return v1

    .line 591
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 592
    .local v2, "appCount":I
    move v3, v1

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_2f

    .line 593
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 594
    .local v4, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    iget-object v5, v4, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v5}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 595
    const/4 v1, 0x1

    return v1

    .line 592
    .end local v4    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 598
    .end local v3    # "i":I
    :cond_2f
    return v1
.end method

.method static synthetic lambda$deleteInstantApplicationMetadataLPw$1(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 542
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPackageInstalledLPw$0(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 286
    iget-object v0, p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$pruneInstantApps$2(Lcom/android/server/pm/InstantAppRegistry;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 709
    .local v0, "lhsPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 710
    .local v1, "rhsPkg":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-nez v0, :cond_1a

    if-nez v1, :cond_1a

    .line 711
    return v2

    .line 712
    :cond_1a
    const/4 v3, -0x1

    if-nez v0, :cond_1e

    .line 713
    return v3

    .line 714
    :cond_1e
    const/4 v4, 0x1

    if-nez v1, :cond_22

    .line 715
    return v4

    .line 717
    :cond_22
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    .line 718
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2f

    .line 719
    return v4

    .line 720
    :cond_2f
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v5

    .line 721
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3c

    .line 722
    return v3

    .line 724
    :cond_3c
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_5a

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_5a

    .line 726
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 727
    .local v2, "lhsPs":Lcom/android/server/pm/PackageSetting;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 728
    .local v5, "rhsPs":Lcom/android/server/pm/PackageSetting;
    iget-wide v6, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iget-wide v8, v5, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_59

    .line 729
    return v4

    .line 731
    :cond_59
    return v3

    .line 734
    .end local v2    # "lhsPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "rhsPs":Lcom/android/server/pm/PackageSetting;
    :cond_5a
    return v2
.end method

.method static synthetic lambda$pruneInstantApps$3(JLcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z
    .registers 7
    .param p0, "maxUninstalledCacheDuration"    # J
    .param p2, "state"    # Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p2, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mTimestamp:J

    sub-long/2addr v0, v2

    .line 763
    .local v0, "elapsedCachingMillis":J
    cmp-long v2, v0, p0

    if-lez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    return v2
.end method

.method private static parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1031
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1032
    .local v0, "outerDepth":I
    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1033
    const-string/jumbo v1, "package"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1034
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v1

    return-object v1

    .line 1037
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    .registers 10
    .param p0, "metadataFile"    # Ljava/io/File;

    .line 971
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 972
    return-object v1

    .line 976
    :cond_8
    :try_start_8
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_57

    .line 980
    .local v0, "in":Ljava/io/FileInputStream;
    nop

    .line 979
    nop

    .line 982
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 983
    .local v1, "instantDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 984
    .local v2, "timestamp":J
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, "packageName":Ljava/lang/String;
    :try_start_1f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 988
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 989
    new-instance v6, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 990
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;

    move-result-object v7

    invoke-direct {v6, v7, v2, v3}, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;-><init>(Landroid/content/pm/InstantAppInfo;J)V
    :try_end_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_35} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_35} :catch_3b
    .catchall {:try_start_1f .. :try_end_35} :catchall_39

    .line 995
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 989
    return-object v6

    .line 995
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_39
    move-exception v5

    goto :goto_53

    .line 991
    :catch_3b
    move-exception v5

    .line 992
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3c
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed parsing instant metadata file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_39

    .line 995
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_53
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 977
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "instantDir":Ljava/io/File;
    .end local v2    # "timestamp":J
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_57
    move-exception v0

    .line 978
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "InstantAppRegistry"

    const-string v3, "No instant metadata file"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    return-object v1
.end method

.method private static parsePackage(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/pm/InstantAppInfo;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1043
    const-string/jumbo v0, "label"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1049
    .local v3, "outerDepth":I
    :cond_16
    :goto_16
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1050
    const-string/jumbo v4, "permissions"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1051
    invoke-static {p0, v1, v2}, Lcom/android/server/pm/InstantAppRegistry;->parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V

    goto :goto_16

    .line 1055
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 1056
    .local v4, "requestedPermissions":[Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1058
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 1059
    .local v5, "grantedPermissions":[Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1061
    new-instance v6, Landroid/content/pm/InstantAppInfo;

    invoke-direct {v6, p1, v0, v4, v5}, Landroid/content/pm/InstantAppInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v6
.end method

.method private static parsePermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1069
    .local p1, "outRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "outGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1070
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1071
    const-string/jumbo v1, "permission"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1072
    const-string/jumbo v1, "name"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "permission":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    const-string v2, "granted"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1075
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2c
    goto :goto_4

    .line 1079
    :cond_2d
    return-void
.end method

.method private static peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1009
    invoke-static {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1010
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1011
    return-object v2

    .line 1013
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1014
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_13

    .line 1015
    return-object v2

    .line 1017
    :cond_13
    array-length v3, v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_3b

    aget-object v5, v1, v4

    .line 1018
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_38

    .line 1019
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cookie_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1020
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1021
    return-object v5

    .line 1017
    .end local v5    # "file":Ljava/io/File;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1024
    :cond_3b
    return-object v2
.end method

.method private peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 901
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-eqz v0, :cond_2d

    .line 902
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 903
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 904
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-eqz v0, :cond_2d

    .line 905
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 906
    .local v1, "appCount":I
    const/4 v2, 0x0

    .line 906
    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_2d

    .line 907
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 908
    .local v3, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    iget-object v4, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 909
    invoke-virtual {v4}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 910
    iget-object v4, v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object v4

    .line 906
    .end local v3    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 916
    .end local v0    # "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    .end local v1    # "appCount":I
    .end local v2    # "i":I
    :cond_2d
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 918
    .local v0, "metadataFile":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    move-result-object v1

    .line 919
    .local v1, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    if-nez v1, :cond_41

    .line 920
    const/4 v2, 0x0

    return-object v2

    .line 923
    :cond_41
    iget-object v2, v1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    return-object v2
.end method

.method private persistInstantApplicationCookie([BLjava/lang/String;Ljava/io/File;I)V
    .registers 9
    .param p1, "cookie"    # [B
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cookieFile"    # Ljava/io/File;
    .param p4, "userId"    # I

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 185
    :try_start_5
    invoke-static {p2, p4}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 186
    .local v1, "appDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 187
    const-string v2, "InstantAppRegistry"

    const-string v3, "Cannot create instant app cookie directory"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    monitor-exit v0

    return-void

    .line 191
    :cond_1e
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_31

    .line 192
    const-string v2, "InstantAppRegistry"

    const-string v3, "Cannot delete instant app cookie file"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_31
    if-eqz p1, :cond_67

    array-length v2, p1

    if-gtz v2, :cond_37

    goto :goto_67

    .line 199
    .end local v1    # "appDir":Ljava/io/File;
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_69

    .line 200
    :try_start_38
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_4f

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 201
    const/4 v2, 0x0

    :try_start_3f
    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_43} :catch_49
    .catchall {:try_start_3f .. :try_end_43} :catchall_47

    .line 202
    :try_start_43
    invoke-static {v1, v0}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4f

    .line 204
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_66

    .line 202
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_47
    move-exception v2

    goto :goto_4b

    .line 200
    :catch_49
    move-exception v1

    :try_start_4a
    throw v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_47

    .line 202
    :goto_4b
    :try_start_4b
    invoke-static {v1, v0}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4f} :catch_4f

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_4f
    move-exception v0

    .line 203
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing instant app cookie file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :goto_66
    return-void

    .line 197
    .restart local v1    # "appDir":Ljava/io/File;
    :cond_67
    :goto_67
    :try_start_67
    monitor-exit v0

    return-void

    .line 199
    .end local v1    # "appDir":Ljava/io/File;
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_69

    throw v1
.end method

.method private propagateInstantAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V
    .registers 13
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 876
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekOrParseUninstalledInstantAppInfo(Ljava/lang/String;I)Landroid/content/pm/InstantAppInfo;

    move-result-object v0

    .line 878
    .local v0, "appInfo":Landroid/content/pm/InstantAppInfo;
    if-nez v0, :cond_9

    .line 879
    return-void

    .line 881
    :cond_9
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 882
    return-void

    .line 884
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 886
    .local v1, "identity":J
    :try_start_18
    invoke-virtual {v0}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v4, :cond_3e

    aget-object v6, v3, v5

    .line 887
    .local v6, "grantedPermission":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 888
    invoke-virtual {v7, v6}, Lcom/android/server/pm/Settings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v7

    .line 889
    .local v7, "propagatePermission":Z
    if-eqz v7, :cond_3b

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 890
    iget-object v8, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, p2}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_43

    .line 886
    .end local v6    # "grantedPermission":Ljava/lang/String;
    .end local v7    # "propagatePermission":Z
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 894
    :cond_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 895
    nop

    .line 896
    return-void

    .line 894
    :catchall_43
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private pruneInstantApps(JJJ)Z
    .registers 36
    .param p1, "neededSpace"    # J
    .param p3, "maxInstalledCacheDuration"    # J
    .param p5, "maxUninstalledCacheDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 661
    move-wide/from16 v2, p5

    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 662
    .local v4, "storage":Landroid/os/storage/StorageManager;
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 664
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    cmp-long v0, v6, p1

    const/4 v6, 0x1

    if-ltz v0, :cond_21

    .line 665
    return v6

    .line 668
    :cond_21
    const/4 v7, 0x0

    .line 671
    .local v7, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 674
    .local v8, "now":J
    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 675
    :try_start_2b
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 677
    .local v0, "allUsers":[I
    iget-object v11, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_18d

    .line 678
    .local v11, "packageCount":I
    move-object v13, v7

    const/4 v7, 0x0

    .line 678
    .local v7, "i":I
    .local v13, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3b
    if-ge v7, v11, :cond_a5

    .line 679
    :try_start_3d
    iget-object v12, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageParser$Package;

    .line 680
    .local v12, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v12}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v14

    sub-long v14, v8, v14

    cmp-long v14, v14, p3

    if-gez v14, :cond_57

    .line 681
    nop

    .line 678
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v8    # "now":J
    .end local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v16, "storage":Landroid/os/storage/StorageManager;
    .local v17, "now":J
    :goto_52
    move-object/from16 v16, v4

    move-wide/from16 v17, v8

    goto :goto_8f

    .line 683
    .end local v16    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "now":J
    .restart local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v8    # "now":J
    .restart local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_57
    iget-object v6, v12, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/server/pm/PackageSetting;

    if-nez v6, :cond_5e

    .line 684
    goto :goto_52

    .line 686
    :cond_5e
    iget-object v6, v12, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;
    :try_end_62
    .catchall {:try_start_3d .. :try_end_62} :catchall_9d

    .line 687
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v14, 0x0

    .line 688
    .local v14, "installedOnlyAsInstantApp":Z
    move-object/from16 v16, v4

    :try_start_65
    array-length v4, v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_97

    .line 688
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .restart local v16    # "storage":Landroid/os/storage/StorageManager;
    move-wide/from16 v17, v8

    const/4 v8, 0x0

    .line 688
    .end local v8    # "now":J
    .restart local v17    # "now":J
    :goto_69
    if-ge v8, v4, :cond_80

    :try_start_6b
    aget v9, v0, v8

    .line 689
    .local v9, "userId":I
    invoke-virtual {v6, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 690
    invoke-virtual {v6, v9}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v15

    if-eqz v15, :cond_7b

    .line 691
    const/4 v14, 0x1

    goto :goto_7d

    .line 693
    :cond_7b
    const/4 v14, 0x0

    .line 694
    goto :goto_80

    .line 688
    .end local v9    # "userId":I
    :cond_7d
    :goto_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 698
    :cond_80
    :goto_80
    if-eqz v14, :cond_8f

    .line 699
    if-nez v13, :cond_8a

    .line 700
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .end local v13    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v13, v4

    .line 702
    .end local v4    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8a
    iget-object v4, v12, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "installedOnlyAsInstantApp":Z
    :cond_8f
    :goto_8f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v16

    move-wide/from16 v8, v17

    const/4 v6, 0x1

    goto :goto_3b

    .line 740
    .end local v0    # "allUsers":[I
    .end local v7    # "i":I
    .end local v11    # "packageCount":I
    .end local v17    # "now":J
    .restart local v8    # "now":J
    :catchall_97
    move-exception v0

    move-wide/from16 v17, v8

    move-object v7, v13

    .line 740
    .end local v8    # "now":J
    .restart local v17    # "now":J
    goto/16 :goto_192

    .line 740
    .end local v16    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "now":J
    .local v4, "storage":Landroid/os/storage/StorageManager;
    .restart local v8    # "now":J
    :catchall_9d
    move-exception v0

    move-object/from16 v16, v4

    move-wide/from16 v17, v8

    move-object v7, v13

    goto/16 :goto_192

    .line 706
    .restart local v0    # "allUsers":[I
    .restart local v11    # "packageCount":I
    :cond_a5
    move-object/from16 v16, v4

    move-wide/from16 v17, v8

    .line 706
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v8    # "now":J
    .restart local v16    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "now":J
    if-eqz v13, :cond_b7

    .line 707
    new-instance v4, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;

    invoke-direct {v4, v1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$UOn4sUy4zBQuofxUbY8RBYhkNSE;-><init>(Lcom/android/server/pm/InstantAppRegistry;)V

    invoke-interface {v13, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 707
    .end local v11    # "packageCount":I
    goto :goto_b7

    .line 740
    .end local v0    # "allUsers":[I
    .end local v13    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_b4
    move-object v7, v13

    goto/16 :goto_192

    .line 740
    .end local v7    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "allUsers":[I
    .restart local v13    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b7
    :goto_b7
    monitor-exit v10
    :try_end_b8
    .catchall {:try_start_6b .. :try_end_b8} :catchall_18a

    move-object v4, v0

    .line 742
    .end local v0    # "allUsers":[I
    .local v4, "allUsers":[I
    if-eqz v13, :cond_e7

    .line 743
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    .line 744
    .local v0, "packageCount":I
    const/4 v6, 0x0

    .line 744
    .local v6, "i":I
    :goto_c0
    if-ge v6, v0, :cond_e7

    .line 745
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 746
    .local v7, "packageToDelete":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x2

    move-object/from16 v19, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e4

    .line 749
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    cmp-long v8, v10, p1

    if-ltz v8, :cond_e4

    .line 750
    return v9

    .line 744
    .end local v7    # "packageToDelete":Ljava/lang/String;
    :cond_e4
    add-int/lit8 v6, v6, 0x1

    goto :goto_c0

    .line 757
    .end local v0    # "packageCount":I
    .end local v6    # "i":I
    :cond_e7
    iget-object v0, v1, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 759
    :try_start_ec
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    :goto_f6
    if-ge v8, v7, :cond_17e

    aget v9, v0, v8

    .line 761
    .restart local v9    # "userId":I
    new-instance v10, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$BuKCbLr_MGBazMPl54-pWTuGHYY;

    invoke-direct {v10, v2, v3}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$BuKCbLr_MGBazMPl54-pWTuGHYY;-><init>(J)V

    invoke-direct {v1, v10, v9}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 767
    invoke-static {v9}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v10

    .line 768
    .local v10, "instantAppsDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_115

    .line 769
    nop

    .line 759
    .end local v4    # "allUsers":[I
    .end local v9    # "userId":I
    .end local v10    # "instantAppsDir":Ljava/io/File;
    .local v27, "allUsers":[I
    :goto_10d
    move-object/from16 v25, v0

    move-object/from16 v27, v4

    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_172

    .line 771
    .end local v27    # "allUsers":[I
    .restart local v4    # "allUsers":[I
    .restart local v9    # "userId":I
    .restart local v10    # "instantAppsDir":Ljava/io/File;
    :cond_115
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 772
    .local v11, "files":[Ljava/io/File;
    if-nez v11, :cond_11c

    .line 773
    goto :goto_10d

    .line 775
    :cond_11c
    array-length v12, v11

    move-object/from16 v25, v0

    const/4 v0, 0x0

    :goto_120
    if-ge v0, v12, :cond_16d

    aget-object v14, v11, v0

    move-object/from16 v26, v14

    .line 776
    .local v26, "instantDir":Ljava/io/File;
    move-object/from16 v1, v26

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v14
    :try_end_12c
    .catchall {:try_start_ec .. :try_end_12c} :catchall_183

    .line 776
    .end local v26    # "instantDir":Ljava/io/File;
    .local v1, "instantDir":Ljava/io/File;
    if-nez v14, :cond_135

    .line 777
    nop

    .line 775
    move-object/from16 v27, v4

    move/from16 v28, v7

    .line 775
    .end local v1    # "instantDir":Ljava/io/File;
    .end local v4    # "allUsers":[I
    .restart local v27    # "allUsers":[I
    :cond_133
    :goto_133
    const/4 v7, 0x1

    goto :goto_164

    .line 780
    .end local v27    # "allUsers":[I
    .restart local v1    # "instantDir":Ljava/io/File;
    .restart local v4    # "allUsers":[I
    :cond_135
    move-object/from16 v27, v4

    :try_start_137
    new-instance v4, Ljava/io/File;

    .line 780
    .end local v4    # "allUsers":[I
    .restart local v27    # "allUsers":[I
    move/from16 v28, v7

    const-string/jumbo v7, "metadata.xml"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 781
    .local v4, "metadataFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_148

    .line 782
    goto :goto_133

    .line 785
    :cond_148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 786
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    sub-long v14, v14, v19

    .line 787
    .local v14, "elapsedCachingMillis":J
    cmp-long v7, v14, v2

    if-lez v7, :cond_133

    .line 788
    invoke-static {v1}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 789
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v19

    cmp-long v7, v19, p1

    if-ltz v7, :cond_133

    .line 790
    monitor-exit v6

    const/4 v7, 0x1

    return v7

    .line 775
    .end local v1    # "instantDir":Ljava/io/File;
    .end local v4    # "metadataFile":Ljava/io/File;
    .end local v14    # "elapsedCachingMillis":J
    :goto_164
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v27

    move/from16 v7, v28

    move-object/from16 v1, p0

    goto :goto_120

    .line 759
    .end local v9    # "userId":I
    .end local v10    # "instantAppsDir":Ljava/io/File;
    .end local v11    # "files":[Ljava/io/File;
    .end local v27    # "allUsers":[I
    .local v4, "allUsers":[I
    :cond_16d
    move-object/from16 v27, v4

    move/from16 v28, v7

    const/4 v7, 0x1

    .line 759
    .end local v4    # "allUsers":[I
    .restart local v27    # "allUsers":[I
    :goto_172
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v25

    move-object/from16 v4, v27

    move/from16 v7, v28

    move-object/from16 v1, p0

    goto/16 :goto_f6

    .line 795
    .end local v27    # "allUsers":[I
    .restart local v4    # "allUsers":[I
    :cond_17e
    move-object/from16 v27, v4

    .line 795
    .end local v4    # "allUsers":[I
    .restart local v27    # "allUsers":[I
    monitor-exit v6

    .line 797
    const/4 v0, 0x0

    return v0

    .line 795
    .end local v27    # "allUsers":[I
    .restart local v4    # "allUsers":[I
    :catchall_183
    move-exception v0

    move-object/from16 v27, v4

    .line 795
    .end local v4    # "allUsers":[I
    .restart local v27    # "allUsers":[I
    :goto_186
    monitor-exit v6
    :try_end_187
    .catchall {:try_start_137 .. :try_end_187} :catchall_188

    throw v0

    :catchall_188
    move-exception v0

    goto :goto_186

    .line 740
    .end local v27    # "allUsers":[I
    :catchall_18a
    move-exception v0

    goto/16 :goto_b4

    .line 740
    .end local v13    # "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "storage":Landroid/os/storage/StorageManager;
    .end local v17    # "now":J
    .local v4, "storage":Landroid/os/storage/StorageManager;
    .local v7, "packagesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "now":J
    :catchall_18d
    move-exception v0

    move-object/from16 v16, v4

    move-wide/from16 v17, v8

    .line 740
    .end local v4    # "storage":Landroid/os/storage/StorageManager;
    .end local v8    # "now":J
    .restart local v16    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "now":J
    :goto_192
    :try_start_192
    monitor-exit v10
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_194

    throw v0

    :catchall_194
    move-exception v0

    goto :goto_192
.end method

.method private removeAppLPw(II)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "targetAppId"    # I

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 471
    return-void

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 474
    .local v0, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v0, :cond_10

    .line 475
    return-void

    .line 477
    :cond_10
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 478
    return-void
.end method

.method private removeInstantAppLPw(II)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "instantAppId"    # I

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 446
    return-void

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 449
    .local v0, "instantAppList":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_10

    .line 450
    return-void

    .line 453
    :cond_10
    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 456
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v1, :cond_18

    .line 457
    return-void

    .line 459
    :cond_18
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 460
    .local v1, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v1, :cond_23

    .line 461
    return-void

    .line 463
    :cond_23
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_29
    if-ltz v2, :cond_37

    .line 464
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 463
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 466
    .end local v2    # "i":I
    :cond_37
    return-void
.end method

.method private removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;",
            ">;I)V"
        }
    .end annotation

    .line 557
    .local p1, "criteria":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 558
    return-void

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 561
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 562
    .local v0, "uninstalledAppStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;>;"
    if-nez v0, :cond_10

    .line 563
    return-void

    .line 565
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 566
    .local v1, "appCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_42

    .line 567
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 568
    .local v3, "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 569
    goto :goto_3f

    .line 571
    :cond_25
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 572
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 573
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 574
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_3e

    .line 575
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 577
    :cond_3e
    return-void

    .line 566
    .end local v3    # "uninstalledAppState":Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;
    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 580
    .end local v2    # "i":I
    :cond_42
    return-void
.end method

.method private writeInstantApplicationIconLPw(Landroid/content/pm/PackageParser$Package;I)V
    .registers 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 506
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 507
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    .line 508
    return-void

    .line 511
    :cond_d
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 514
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_27

    .line 515
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_49

    .line 517
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_27
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 518
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 517
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 519
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 520
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 521
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 524
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :goto_49
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string v5, "icon.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 527
    .local v3, "iconFile":Ljava/io/File;
    :try_start_56
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_6f

    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 528
    :try_start_5c
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_63} :catch_69
    .catchall {:try_start_5c .. :try_end_63} :catchall_67

    .line 529
    :try_start_63
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_6f

    .line 531
    .end local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_77

    .line 529
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_67
    move-exception v6

    goto :goto_6b

    .line 527
    :catch_69
    move-exception v5

    :try_start_6a
    throw v5
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_67

    .line 529
    :goto_6b
    :try_start_6b
    invoke-static {v5, v4}, Lcom/android/server/pm/InstantAppRegistry;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6f} :catch_6f

    .end local v4    # "out":Ljava/io/FileOutputStream;
    :catch_6f
    move-exception v4

    .line 530
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "InstantAppRegistry"

    const-string v6, "Error writing instant app icon"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method private writeUninstalledInstantAppMetadata(Landroid/content/pm/InstantAppInfo;I)V
    .registers 16
    .param p1, "instantApp"    # Landroid/content/pm/InstantAppInfo;
    .param p2, "userId"    # I

    .line 1083
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1084
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1085
    return-void

    .line 1088
    :cond_15
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1090
    .local v1, "metadataFile":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1091
    .local v2, "destination":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    move-object v4, v3

    .line 1093
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_24
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 1095
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 1096
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1097
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1099
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1101
    const-string/jumbo v6, "package"

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    const-string/jumbo v6, "label"

    iget-object v8, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 1103
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1102
    invoke-virtual {p1, v8}, Landroid/content/pm/InstantAppInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1103
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1102
    invoke-interface {v5, v3, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    const-string/jumbo v6, "permissions"

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getRequestedPermissions()[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x0

    :goto_6b
    if-ge v9, v8, :cond_97

    aget-object v10, v6, v9

    .line 1107
    .local v10, "permission":Ljava/lang/String;
    const-string/jumbo v11, "permission"

    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1108
    const-string/jumbo v11, "name"

    invoke-interface {v5, v3, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    invoke-virtual {p1}, Landroid/content/pm/InstantAppInfo;->getGrantedPermissions()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8e

    .line 1110
    const-string v11, "granted"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    :cond_8e
    const-string/jumbo v11, "permission"

    invoke-interface {v5, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1106
    .end local v10    # "permission":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    .line 1114
    :cond_97
    const-string/jumbo v6, "permissions"

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    const-string/jumbo v6, "package"

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1119
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_a9} :catch_ac
    .catchall {:try_start_24 .. :try_end_a9} :catchall_aa

    .line 1119
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_b7

    .line 1124
    :catchall_aa
    move-exception v3

    goto :goto_bc

    .line 1120
    :catch_ac
    move-exception v3

    .line 1121
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_ad
    const-string v5, "InstantAppRegistry"

    const-string v6, "Failed to write instant state, restoring backup"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1122
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_aa

    .line 1124
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_b7
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1125
    nop

    .line 1126
    return-void

    .line 1124
    :goto_bc
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method


# virtual methods
.method public addInstantAppLPw(II)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "instantAppId"    # I

    .line 432
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 433
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    .line 435
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 436
    .local v0, "instantAppList":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_20

    .line 437
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v1

    .line 438
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    :cond_20
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 441
    return-void
.end method

.method public deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 541
    new-instance v0, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;

    invoke-direct {v0, p1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$eaYsiecM_Rq6dliDvliwVtj695o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 545
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 546
    .local v0, "instantAppDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "metadata.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 547
    new-instance v1, Ljava/io/File;

    const-string v2, "icon.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 548
    new-instance v1, Ljava/io/File;

    const-string v2, "android_id"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 549
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 550
    .local v1, "cookie":Ljava/io/File;
    if-eqz v1, :cond_34

    .line 551
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 553
    :cond_34
    return-void
.end method

.method public getInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 219
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "android_id"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v0, "idFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 223
    :try_start_11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v1

    .line 224
    :catch_1a
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "InstantAppRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read instant app android id file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v1    # "e":Ljava/io/IOException;
    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->generateInstantAppAndroidIdLPw(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInstantAppCookieLPw(Ljava/lang/String;I)[B
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 140
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 141
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 142
    return-object v1

    .line 145
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v2, v0, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B

    move-result-object v2

    .line 146
    .local v2, "pendingCookie":[B
    if-eqz v2, :cond_17

    .line 147
    return-object v2

    .line 149
    :cond_17
    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 150
    .local v3, "cookieFile":Ljava/io/File;
    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 152
    :try_start_23
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2b} :catch_2c

    return-object v4

    .line 153
    :catch_2c
    move-exception v4

    .line 154
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "InstantAppRegistry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading cookie file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v4    # "e":Ljava/io/IOException;
    :cond_43
    return-object v1
.end method

.method public getInstantAppIconLPw(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 209
    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "icon.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v0, "iconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 214
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInstantAppsLPr(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstalledInstantApplicationsLPr(I)Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/InstantAppRegistry;->getUninstalledInstantApplicationsLPr(I)Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "uninstalledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppInfo;>;"
    if-eqz v0, :cond_10

    .line 256
    if-eqz v1, :cond_f

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    :cond_f
    return-object v0

    .line 261
    :cond_10
    return-object v1
.end method

.method public grantInstantAccessLPw(ILandroid/content/Intent;II)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "targetAppId"    # I
    .param p4, "instantAppId"    # I

    .line 399
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 400
    return-void

    .line 402
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 403
    .local v0, "instantAppList":Landroid/util/SparseBooleanArray;
    if-eqz v0, :cond_70

    invoke-virtual {v0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_70

    .line 406
    :cond_16
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 407
    return-void

    .line 409
    :cond_1d
    if-eqz p2, :cond_3a

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 411
    .local v1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_3a

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 412
    return-void

    .line 415
    .end local v1    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3a
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-nez v1, :cond_45

    .line 416
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    .line 418
    :cond_45
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 419
    .local v1, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v1, :cond_5a

    .line 420
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 421
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    :cond_5a
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 424
    .local v2, "instantGrantList":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_6b

    .line 425
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v2, v3

    .line 426
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    :cond_6b
    const/4 v3, 0x1

    invoke-virtual {v2, p4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 429
    return-void

    .line 404
    .end local v1    # "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    .end local v2    # "instantGrantList":Landroid/util/SparseBooleanArray;
    :cond_70
    :goto_70
    return-void
.end method

.method hasInstantApplicationMetadataLPr(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 535
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasUninstalledInstantAppStateLPr(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantAppMetadataLPr(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 535
    :goto_10
    return v0
.end method

.method public isInstantAccessGranted(III)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "targetAppId"    # I
    .param p3, "instantAppId"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 384
    return v1

    .line 386
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 387
    .local v0, "targetAppList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    if-nez v0, :cond_11

    .line 388
    return v1

    .line 390
    :cond_11
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 391
    .local v2, "instantGrantList":Landroid/util/SparseBooleanArray;
    if-nez v2, :cond_1a

    .line 392
    return v1

    .line 394
    :cond_1a
    invoke-virtual {v2, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    return v1
.end method

.method public onPackageInstalledLPw(Landroid/content/pm/PackageParser$Package;[I)V
    .registers 20
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 265
    move-object/from16 v2, p2

    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 266
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_d

    .line 267
    return-void

    .line 270
    :cond_d
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_10
    if-ge v6, v4, :cond_c6

    aget v7, v2, v6

    .line 272
    .local v7, "userId":I
    iget-object v8, v0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c2

    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v8

    if-nez v8, :cond_28

    .line 273
    goto/16 :goto_c2

    .line 277
    :cond_28
    invoke-direct {v0, v1, v7}, Lcom/android/server/pm/InstantAppRegistry;->propagateInstantAppPermissionsIfNeeded(Landroid/content/pm/PackageParser$Package;I)V

    .line 280
    invoke-virtual {v3, v7}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 281
    iget v8, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/pm/InstantAppRegistry;->addInstantAppLPw(II)V

    .line 285
    :cond_36
    new-instance v8, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;

    invoke-direct {v8, v1}, Lcom/android/server/pm/-$$Lambda$InstantAppRegistry$o-Qxi7Gaam-yhhMK-IMWv499oME;-><init>(Landroid/content/pm/PackageParser$Package;)V

    invoke-direct {v0, v8, v7}, Lcom/android/server/pm/InstantAppRegistry;->removeUninstalledInstantAppStateLPw(Ljava/util/function/Predicate;I)V

    .line 290
    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 291
    .local v8, "instantAppDir":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "metadata.xml"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 292
    new-instance v9, Ljava/io/File;

    const-string v10, "icon.png"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 295
    iget-object v9, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v9, v7}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 296
    .local v9, "currentCookieFile":Ljava/io/File;
    if-nez v9, :cond_62

    .line 297
    goto :goto_c2

    .line 300
    :cond_62
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 301
    .local v10, "cookieName":Ljava/lang/String;
    const-string v11, "cookie_"

    .line 302
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 303
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const-string v13, ".dat"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    .line 302
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "currentCookieSha256":Ljava/lang/String;
    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v13, 0x1

    invoke-virtual {v12, v11, v13}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_85

    .line 312
    return-void

    .line 317
    :cond_85
    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v12, v12, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 318
    invoke-static {v12}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v12

    .line 319
    .local v12, "signaturesSha256Digests":[Ljava/lang/String;
    array-length v13, v12

    move v14, v5

    :goto_8f
    if-ge v14, v13, :cond_9d

    aget-object v15, v12, v14

    .line 320
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9a

    .line 321
    return-void

    .line 319
    .end local v15    # "s":Ljava/lang/String;
    :cond_9a
    add-int/lit8 v14, v14, 0x1

    goto :goto_8f

    .line 326
    :cond_9d
    const-string v13, "InstantAppRegistry"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Signature for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " changed - dropping cookie"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v13, v0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v13, v1, v7}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 330
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 270
    .end local v7    # "userId":I
    .end local v8    # "instantAppDir":Ljava/io/File;
    .end local v9    # "currentCookieFile":Ljava/io/File;
    .end local v10    # "cookieName":Ljava/lang/String;
    .end local v11    # "currentCookieSha256":Ljava/lang/String;
    .end local v12    # "signaturesSha256Digests":[Ljava/lang/String;
    :cond_c2
    :goto_c2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_10

    .line 332
    :cond_c6
    return-void
.end method

.method public onPackageUninstalledLPw(Landroid/content/pm/PackageParser$Package;[I)V
    .registers 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I

    .line 336
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 337
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_7

    .line 338
    return-void

    .line 341
    :cond_7
    array-length v1, p2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_45

    aget v3, p2, v2

    .line 342
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 343
    goto :goto_42

    .line 346
    :cond_20
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 348
    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/InstantAppRegistry;->addUninstalledInstantAppLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 349
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeInstantAppLPw(II)V

    goto :goto_42

    .line 352
    :cond_2f
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 353
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 354
    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->removeAppLPw(II)V

    .line 341
    .end local v3    # "userId":I
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 357
    :cond_45
    return-void
.end method

.method public onUserRemovedLPw(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 361
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    .line 363
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Landroid/util/SparseArray;

    .line 366
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    if-eqz v0, :cond_27

    .line 367
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 368
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_27

    .line 369
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstalledInstantAppUids:Landroid/util/SparseArray;

    .line 372
    :cond_27
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    if-eqz v0, :cond_3a

    .line 373
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_3a

    .line 375
    iput-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mInstantGrants:Landroid/util/SparseArray;

    .line 378
    :cond_3a
    invoke-static {p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationsDir(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/InstantAppRegistry;->deleteDir(Ljava/io/File;)V

    .line 379
    return-void
.end method

.method pruneInstalledInstantApps(JJ)Z
    .registers 12
    .param p1, "neededSpace"    # J
    .param p3, "maxInstalledCacheDuration"    # J

    .line 630
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    :try_start_8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 631
    :catch_d
    move-exception v0

    .line 632
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    const-string v2, "Error pruning installed instant apps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    const/4 v1, 0x0

    return v1
.end method

.method pruneInstantApps()V
    .registers 12

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 611
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "installed_instant_app_max_cache_period"

    .line 610
    const-wide v2, 0x39ef8b000L

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 615
    .local v0, "maxInstalledCacheDuration":J
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 616
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "uninstalled_instant_app_max_cache_period"

    .line 615
    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 621
    .local v9, "maxUninstalledCacheDuration":J
    const-wide v5, 0x7fffffffffffffffL

    move-object v4, p0

    move-wide v7, v0

    :try_start_29
    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 625
    goto :goto_35

    .line 623
    :catch_2d
    move-exception v2

    .line 624
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "InstantAppRegistry"

    const-string v4, "Error pruning installed and uninstalled instant apps"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v2    # "e":Ljava/io/IOException;
    :goto_35
    return-void
.end method

.method pruneUninstalledInstantApps(JJ)Z
    .registers 12
    .param p1, "neededSpace"    # J
    .param p3, "maxUninstalledCacheDuration"    # J

    .line 639
    const-wide v3, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    :try_start_8
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps(JJJ)Z

    move-result v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d

    return v0

    .line 640
    :catch_d
    move-exception v0

    .line 641
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstantAppRegistry"

    const-string v2, "Error pruning uninstalled instant apps"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    const/4 v1, 0x0

    return v1
.end method

.method public setInstantAppCookieLPw(Ljava/lang/String;[BI)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cookie"    # [B
    .param p3, "userId"    # I

    .line 162
    const/4 v0, 0x0

    if-eqz p2, :cond_3d

    array-length v1, p2

    if-lez v1, :cond_3d

    .line 163
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    move-result v1

    .line 165
    .local v1, "maxCookieSize":I
    array-length v2, p2

    if-le v2, v1, :cond_3d

    .line 166
    const-string v2, "InstantAppRegistry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Instant app cookie for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes while max size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v0

    .line 173
    .end local v1    # "maxCookieSize":I
    :cond_3d
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 174
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v1, :cond_4a

    .line 175
    return v0

    .line 178
    :cond_4a
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    invoke-virtual {v0, p3, v1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V

    .line 179
    const/4 v0, 0x1

    return v0
.end method
