.class public Lcom/miui/server/MiuiInitServer;
.super Lmiui/os/IMiuiInit$Stub;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;,
        Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final CUST_PROPERTIES_FILE_NAME:Ljava/lang/String; = "cust.prop"

.field private static final PREINSTALL_APP_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final TAG:Ljava/lang/String; = "MiuiInitServer"


# instance fields
.field mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

.field private final mContext:Landroid/content/Context;

.field private mDoing:Z

.field mNeedAspectSettings:Z

.field private mPreinstallHistoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstalledChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lmiui/os/IMiuiInit$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/EnableStateManager;->updateApplicationEnableState(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;-><init>(Lcom/miui/server/MiuiInitServer;Lcom/miui/server/MiuiInitServer$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->setMiuisdkProperties()V

    .line 62
    const-string/jumbo v1, "window"

    .line 63
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 65
    .local v1, "windowManager":Landroid/view/IWindowManager;
    :try_start_2d
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_34

    .line 68
    goto :goto_3d

    .line 66
    :catch_34
    move-exception v2

    .line 67
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MiuiInitServer"

    const-string/jumbo v4, "no winowmanager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3d
    iget-boolean v2, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-eqz v2, :cond_47

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v2, :cond_47

    const/4 v2, 0x1

    goto :goto_48

    :cond_47
    const/4 v2, 0x0

    :goto_48
    iput-boolean v2, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    .line 70
    iget-boolean v2, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v2, :cond_52

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_5b

    .line 71
    :cond_52
    new-instance v2, Lcom/miui/server/MiuiCompatModePackages;

    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/miui/server/MiuiCompatModePackages;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    .line 73
    :cond_5b
    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiInitServer;

    .line 39
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/server/MiuiInitServer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/MiuiInitServer;
    .param p1, "x1"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    return p1
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 533
    .local v0, "permission":I
    if-nez v0, :cond_b

    .line 534
    return-void

    .line 535
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public copyPreinstallPAITrackingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_1a

    .line 429
    :cond_16
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallPAITrackingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void

    .line 427
    :cond_1a
    :goto_1a
    return-void
.end method

.method public doFactoryReset(Z)V
    .registers 4
    .param p1, "keepUserApps"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_16

    .line 333
    const-string v0, ""

    invoke-static {v0}, Lmiui/util/CustomizeUtil;->setMiuiCustVariatDir(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    .line 335
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 336
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 339
    .end local v0    # "file":Ljava/io/File;
    :cond_16
    if-nez p1, :cond_28

    .line 340
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 345
    .end local v0    # "file":Ljava/io/File;
    :cond_28
    return-void
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 477
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_7

    .line 478
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    .line 480
    :cond_7
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getAspectRatio(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getCustVariants()[Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "regionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v1

    .line 310
    .local v1, "cust":Ljava/io/File;
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "cs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 312
    .local v3, "resgions":[Ljava/io/File;
    const/4 v4, 0x0

    if-eqz v3, :cond_3b

    .line 313
    array-length v5, v3

    move v6, v4

    :goto_16
    if-ge v6, v5, :cond_3b

    aget-object v7, v3, v6

    .line 314
    .local v7, "region":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_21

    .line 315
    goto :goto_38

    .line 318
    :cond_21
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, "r":Ljava/lang/String;
    array-length v9, v2

    move v10, v4

    :goto_27
    if-ge v10, v9, :cond_38

    aget-object v11, v2, v10

    .line 320
    .local v11, "c":Ljava/lang/String;
    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_35

    .line 321
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    nop

    .line 319
    .end local v11    # "c":Ljava/lang/String;
    :cond_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    .line 313
    .end local v7    # "region":Ljava/io/File;
    .end local v8    # "r":Ljava/lang/String;
    :cond_38
    :goto_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 327
    :cond_3b
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getCutoutMode(Ljava/lang/String;)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 519
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_6

    .line 520
    const/4 v0, 0x0

    return v0

    .line 522
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 524
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v2, p1}, Lcom/miui/server/MiuiCompatModePackages;->getCutoutMode(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 526
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    return v2

    .line 526
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDefaultAspectType(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 484
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_6

    .line 485
    const/4 v0, 0x0

    return v0

    .line 487
    :cond_6
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 365
    const-string v0, ""

    return-object v0

    .line 367
    :cond_9
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiInitServer;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 368
    const-string v0, ""

    return-object v0

    .line 370
    :cond_12
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 371
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPeinstalledChannelList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    .line 373
    :cond_1c
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .local v1, "channel":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 375
    return-object v1

    .line 377
    .end local v1    # "channel":Ljava/lang/String;
    :cond_40
    goto :goto_22

    .line 378
    :cond_41
    const-string v0, ""

    return-object v0
.end method

.method public getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 442
    const-string v0, ""

    return-object v0

    .line 444
    :cond_9
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    if-nez v0, :cond_52

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    .line 447
    :try_start_14
    const-string/jumbo v0, "system_data_packagename_list"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "pkgNameList":[Ljava/lang/String;
    const-string/jumbo v1, "system_data_path_list"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "appPathList":[Ljava/lang/String;
    if-eqz v0, :cond_3a

    if-eqz v1, :cond_3a

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_3a

    .line 450
    const/4 v2, 0x0

    .line 450
    .local v2, "i":I
    :goto_2b
    array-length v3, v0

    if-ge v2, v3, :cond_3a

    .line 451
    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    aget-object v4, v0, v2

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_3b

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 456
    .end local v0    # "pkgNameList":[Ljava/lang/String;
    .end local v1    # "appPathList":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3a
    goto :goto_52

    .line 454
    :catch_3b
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiInitServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurs while get miui preinstall app path + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5d

    const-string v0, ""

    goto :goto_65

    :cond_5d
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_65
    return-object v0
.end method

.method public getNotchConfig(Ljava/lang/String;)I
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 491
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_6

    .line 492
    const/4 v0, 0x0

    return v0

    .line 494
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 496
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v2, p1}, Lcom/miui/server/MiuiCompatModePackages;->getNotchConfig(Ljava/lang/String;)I

    move-result v2
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 498
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    return v2

    .line 498
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPreinstalledAppVersion(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 435
    const/4 v0, -0x1

    return v0

    .line 437
    :cond_8
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .registers 7
    .param p1, "custVariant"    # Ljava/lang/String;
    .param p2, "obs"    # Lmiui/os/IMiuiInitObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "MiuiInitServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check status, cust variant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-enter p0

    .line 283
    :try_start_25
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 284
    const-string v0, "MiuiInitServer"

    const-string/jumbo v2, "skip, initializing cust environment"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    monitor-exit p0

    return v1

    .line 287
    :cond_34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 288
    const-string v0, "MiuiInitServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip, cust variant["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit p0

    return v1

    .line 291
    :cond_58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    .line 292
    const-string v1, "MiuiInitServer"

    const-string v2, "initializing cust environment"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v1, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;-><init>(Lcom/miui/server/MiuiInitServer;Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)V

    invoke-virtual {v1}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->start()V

    .line 294
    monitor-exit p0

    return v0

    .line 295
    :catchall_6c
    move-exception v0

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_25 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method public installPreinstallApp()V
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->installCustApps(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public isPreinstalledPAIPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_8
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->isPreinstalledPAIPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPreinstalledPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 350
    const/4 v0, 0x0

    return v0

    .line 352
    :cond_8
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestrictAspect(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 470
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_e

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 473
    :cond_e
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromPreinstallList(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 388
    return-void

    .line 391
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->removeFromPreinstallList(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public removeFromPreinstallPAIList(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 401
    return-void

    .line 404
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->removeFromPreinstallPAIList(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setCutoutMode(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 511
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_5

    .line 512
    return-void

    .line 514
    :cond_5
    const-string/jumbo v0, "setCutoutMode"

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiInitServer;->checkPermission(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/MiuiCompatModePackages;->setCutoutMode(Ljava/lang/String;I)V

    .line 516
    return-void
.end method

.method public setNotchSpecialMode(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "special"    # Z

    .line 503
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_5

    .line 504
    return-void

    .line 506
    :cond_5
    const-string/jumbo v0, "setNotchSpecialMode"

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiInitServer;->checkPermission(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/MiuiCompatModePackages;->setNotchSpecialMode(Ljava/lang/String;Z)V

    .line 508
    return-void
.end method

.method public setRestrictAspect(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "restrict"    # Z

    .line 462
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_5

    .line 463
    return-void

    .line 465
    :cond_5
    const-string/jumbo v0, "setRestrictAspect"

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiInitServer;->checkPermission(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/MiuiCompatModePackages;->setRestrictAspect(Ljava/lang/String;Z)V

    .line 467
    return-void
.end method

.method public writePreinstallPAIPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 414
    return-void

    .line 417
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPAIPackage(Ljava/lang/String;)V

    .line 418
    return-void
.end method
