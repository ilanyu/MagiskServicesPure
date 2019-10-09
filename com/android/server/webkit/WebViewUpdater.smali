.class Lcom/android/server/webkit/WebViewUpdater;
.super Ljava/lang/Object;
.source "WebViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;,
        Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VALIDITY_INCORRECT_SDK_VERSION:I = 0x1

.field private static final VALIDITY_INCORRECT_SIGNATURE:I = 0x3

.field private static final VALIDITY_INCORRECT_VERSION_CODE:I = 0x2

.field private static final VALIDITY_NO_LIBRARY_FLAG:I = 0x4

.field private static final VALIDITY_OK:I = 0x0

.field private static final WAIT_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private NUMBER_OF_RELROS_UNKNOWN:I

.field private mAnyWebViewInstalled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

.field private final mLock:Ljava/lang/Object;

.field private mMinimumVersionCode:J

.field private mNumRelroCreationsFinished:I

.field private mNumRelroCreationsStarted:I

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewPackageDirty:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 61
    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 63
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 66
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 76
    return-void
.end method

.method private checkIfRelrosDoneLocked()V
    .registers 3

    .line 405
    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_1f

    .line 406
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-eqz v0, :cond_1a

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 411
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 412
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_14
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_d .. :try_end_14} :catch_15

    .end local v0    # "newPackage":Landroid/content/pm/PackageInfo;
    goto :goto_19

    .line 413
    :catch_15
    move-exception v0

    .line 414
    .local v0, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 419
    .end local v0    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_19
    goto :goto_1f

    .line 421
    :cond_1a
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 424
    :cond_1f
    :goto_1f
    return-void
.end method

.method private dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;

    move-object/from16 v0, p0

    .line 563
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v2

    .line 564
    .local v2, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    const-string v3, "  WebView packages:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_12
    if-ge v5, v3, :cond_a9

    aget-object v6, v2, v5

    .line 566
    .local v6, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v7, v0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v8, v0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 567
    invoke-interface {v7, v8, v6}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v7

    .line 568
    .local v7, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    nop

    .line 569
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/webkit/UserPackage;

    invoke-virtual {v8}, Landroid/webkit/UserPackage;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 570
    .local v8, "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    const/4 v9, 0x1

    if-nez v8, :cond_3c

    .line 571
    const-string v10, "    %s is NOT installed."

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    aput-object v11, v9, v4

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    goto :goto_a5

    .line 575
    :cond_3c
    invoke-direct {v0, v6, v8}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v10

    .line 576
    .local v10, "validity":I
    const-string/jumbo v11, "versionName: %s, versionCode: %d, targetSdkVersion: %d"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Object;

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v14, v13, v4

    .line 579
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v9

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 580
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 576
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 581
    .local v11, "packageDetails":Ljava/lang/String;
    if-nez v10, :cond_8d

    .line 582
    iget-object v13, v0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v14, v0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    .line 583
    invoke-interface {v13, v14, v6}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v13

    .line 582
    invoke-static {v13}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v13

    .line 584
    .local v13, "installedForAllUsers":Z
    const-string v14, "    Valid package %s (%s) is %s installed/enabled for all users"

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v15, v12, v4

    aput-object v11, v12, v9

    .line 588
    if-eqz v13, :cond_80

    const-string v9, ""

    goto :goto_82

    :cond_80
    const-string v9, "NOT"

    :goto_82
    const/4 v15, 0x2

    aput-object v9, v12, v15

    .line 584
    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 589
    .end local v13    # "installedForAllUsers":Z
    goto :goto_a5

    .line 590
    :cond_8d
    const-string v13, "    Invalid package %s (%s), reason: %s"

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v14, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v14, v12, v4

    aput-object v11, v12, v9

    .line 593
    invoke-static {v10}, Lcom/android/server/webkit/WebViewUpdater;->getInvalidityReason(I)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x2

    aput-object v9, v12, v14

    .line 590
    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    .end local v6    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v7    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    .end local v8    # "systemUserPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "validity":I
    .end local v11    # "packageDetails":Ljava/lang/String;
    :goto_a5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_12

    .line 596
    :cond_a9
    return-void
.end method

