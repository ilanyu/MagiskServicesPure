.class public Lcom/miui/server/enterprise/ApplicationManagerService;
.super Lcom/miui/enterprise/IApplicationManager$Stub;
.source "ApplicationManagerService.java"


# static fields
.field private static final ACTION_APP_RUNNING_BLOCK:Ljava/lang/String; = "com.miui.securitycore.APP_RUNNING_BLOCK"

.field private static final PACKAGE_SECURITY_CORE:Ljava/lang/String; = "com.miui.securitycore"

.field private static final TAG:Ljava/lang/String; = "Enterprise-App"


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private mDisAllowRunningHandleIntent:Landroid/content/Intent;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/miui/enterprise/IApplicationManager$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    .line 55
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 56
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 57
    const-string v0, "ProcessManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    .line 58
    const-string v0, "device_policy"

    .line 59
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 60
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.securitycore.APP_RUNNING_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    const-string v1, "com.miui.securitycore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/enterprise/ApplicationManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/enterprise/ApplicationManagerService;

    .line 40
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private forceCloseTask(Ljava/util/List;I)V
    .registers 12
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 327
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 328
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 329
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v2, 0x0

    .line 330
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v1, :cond_16

    .line 331
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    .line 333
    :cond_16
    if-eqz v2, :cond_4e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_4e

    .line 336
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 337
    .local v4, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {p0, v0, v4}, Lcom/miui/server/enterprise/ApplicationManagerService;->getResolveInfoFromTask(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 338
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_4c

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_4c

    .line 339
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 340
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 341
    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget v8, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    .line 344
    .end local v4    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4c
    goto :goto_23

    .line 345
    :cond_4d
    return-void

    .line 334
    :cond_4e
    :goto_4e
    return-void
.end method

.method private getAccessibilityServiceFromPackage(Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 395
    .local v0, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v1, "accessibilityIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 398
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 399
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_3e

    .line 400
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3e
    goto :goto_1e

    .line 403
    :cond_3f
    return-object v0
.end method

.method private getResolveInfoFromTask(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "recentInfo"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .line 348
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_10

    .line 350
    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 352
    :cond_10
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 354
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method private readEnabeledAccessibilityService()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "enabledServicesSetting":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 410
    const/4 v1, 0x0

    return-object v1

    .line 412
    :cond_10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 413
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 414
    .local v2, "stringSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 416
    :goto_1f
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 417
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "enabledServiceName":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 419
    .local v4, "enabledComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_32

    .line 420
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    .end local v3    # "enabledServiceName":Ljava/lang/String;
    .end local v4    # "enabledComponent":Landroid/content/ComponentName;
    :cond_32
    goto :goto_1f

    .line 423
    :cond_33
    return-object v1
.end method

.method private restoreAppRunningControl(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/server/enterprise/ApplicationManagerService;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1f

    .line 77
    :cond_d
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    .line 78
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Lmiui/security/AppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V

    .line 79
    return-void

    .line 74
    :cond_1f
    :goto_1f
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public addTrustedAppStore(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 440
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 441
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_trusted_app_stores"

    .line 442
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 443
    return-void
.end method

.method public bootComplete()V
    .registers 3

    .line 67
    const-string v0, "Enterprise-App"

    const-string v1, "ApplicationManagerService init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/ApplicationManagerService;->restoreAppRunningControl(I)V

    .line 69
    return-void
.end method

.method public clearApplicationCache(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 434
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 435
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 436
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 428
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 429
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 430
    return-void
.end method

.method public deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p4, "userId"    # I

    .line 90
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 91
    const-string v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 93
    return-void
.end method

.method public enableAccessibilityService(Landroid/content/ComponentName;Z)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 365
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 366
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/ApplicationManagerService;->getAccessibilityServiceFromPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 367
    .local v0, "services":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Lcom/miui/server/enterprise/ApplicationManagerService;->readEnabeledAccessibilityService()Ljava/util/Set;

    move-result-object v1

    .line 368
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    if-nez v1, :cond_19

    .line 369
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 371
    :cond_19
    if-eqz p2, :cond_1f

    .line 372
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    .line 374
    :cond_1f
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 377
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    .local v2, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 379
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    goto :goto_2b

    .line 382
    :cond_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 383
    .local v3, "enabledServicesBuilderLength":I
    if-lez v3, :cond_4f

    .line 384
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 386
    :cond_4f
    iget-object v4, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 389
    iget-object v4, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    .line 390
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    .line 389
    xor-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    return-void
.end method

.method public enableNotifications(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 476
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 477
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 478
    return-void
.end method

.method public enableTrustedAppStore(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 454
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 455
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_trusted_app_store_enabled"

    .line 456
    nop

    .line 455
    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 457
    return-void
.end method

.method public getApplicationBlackList(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 262
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "savedStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getApplicationRestriction(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 291
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 292
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getApplicationSettings(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 220
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 221
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getApplicationWhiteList(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "savedStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDisallowedRunningAppList(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 322
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_disallow_running_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedAppStore(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 448
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_trusted_app_stores"

    .line 449
    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXSpaceBlack()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 510
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_black_xsapce"

    invoke-static {v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "savedStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 517
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 518
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 519
    return-void
.end method

.method public installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "userId"    # I

    .line 83
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 84
    const-string v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string v7, "Enterprise"

    move-object v4, p1

    move-object v5, p3

    move v6, p2

    move v8, p4

    invoke-static/range {v2 .. v8}, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy;->installPackageAsUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    .line 86
    return-void
.end method

.method public installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "userId"    # I

    .line 97
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 98
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Lcom/miui/server/enterprise/ApplicationManagerService$1;

    invoke-direct {v4, p0, p3, p2}, Lcom/miui/server/enterprise/ApplicationManagerService$1;-><init>(Lcom/miui/server/enterprise/ApplicationManagerService;ILandroid/app/PendingIntent;)V

    const-string v6, "Enterprise"

    const/4 v5, 0x2

    move-object v3, p1

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy;->installPackageAsUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    .line 141
    return-void
.end method

.method public isTrustedAppStoreEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 461
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 462
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_trusted_app_store_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1
.end method

.method public killProcess(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 359
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 360
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 361
    return-void
.end method

.method public removeDeviceAdmin(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 240
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 242
    :try_start_5
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 243
    const-string v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove device admin["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_27

    .line 244
    const/4 v0, 0x1

    return v0

    .line 245
    :catch_27
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove device admin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/4 v1, 0x0

    return v1
.end method

.method public setApplicationBlackList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 253
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_black_list"

    .line 256
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    return-void
.end method

.method public setApplicationEnabled(Ljava/lang/String;ZI)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 468
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 469
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 470
    if-eqz p2, :cond_c

    const/4 v0, 0x0

    .line 471
    :goto_a
    move v3, v0

    goto :goto_e

    :cond_c
    const/4 v0, 0x2

    goto :goto_a

    :goto_e
    const/4 v4, 0x0

    const-string v6, "Enterprise"

    .line 469
    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 472
    return-void
.end method

.method public setApplicationRestriction(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 285
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 286
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 287
    return-void
.end method

.method public setApplicationSettings(Ljava/lang/String;II)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 145
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_169

    if-gez p2, :cond_f

    goto/16 :goto_169

    .line 150
    :cond_f
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 152
    and-int/lit8 v0, p2, 0x8

    const/4 v1, 0x3

    const-wide/16 v2, 0x4000

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_67

    .line 153
    const-string v0, "Enterprise-App"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " auto start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "extras":Landroid/os/Bundle;
    const-string v7, "extra_permission"

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 156
    const-string v2, "extra_action"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v2, "extra_package"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.lbe.security.miui.permmgr"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "6"

    invoke-virtual {v2, v3, v7, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 160
    .end local v0    # "extras":Landroid/os/Bundle;
    goto :goto_90

    .line 161
    :cond_67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .restart local v0    # "extras":Landroid/os/Bundle;
    const-string v7, "extra_permission"

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    const-string v2, "extra_action"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v2, "extra_package"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.lbe.security.miui.permmgr"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "6"

    invoke-virtual {v2, v3, v7, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 169
    .end local v0    # "extras":Landroid/os/Bundle;
    :goto_90
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string/jumbo v3, "package"

    .line 170
    invoke-static {v3, p1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v2, "com.lbe.security.miui"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 175
    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, v6, p3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 176
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_c3

    move v3, v5

    goto :goto_c4

    :cond_c3
    move v3, v6

    .line 178
    .local v3, "shouldGrantPermission":Z
    :goto_c4
    if-eqz v2, :cond_dc

    .line 179
    if-eqz v3, :cond_ca

    move v1, v6

    nop

    .line 180
    .local v1, "opsMode":I
    :cond_ca
    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v8, 0x2b

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8, v9, p1, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 182
    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v8, 0x2726

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8, v9, p1, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 186
    .end local v1    # "opsMode":I
    :cond_dc
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "userId"

    invoke-virtual {v1, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string/jumbo v7, "pkgName"

    invoke-virtual {v1, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v7, "bgControl"

    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_f7

    const-string/jumbo v8, "noRestrict"

    goto :goto_fa

    :cond_f7
    const-string/jumbo v8, "miuiAuto"

    :goto_fa
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :try_start_fd
    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://com.miui.powerkeeper.configure"

    .line 192
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "userTable"

    .line 191
    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string/jumbo v9, "userTableupdate"

    invoke-virtual {v7, v8, v9, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_116
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fd .. :try_end_116} :catch_117

    .line 197
    goto :goto_12e

    .line 195
    :catch_117
    move-exception v4

    .line 196
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Enterprise-App"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to process powerkeeper config for pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_12e
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_133

    goto :goto_134

    :cond_133
    move v5, v6

    :goto_134
    invoke-static {p1, p3, v5}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    .line 199
    iget-object v4, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v4

    .line 200
    .local v4, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 201
    .local v7, "modified":Z
    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_153

    .line 202
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15d

    .line 203
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v7, 0x1

    goto :goto_15d

    .line 207
    :cond_153
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15d

    .line 208
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    const/4 v7, 0x1

    .line 212
    :cond_15d
    :goto_15d
    if-eqz v7, :cond_168

    .line 213
    iget-object v8, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v8

    invoke-virtual {v8, v5, v4, v6}, Lcom/android/server/am/ProcessPolicy;->addWhiteList(ILjava/util/List;Z)V

    .line 216
    :cond_168
    return-void

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "shouldGrantPermission":Z
    .end local v4    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "modified":Z
    :cond_169
    :goto_169
    const-string v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalidate param packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public setApplicationWhiteList(Ljava/util/List;I)V
    .registers 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 269
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 270
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_white_list"

    .line 272
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    return-void
.end method

.method public setDeviceAdmin(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 227
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 229
    :try_start_5
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 230
    const-string v0, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add device admin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_26} :catch_27

    .line 231
    return v1

    .line 232
    :catch_27
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Add device admin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const/4 v1, 0x0

    return v1
.end method

.method public setDisallowedRunningAppList(Ljava/util/List;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 298
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v1

    .line 301
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/ApplicationManagerService;->forceCloseTask(Ljava/util/List;I)V

    .line 302
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 305
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_19

    .line 306
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_42

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 309
    :cond_42
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "ep_app_disallow_running_list"

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-static {v1, v3, v4, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 312
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    goto :goto_6c

    .line 314
    :cond_5c
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v3}, Lmiui/security/AppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V

    .line 315
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    .line 317
    :goto_6c
    return-void
.end method

.method public setNotificaitonFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "allow"    # Z

    .line 482
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 483
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 484
    const-string v0, "float"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 485
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_32

    .line 487
    :cond_19
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_32

    .line 490
    :cond_1f
    const-string v0, "float"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 491
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p4}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_32

    .line 493
    :cond_2d
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lmiui/util/NotificationFilterHelper;->setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 496
    :goto_32
    return-void
.end method

.method public setXSpaceBlack(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 500
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 501
    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_app_black_xsapce"

    .line 503
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void
.end method
