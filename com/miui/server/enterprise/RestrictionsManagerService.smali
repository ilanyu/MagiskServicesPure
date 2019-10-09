.class public Lcom/miui/server/enterprise/RestrictionsManagerService;
.super Lcom/miui/enterprise/IRestrictionsManager$Stub;
.source "RestrictionsManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise-restric"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceOwner:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private mHandler:Landroid/os/Handler;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Lcom/miui/enterprise/IRestrictionsManager$Stub;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 87
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 88
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 89
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 91
    :try_start_32
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mDeviceOwner:Landroid/content/ComponentName;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c

    .line 94
    goto :goto_3d

    .line 92
    :catch_3c
    move-exception v0

    .line 95
    :goto_3d
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/enterprise/RestrictionsManagerService;

    .line 52
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeCloudBackup(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "account":Landroid/accounts/Account;
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 367
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v2, "com.xiaomi"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 368
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_18

    .line 369
    aget-object v0, v2, v4

    .line 371
    :cond_18
    if-eqz v0, :cond_72

    .line 372
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "account_name"

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v5, "is_open"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 375
    const-string v4, "content://com.miui.micloud"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 376
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "cloud_backup_info"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 377
    .local v4, "cloudBackupInfoUri":Landroid/net/Uri;
    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 378
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 379
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v5, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.miui.cloudbackup"

    const-string v8, "com.miui.cloudbackup.service.CloudBackupService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 382
    const-string v6, "close_cloud_back_up"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v6, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 385
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v4    # "cloudBackupInfoUri":Landroid/net/Uri;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_72
    return-void
.end method

.method private setUsbFunction(Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V
    .registers 11
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "function"    # Ljava/lang/String;

    .line 389
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-class v2, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v3, "setCurrentFunction"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 390
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 391
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 400
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_4a

    .line 392
    :catch_1c
    move-exception v2

    .line 394
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1d
    const-class v3, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v4, "setCurrentFunction"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 395
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 396
    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_41} :catch_42

    .line 399
    .end local v3    # "method":Ljava/lang/reflect/Method;
    goto :goto_4a

    .line 397
    :catch_42
    move-exception v0

    .line 398
    .local v0, "e1":Ljava/lang/Exception;
    const-string v1, "Enterprise-restric"

    const-string v3, "Failed to set usb function"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v0    # "e1":Ljava/lang/Exception;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4a
    return-void
.end method

.method private shouldClose(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 197
    if-eqz p1, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method private shouldOpen(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 193
    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private startWatchLocationRestriction()V
    .registers 6

    .line 100
    const-string/jumbo v0, "location_providers_allowed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/miui/server/enterprise/RestrictionsManagerService$1;

    iget-object v3, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/miui/server/enterprise/RestrictionsManagerService$1;-><init>(Lcom/miui/server/enterprise/RestrictionsManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 120
    return-void
.end method

.method private unmountPublicVolume(I)V
    .registers 7
    .param p1, "volFlag"    # I

    .line 342
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 343
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    const/4 v1, 0x0

    .line 344
    .local v1, "usbVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 345
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_30

    .line 346
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    iget v4, v4, Landroid/os/storage/DiskInfo;->flags:I

    and-int/2addr v4, p1

    if-ne v4, p1, :cond_30

    .line 347
    move-object v1, v3

    .line 348
    goto :goto_31

    .line 350
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_30
    goto :goto_13

    .line 351
    :cond_31
    :goto_31
    if-eqz v1, :cond_4b

    .line 352
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    .line 353
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "volId":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/miui/server/enterprise/RestrictionsManagerService$2;

    invoke-direct {v4, p0, v0, v2}, Lcom/miui/server/enterprise/RestrictionsManagerService$2;-><init>(Lcom/miui/server/enterprise/RestrictionsManagerService;Landroid/os/storage/StorageManager;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 359
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 362
    .end local v2    # "volId":Ljava/lang/String;
    :cond_4b
    return-void
.end method


# virtual methods
.method bootComplete()V
    .registers 12

    .line 64
    const-string v0, "Enterprise-restric"

    const-string v1, "Restriction init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 66
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 68
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "disallow_screencapture"

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5, v6}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 69
    iget-object v4, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;->setScreenCaptureDisabled(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;IZ)V

    .line 71
    :cond_3c
    iget-object v4, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "disallow_vpn"

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5, v6}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 72
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v6, 0x2f

    const/4 v7, 0x1

    const/4 v9, 0x0

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    move-object v8, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 74
    :cond_54
    iget-object v4, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "disallow_fingerprint"

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5, v6}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 75
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v6, 0x37

    const/4 v7, 0x1

    const/4 v9, 0x0

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    move-object v8, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 77
    :cond_6c
    iget-object v4, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "disallow_imeiread"

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v5, v6}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 78
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v6, 0x33

    const/4 v7, 0x1

    const/4 v9, 0x0

    iget v10, v3, Landroid/content/pm/UserInfo;->id:I

    move-object v8, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 80
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_84
    goto :goto_1a

    .line 81
    :cond_85
    invoke-direct {p0}, Lcom/miui/server/enterprise/RestrictionsManagerService;->startWatchLocationRestriction()V

    .line 82
    return-void
.end method

.method public getControlStatus(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 331
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 332
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public hasRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 337
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 338
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    nop

    :cond_11
    return v1
.end method

.method public setControlStatus(Ljava/lang/String;II)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .line 124
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 125
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-eq v0, p3, :cond_c

    .line 126
    return-void

    .line 128
    :cond_c
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    .line 129
    .local v0, "originState":I
    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v0, :cond_1a

    if-ne v0, v3, :cond_20

    :cond_1a
    if-eq p2, v2, :cond_115

    if-ne p2, v4, :cond_20

    goto/16 :goto_115

    .line 134
    :cond_20
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v1, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 135
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_118

    goto :goto_62

    :sswitch_2f
    const-string v2, "airplane_state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v3

    goto :goto_63

    :sswitch_39
    const-string/jumbo v2, "nfc_state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v4

    goto :goto_63

    :sswitch_44
    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v7

    goto :goto_63

    :sswitch_4f
    const-string v2, "bluetooth_state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    move v2, v1

    goto :goto_63

    :sswitch_59
    const-string v3, "gps_state"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    :goto_62
    move v2, v5

    :goto_63
    packed-switch v2, :pswitch_data_12e

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown restriction item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :pswitch_7d
    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 178
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 179
    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 181
    :cond_90
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 182
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto/16 :goto_10f

    .line 166
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :pswitch_9b
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 167
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_10f

    .line 168
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 169
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 171
    :cond_ac
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 172
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_10f

    .line 156
    .end local v1    # "adapter":Landroid/nfc/NfcAdapter;
    :pswitch_b6
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 157
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2, v7, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 160
    :cond_c8
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 161
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2, v4, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_10f

    .line 147
    :pswitch_db
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 148
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 149
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 151
    :cond_e8
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 152
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_10f

    .line 138
    .end local v1    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :pswitch_f2
    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 139
    .local v2, "manager":Landroid/net/wifi/WifiManager;
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 140
    invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 142
    :cond_106
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 143
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 189
    .end local v2    # "manager":Landroid/net/wifi/WifiManager;
    :cond_10f
    :goto_10f
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 190
    return-void

    .line 131
    :cond_115
    :goto_115
    return-void

    nop

    nop

    :sswitch_data_118
    .sparse-switch
        -0x79dfef44 -> :sswitch_59
        -0x601b5040 -> :sswitch_4f
        0x1d0272e7 -> :sswitch_44
        0x36cfa4fd -> :sswitch_39
        0x61188164 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_db
        :pswitch_b6
        :pswitch_9b
        :pswitch_7d
    .end packed-switch
.end method

.method public setRestriction(Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 202
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 204
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_2e8

    goto/16 :goto_124

    :sswitch_18
    const-string v1, "disallow_microphone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v0, 0x3

    goto/16 :goto_124

    :sswitch_23
    const-string v1, "disable_accelerometer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0xd

    goto/16 :goto_124

    :sswitch_2f
    const-string v1, "disallow_mi_account"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x14

    goto/16 :goto_124

    :sswitch_3b
    const-string v1, "disallow_status_bar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x13

    goto/16 :goto_124

    :sswitch_47
    const-string v1, "disallow_fingerprint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x9

    goto/16 :goto_124

    :sswitch_53
    const-string v1, "disallow_change_language"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x11

    goto/16 :goto_124

    :sswitch_5f
    const-string v1, "disallow_screencapture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    move v0, v3

    goto/16 :goto_124

    :sswitch_6a
    const-string v1, "disallow_key_menu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x17

    goto/16 :goto_124

    :sswitch_76
    const-string v1, "disallow_key_home"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x16

    goto/16 :goto_124

    :sswitch_82
    const-string v1, "disallow_key_back"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x15

    goto/16 :goto_124

    :sswitch_8e
    const-string v1, "disallow_safe_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x10

    goto/16 :goto_124

    :sswitch_9a
    const-string v1, "disallow_factoryreset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0xa

    goto/16 :goto_124

    :sswitch_a6
    const-string v1, "disable_usb_device"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v0, 0x7

    goto/16 :goto_124

    :sswitch_b1
    const-string v1, "disallow_timeset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0xb

    goto/16 :goto_124

    :sswitch_bd
    const-string v1, "disallow_vpn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    move v0, v4

    goto :goto_124

    :sswitch_c7
    const-string v1, "disallow_mtp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v0, 0x6

    goto :goto_124

    :sswitch_d1
    const-string v1, "disallow_usbdebug"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    move v0, v2

    goto :goto_124

    :sswitch_db
    const-string v1, "disallow_imeiread"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0xc

    goto :goto_124

    :sswitch_e6
    const-string v1, "disallow_auto_sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0xf

    goto :goto_124

    :sswitch_f1
    const-string v1, "disallow_tether"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v0, 0x1

    goto :goto_124

    :sswitch_fb
    const-string v1, "disallow_sdcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v0, 0x5

    goto :goto_124

    :sswitch_105
    const-string v1, "disallow_system_update"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0x12

    goto :goto_124

    :sswitch_110
    const-string v1, "disallow_camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/4 v0, 0x2

    goto :goto_124

    :sswitch_11a
    const-string v1, "disallow_backup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    const/16 v0, 0xe

    :cond_124
    :goto_124
    packed-switch v0, :pswitch_data_34a

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown restriction item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :pswitch_13e
    goto/16 :goto_2e5

    .line 321
    :pswitch_140
    goto/16 :goto_2e5

    .line 319
    :pswitch_142
    goto/16 :goto_2e5

    .line 317
    :pswitch_144
    goto/16 :goto_2e5

    .line 309
    :pswitch_146
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 310
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    if-nez v0, :cond_15d

    .line 311
    const-string v1, "Enterprise-restric"

    const-string/jumbo v2, "statusBarManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    goto/16 :goto_2e5

    .line 314
    :cond_15d
    if-eqz p2, :cond_162

    const/high16 v4, 0x10000

    nop

    :cond_162
    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 315
    goto/16 :goto_2e5

    .line 307
    .end local v0    # "statusBarManager":Landroid/app/StatusBarManager;
    :pswitch_167
    goto/16 :goto_2e5

    .line 304
    :pswitch_169
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 305
    goto/16 :goto_2e5

    .line 301
    :pswitch_170
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 302
    goto/16 :goto_2e5

    .line 295
    :pswitch_17a
    if-eqz p2, :cond_2e5

    .line 296
    invoke-static {v4, p3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 297
    invoke-direct {p0, p3}, Lcom/miui/server/enterprise/RestrictionsManagerService;->closeCloudBackup(I)V

    goto/16 :goto_2e5

    .line 284
    :pswitch_184
    if-eqz p2, :cond_198

    .line 285
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.miui.backup"

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    .line 287
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 285
    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_2e5

    .line 289
    :cond_198
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.miui.backup"

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 289
    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 293
    goto/16 :goto_2e5

    .line 282
    :pswitch_1aa
    goto/16 :goto_2e5

    .line 278
    :pswitch_1ac
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    const/4 v5, 0x0

    move v3, p2

    move-object v4, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 279
    goto/16 :goto_2e5

    .line 271
    :pswitch_1b9
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_1ca

    .line 272
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    :cond_1ca
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_change_disallow"

    .line 275
    nop

    .line 274
    invoke-static {v0, v1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 276
    goto/16 :goto_2e5

    .line 268
    :pswitch_1d9
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 269
    goto/16 :goto_2e5

    .line 265
    :pswitch_1e3
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    const/4 v5, 0x0

    move v3, p2

    move-object v4, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 266
    goto/16 :goto_2e5

    .line 259
    :pswitch_1f0
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_201

    .line 260
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    :cond_201
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 263
    goto/16 :goto_2e5

    .line 254
    :pswitch_20b
    if-eqz p2, :cond_2e5

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_2e5

    .line 255
    invoke-direct {p0, v2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->unmountPublicVolume(I)V

    goto/16 :goto_2e5

    .line 249
    :pswitch_218
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 250
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_usb_file_transfer"

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 251
    const-string/jumbo v1, "none"

    invoke-direct {p0, v0, v1}, Lcom/miui/server/enterprise/RestrictionsManagerService;->setUsbFunction(Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V

    .line 252
    goto/16 :goto_2e5

    .line 244
    .end local v0    # "usbManager":Landroid/hardware/usb/UsbManager;
    :pswitch_233
    if-eqz p2, :cond_2e5

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_2e5

    .line 245
    invoke-direct {p0, v3}, Lcom/miui/server/enterprise/RestrictionsManagerService;->unmountPublicVolume(I)V

    goto/16 :goto_2e5

    .line 241
    :pswitch_240
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p3, p2}, Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;->setScreenCaptureDisabled(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;IZ)V

    .line 242
    goto/16 :goto_2e5

    .line 238
    :pswitch_249
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_record_audio"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 239
    goto/16 :goto_2e5

    .line 234
    :pswitch_253
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_camera"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 236
    goto/16 :goto_2e5

    .line 227
    :pswitch_25d
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_config_tethering"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 228
    .local v0, "hasUserRestriction":Z
    if-eqz p2, :cond_275

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v1

    if-ne p3, v1, :cond_275

    if-nez v0, :cond_275

    .line 229
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;->setWifiApEnabled(Landroid/content/Context;Z)V

    .line 231
    :cond_275
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v2, "no_config_tethering"

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 232
    goto :goto_2e5

    .line 206
    .end local v0    # "hasUserRestriction":Z
    :pswitch_27e
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v7

    .line 207
    .local v7, "hasUserRestriction":Z
    if-eqz p2, :cond_2d1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_2d1

    if-nez v7, :cond_2d1

    .line 209
    :try_start_291
    const-string v0, "connectivity"

    .line 210
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 211
    .local v0, "connectivityManager":Landroid/net/IConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 212
    .local v1, "mConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v1, :cond_2aa

    .line 213
    iget-object v2, v1, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V

    .line 215
    :cond_2aa
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    .line 216
    .local v2, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v2, :cond_2b9

    .line 217
    iget-object v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2b9} :catch_2ba

    .line 221
    .end local v0    # "connectivityManager":Landroid/net/IConnectivityManager;
    .end local v1    # "mConfig":Lcom/android/internal/net/VpnConfig;
    .end local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_2b9
    goto :goto_2d1

    .line 219
    :catch_2ba
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Enterprise-restric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something wrong while close vpn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d1
    :goto_2d1
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 224
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x2f

    const/4 v5, 0x0

    move v3, p2

    move-object v4, p0

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    .line 225
    nop

    .line 327
    .end local v7    # "hasUserRestriction":Z
    :cond_2e5
    :goto_2e5
    return-void

    nop

    nop

    :sswitch_data_2e8
    .sparse-switch
        -0x7227a4fa -> :sswitch_11a
        -0x706e5797 -> :sswitch_110
        -0x6edcd8eb -> :sswitch_105
        -0x54fb21db -> :sswitch_fb
        -0x53305eaa -> :sswitch_f1
        -0x4139f099 -> :sswitch_e6
        -0x3193455e -> :sswitch_db
        -0x1b0ab86d -> :sswitch_d1
        -0x199e971b -> :sswitch_c7
        -0x199e75d0 -> :sswitch_bd
        -0xc6be24f -> :sswitch_b1
        -0xa2e54d8 -> :sswitch_a6
        0x4f1e4c9 -> :sswitch_9a
        0x1853c751 -> :sswitch_8e
        0x1889e70b -> :sswitch_82
        0x188cd703 -> :sswitch_76
        0x188ef783 -> :sswitch_6a
        0x1c0d5b96 -> :sswitch_5f
        0x1c9f9e43 -> :sswitch_53
        0x1d15ae20 -> :sswitch_47
        0x2b28d58a -> :sswitch_3b
        0x361585ce -> :sswitch_2f
        0x44f96f38 -> :sswitch_23
        0x6e123c6e -> :sswitch_18
    .end sparse-switch

    :pswitch_data_34a
    .packed-switch 0x0
        :pswitch_27e
        :pswitch_25d
        :pswitch_253
        :pswitch_249
        :pswitch_240
        :pswitch_233
        :pswitch_218
        :pswitch_20b
        :pswitch_1f0
        :pswitch_1e3
        :pswitch_1d9
        :pswitch_1b9
        :pswitch_1ac
        :pswitch_1aa
        :pswitch_184
        :pswitch_17a
        :pswitch_170
        :pswitch_169
        :pswitch_167
        :pswitch_146
        :pswitch_144
        :pswitch_142
        :pswitch_140
        :pswitch_13e
    .end packed-switch
.end method