.method private findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 287
    .local v0, "providers":[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->getUserChosenWebViewProvider(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "userChosenProvider":Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_33

    aget-object v5, v0, v4

    .line 292
    .local v5, "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-object v6, v6, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 294
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 295
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 297
    .local v6, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 298
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 291
    .end local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .end local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 306
    :cond_33
    array-length v2, v0

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_55

    aget-object v5, v0, v4

    .line 307
    .restart local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    iget-object v6, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    iget-boolean v6, v6, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v6, :cond_52

    .line 309
    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v8, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 310
    invoke-interface {v6, v7, v8}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProviderAllUsers(Landroid/content/Context;Landroid/webkit/WebViewProviderInfo;)Ljava/util/List;

    move-result-object v6

    .line 312
    .restart local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-static {v6}, Lcom/android/server/webkit/WebViewUpdater;->isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 313
    iget-object v2, v5, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v2

    .line 306
    .end local v5    # "providerAndPackage":Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .end local v6    # "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 319
    :cond_55
    iput-boolean v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 320
    new-instance v2, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;

    const-string v3, "Could not find a loadable WebView package"

    invoke-direct {v2, v3}, Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getInvalidityReason(I)Ljava/lang/String;
    .registers 2
    .param p0, "invalidityReason"    # I

    .line 599
    packed-switch p0, :pswitch_data_12

    .line 609
    const-string v0, "Unexcepted validity-reason"

    return-object v0

    .line 607
    :pswitch_6
    const-string v0, "No WebView-library manifest flag"

    return-object v0

    .line 605
    :pswitch_9
    const-string v0, "Incorrect signature"

    return-object v0

    .line 603
    :pswitch_c
    const-string v0, "Version code too low"

    return-object v0

    .line 601
    :pswitch_f
    const-string v0, "SDK version too low"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private getMinimumVersionCode()J
    .registers 12

    .line 487
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 488
    iget-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    return-wide v0

    .line 491
    :cond_b
    const-wide/16 v0, -0x1

    .line 492
    .local v0, "minimumVersionCode":J
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v4}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v5, :cond_37

    aget-object v7, v4, v6

    .line 493
    .local v7, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->availableByDefault:Z

    if-eqz v8, :cond_34

    iget-boolean v8, v7, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-nez v8, :cond_34

    .line 495
    :try_start_21
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v9, v7, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 496
    invoke-interface {v8, v9}, Lcom/android/server/webkit/SystemInterface;->getFactoryPackageVersion(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_29} :catch_33

    .line 497
    .local v8, "versionCode":J
    cmp-long v10, v0, v2

    if-ltz v10, :cond_31

    cmp-long v10, v8, v0

    if-gez v10, :cond_32

    .line 498
    :cond_31
    move-wide v0, v8

    .line 502
    .end local v8    # "versionCode":J
    :cond_32
    goto :goto_34

    .line 500
    :catch_33
    move-exception v8

    .line 492
    .end local v7    # "provider":Landroid/webkit/WebViewProviderInfo;
    :cond_34
    :goto_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 506
    :cond_37
    iput-wide v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 507
    iget-wide v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    return-wide v2
.end method

.method private getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    .registers 7

    .line 262
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    .line 263
    .local v0, "allProviders":[Landroid/webkit/WebViewProviderInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 266
    :try_start_f
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    aget-object v4, v0, v2

    .line 267
    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->getPackageInfoForProvider(Landroid/webkit/WebViewProviderInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 268
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lcom/android/server/webkit/WebViewUpdater;->isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 269
    new-instance v4, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, v3}, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;-><init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_29} :catch_2a

    .line 273
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_29
    goto :goto_2b

    .line 271
    :catch_2a
    move-exception v3

    .line 264
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 275
    .end local v2    # "n":I
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    return-object v2
.end method

.method static isInstalledAndEnabledForAllUsers(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;)Z"
        }
    .end annotation

    .line 330
    .local p0, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UserPackage;

    .line 332
    .local v1, "userPackage":Landroid/webkit/UserPackage;
    invoke-static {v1}, Lcom/android/server/webkit/WebViewUpdaterInjector;->isInstalledAndEnabledForUser(Landroid/webkit/UserPackage;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 333
    goto :goto_4

    .line 336
    :cond_17
    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_25

    .line 339
    .end local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_24
    goto :goto_4

    .line 337
    .restart local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0

    .line 340
    .end local v1    # "userPackage":Landroid/webkit/UserPackage;
    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    .registers 6
    .param p1, "newPackage"    # Landroid/content/pm/PackageInfo;

    .line 217
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 219
    iget v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v2, v3, :cond_21

    .line 220
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 225
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->NUMBER_OF_RELROS_UNKNOWN:I

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 226
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 227
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 228
    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 231
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    goto :goto_23

    .line 233
    :cond_21
    iput-boolean v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    .line 235
    :goto_23
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private static providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z
    .registers 10
    .param p0, "provider"    # Landroid/webkit/WebViewProviderInfo;
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "systemInterface"    # Lcom/android/server/webkit/SystemInterface;

    .line 512
    invoke-interface {p2}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 513
    return v1

    .line 517
    :cond_8
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-nez v0, :cond_12

    goto :goto_30

    .line 520
    :cond_12
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_19

    return v2

    .line 523
    :cond_19
    iget-object v0, p0, Landroid/webkit/WebViewProviderInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    move v4, v2

    :goto_1d
    if-ge v4, v3, :cond_2f

    aget-object v5, v0, v4

    .line 524
    .local v5, "signature":Landroid/content/pm/Signature;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    return v1

    .line 523
    .end local v5    # "signature":Landroid/content/pm/Signature;
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 526
    :cond_2f
    return v2

    .line 518
    :cond_30
    :goto_30
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    return v0
.end method

.method private validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I
    .registers 7
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 435
    invoke-static {p2}, Landroid/webkit/UserPackage;->hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 436
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_8
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getMinimumVersionCode()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/webkit/WebViewUpdater;->versionCodeGE(JJ)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    .line 439
    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->systemIsDebuggable()Z

    move-result v0

    if-nez v0, :cond_20

    .line 442
    const/4 v0, 0x2

    return v0

    .line 444
    :cond_20
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-static {p1, p2, v0}, Lcom/android/server/webkit/WebViewUpdater;->providerHasValidSignature(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;Lcom/android/server/webkit/SystemInterface;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 445
    const/4 v0, 0x3

    return v0

    .line 447
    :cond_2a
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 448
    const/4 v0, 0x4

    return v0

    .line 450
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method private static versionCodeGE(JJ)Z
    .registers 9
    .param p0, "versionCode1"    # J
    .param p2, "versionCode2"    # J

    .line 470
    const-wide/32 v0, 0x186a0

    div-long v2, p0, v0

    .line 471
    .local v2, "v1":J
    div-long v0, p2, v0

    .line 473
    .local v0, "v2":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    return v4
.end method

.method private webViewIsReadyLocked()Z
    .registers 3

    .line 396
    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "newProviderName"    # Ljava/lang/String;

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 166
    .local v0, "newPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_9

    const-string v1, ""

    return-object v1

    .line 167
    :cond_9
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v1
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 530
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_10

    .line 532
    const-string v1, "  Current WebView package is null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 534
    :cond_10
    const-string v1, "  Current WebView package (name, version): (%s, %s)"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    :goto_27
    const-string v1, "  Minimum WebView version code: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mMinimumVersionCode:J

    .line 539
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 538
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    const-string v1, "  Number of relros started: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    .line 541
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 540
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    const-string v1, "  Number of relros finished: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 543
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 542
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    const-string v1, "  WebView package dirty: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    const-string v1, "  Any WebView package installed: %b"

    new-array v5, v3, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    .line 546
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 545
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_af

    .line 549
    :try_start_86
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 550
    .local v1, "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "  Preferred WebView package (name, version): (%s, %s)"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v6, v2, v4

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9d
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_86 .. :try_end_9d} :catch_9e
    .catchall {:try_start_86 .. :try_end_9d} :catchall_af

    .line 556
    .end local v1    # "preferredWebViewPackage":Landroid/content/pm/PackageInfo;
    goto :goto_aa

    .line 554
    :catch_9e
    move-exception v1

    .line 555
    .local v1, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :try_start_9f
    const-string v2, "  Preferred WebView package: none"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    .end local v1    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_aa
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpAllPackageInformationLocked(Ljava/io/PrintWriter;)V

    .line 559
    monitor-exit v0

    .line 560
    return-void

    .line 559
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_9f .. :try_end_b1} :catchall_af

    throw v1
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    monitor-exit v0

    return-object v1

    .line 388
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .registers 5

    .line 242
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackagesAndInfos()[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;

    move-result-object v0

    .line 243
    .local v0, "providersAndPackageInfos":[Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
    array-length v1, v0

    new-array v1, v1, [Landroid/webkit/WebViewProviderInfo;

    .line 245
    .local v1, "providers":[Landroid/webkit/WebViewProviderInfo;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_14

    .line 246
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    aput-object v3, v1, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 248
    .end local v2    # "n":I
    :cond_14
    return-object v1
.end method

.method isValidProvider(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p1, "configInfo"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->validityResult(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method notifyRelroCreationCompleted()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_3
    iget v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    .line 346
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->checkIfRelrosDoneLocked()V

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method packageStateChanged(Ljava/lang/String;I)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "changedState"    # I

    .line 79
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_a0

    aget-object v4, v0, v3

    .line 80
    .local v4, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v5, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 82
    .local v5, "webviewPackage":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "updateWebView":Z
    const/4 v1, 0x0

    .line 85
    .local v1, "removedOrChangedOldPackage":Z
    const/4 v3, 0x0

    .line 86
    .local v3, "oldProviderName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, "newPackage":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 89
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v8

    move-object v6, v8

    .line 90
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_4a

    .line 91
    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v8

    .line 92
    if-nez p2, :cond_36

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 93
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_32
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_1c .. :try_end_32} :catch_73
    .catchall {:try_start_1c .. :try_end_32} :catchall_71

    if-eqz v8, :cond_36

    .line 97
    :try_start_34
    monitor-exit v7
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_71

    return-void

    .line 99
    :cond_36
    :try_start_36
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    iget-wide v8, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-wide v10, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_44
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_36 .. :try_end_44} :catch_73
    .catchall {:try_start_36 .. :try_end_44} :catchall_71

    cmp-long v8, v8, v10

    if-nez v8, :cond_4a

    .line 103
    :try_start_48
    monitor-exit v7
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_71

    return-void

    .line 109
    :cond_4a
    :try_start_4a
    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    iget-object v8, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 111
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_62

    iget-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    if-nez v8, :cond_61

    goto :goto_62

    :cond_61
    goto :goto_63

    :cond_62
    :goto_62
    const/4 v2, 0x1

    :goto_63
    move v0, v2

    .line 115
    iget-object v2, v4, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v1, v2

    .line 117
    if-eqz v0, :cond_70

    .line 118
    invoke-direct {p0, v6}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V
    :try_end_70
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_4a .. :try_end_70} :catch_73
    .catchall {:try_start_4a .. :try_end_70} :catchall_71

    .line 124
    :cond_70
    goto :goto_8d

    .line 125
    :catchall_71
    move-exception v2

    goto :goto_9a

    .line 120
    :catch_73
    move-exception v2

    .line 121
    .local v2, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v8, 0x0

    :try_start_75
    iput-object v8, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 122
    sget-object v8, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find valid WebView package to create relro with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v2    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :goto_8d
    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_75 .. :try_end_8e} :catchall_71

    .line 126
    if-eqz v0, :cond_99

    if-nez v1, :cond_99

    if-eqz v3, :cond_99

    .line 132
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2, v3}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 134
    :cond_99
    return-void

    .line 125
    :goto_9a
    :try_start_9a
    monitor-exit v7
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_71

    throw v2

    .line 79
    .end local v0    # "updateWebView":Z
    .end local v1    # "removedOrChangedOldPackage":Z
    .end local v3    # "oldProviderName":Ljava/lang/String;
    .end local v4    # "provider":Landroid/webkit/WebViewProviderInfo;
    .end local v5    # "webviewPackage":Ljava/lang/String;
    .end local v6    # "newPackage":Landroid/content/pm/PackageInfo;
    :cond_9c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 137
    :cond_a0
    return-void
.end method

.method prepareWebViewInSystemServer()V
    .registers 5

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_1e

    .line 142
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 148
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 151
    monitor-exit v0

    .line 155
    goto :goto_26

    .line 151
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 152
    :catch_1e
    move-exception v0

    .line 154
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v2, "error preparing webview provider from system server"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_26
    return-void
.end method

.method updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 11
    .param p1, "newProviderName"    # Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "oldPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 178
    .local v1, "newPackage":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 179
    .local v2, "providerChanged":Z
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 180
    :try_start_6
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v4

    .line 182
    if-eqz p1, :cond_12

    .line 183
    iget-object v4, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p1}, Lcom/android/server/webkit/SystemInterface;->updateUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_57

    .line 187
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->findPreferredWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v1, v4

    .line 188
    if-eqz v0, :cond_26

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 189
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_21
    .catch Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException; {:try_start_12 .. :try_end_21} :catch_3b
    .catchall {:try_start_12 .. :try_end_21} :catchall_57

    if-nez v4, :cond_24

    goto :goto_26

    :cond_24
    const/4 v4, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v4, 0x1

    :goto_27
    move v2, v4

    .line 196
    nop

    .line 198
    if-eqz v2, :cond_2e

    .line 199
    :try_start_2b
    invoke-direct {p0, v1}, Lcom/android/server/webkit/WebViewUpdater;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)V

    .line 201
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_57

    .line 203
    if-eqz v2, :cond_3a

    if-eqz v0, :cond_3a

    .line 204
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdater;->mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    .line 209
    :cond_3a
    return-object v1

    .line 190
    :catch_3b
    move-exception v4

    .line 193
    .local v4, "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    const/4 v5, 0x0

    :try_start_3d
    iput-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    .line 194
    sget-object v6, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find WebView package to use "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v3

    return-object v5

    .line 201
    .end local v4    # "e":Lcom/android/server/webkit/WebViewUpdater$WebViewPackageMissingException;
    :catchall_57
    move-exception v4

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_57

    throw v4
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .registers 16

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "webViewPackage":Landroid/content/pm/PackageInfo;
    const-wide/32 v1, 0xf4240

    .line 353
    .local v1, "NS_PER_MS":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v3, v7

    .line 354
    .local v3, "timeoutTimeMs":J
    const/4 v7, 0x0

    .line 355
    .local v7, "webViewReady":Z
    const/4 v8, 0x0

    .line 356
    .local v8, "webViewStatus":I
    iget-object v9, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 357
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v10

    move v7, v10

    .line 358
    :goto_19
    if-nez v7, :cond_34

    .line 359
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    div-long/2addr v10, v5
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_7e

    .line 360
    .local v10, "timeNowMs":J
    cmp-long v12, v10, v3

    if-ltz v12, :cond_25

    .end local v10    # "timeNowMs":J
    goto :goto_34

    .line 362
    .restart local v10    # "timeNowMs":J
    :cond_25
    :try_start_25
    iget-object v12, p0, Lcom/android/server/webkit/WebViewUpdater;->mLock:Ljava/lang/Object;

    sub-long v13, v3, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2c} :catch_2d
    .catchall {:try_start_25 .. :try_end_2c} :catchall_7e

    .line 363
    goto :goto_2e

    :catch_2d
    move-exception v12

    .line 364
    :goto_2e
    :try_start_2e
    invoke-direct {p0}, Lcom/android/server/webkit/WebViewUpdater;->webViewIsReadyLocked()Z

    move-result v12

    move v7, v12

    .line 365
    .end local v10    # "timeNowMs":J
    goto :goto_19

    .line 367
    :cond_34
    :goto_34
    iget-object v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mCurrentWebViewPackage:Landroid/content/pm/PackageInfo;

    move-object v0, v5

    .line 368
    if-eqz v7, :cond_3a

    goto :goto_6e

    .line 369
    :cond_3a
    iget-boolean v5, p0, Lcom/android/server/webkit/WebViewUpdater;->mAnyWebViewInstalled:Z

    if-nez v5, :cond_41

    .line 370
    const/4 v5, 0x4

    .line 380
    .end local v8    # "webViewStatus":I
    .local v5, "webViewStatus":I
    move v8, v5

    goto :goto_6e

    .line 374
    .end local v5    # "webViewStatus":I
    .restart local v8    # "webViewStatus":I
    :cond_41
    const/4 v8, 0x3

    .line 375
    sget-object v5, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Timed out waiting for relro creation, relros started "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsStarted:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " relros finished "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mNumRelroCreationsFinished:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " package dirty? "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/server/webkit/WebViewUpdater;->mWebViewPackageDirty:Z

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_6e
    monitor-exit v9
    :try_end_6f
    .catchall {:try_start_2e .. :try_end_6f} :catchall_7e

    .line 381
    if-nez v7, :cond_78

    sget-object v5, Lcom/android/server/webkit/WebViewUpdater;->TAG:Ljava/lang/String;

    const-string v6, "creating relro file timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_78
    new-instance v5, Landroid/webkit/WebViewProviderResponse;

    invoke-direct {v5, v0, v8}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/content/pm/PackageInfo;I)V

    return-object v5

    .line 380
    :catchall_7e
    move-exception v5

    :try_start_7f
    monitor-exit v9
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v5
.end method
