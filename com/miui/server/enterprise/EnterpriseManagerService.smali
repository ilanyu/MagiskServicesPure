.class public Lcom/miui/server/enterprise/EnterpriseManagerService;
.super Lcom/miui/enterprise/IEnterpriseManager$Stub;
.source "EnterpriseManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise"


# instance fields
.field private mAPNManagerService:Lcom/miui/server/enterprise/APNManagerService;

.field private mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

.field private mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDeviceManagerService:Lcom/miui/server/enterprise/DeviceManagerService;

.field private mLifecycleReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneManagerService:Lcom/miui/server/enterprise/PhoneManagerService;

.field private mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

.field private mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Lcom/miui/enterprise/IEnterpriseManager$Stub;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCurrentUserId:I

    .line 44
    new-instance v0, Lcom/miui/server/enterprise/EnterpriseManagerService$1;

    invoke-direct {v0, p0}, Lcom/miui/server/enterprise/EnterpriseManagerService$1;-><init>(Lcom/miui/server/enterprise/EnterpriseManagerService;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mLifecycleReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/miui/server/enterprise/APNManagerService;

    invoke-direct {v0, p1}, Lcom/miui/server/enterprise/APNManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mAPNManagerService:Lcom/miui/server/enterprise/APNManagerService;

    .line 78
    new-instance v0, Lcom/miui/server/enterprise/ApplicationManagerService;

    invoke-direct {v0, p1}, Lcom/miui/server/enterprise/ApplicationManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

    .line 79
    new-instance v0, Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-direct {v0, p1}, Lcom/miui/server/enterprise/DeviceManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mDeviceManagerService:Lcom/miui/server/enterprise/DeviceManagerService;

    .line 80
    new-instance v0, Lcom/miui/server/enterprise/PhoneManagerService;

    invoke-direct {v0, p1}, Lcom/miui/server/enterprise/PhoneManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mPhoneManagerService:Lcom/miui/server/enterprise/PhoneManagerService;

    .line 81
    new-instance v0, Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-direct {v0, p1}, Lcom/miui/server/enterprise/RestrictionsManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

    .line 82
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string v1, "apn_manager"

    iget-object v2, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mAPNManagerService:Lcom/miui/server/enterprise/APNManagerService;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string v1, "application_manager"

    iget-object v2, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string v1, "device_manager"

    iget-object v2, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mDeviceManagerService:Lcom/miui/server/enterprise/DeviceManagerService;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string/jumbo v1, "phone_manager"

    iget-object v2, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mPhoneManagerService:Lcom/miui/server/enterprise/PhoneManagerService;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    const-string/jumbo v1, "restrictions_manager"

    iget-object v2, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "com.miui.enterprise.ACTION_CERT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mLifecycleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/enterprise/EnterpriseManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;

    .line 22
    invoke-direct {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->bootComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserStarted(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/server/enterprise/EnterpriseManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/server/enterprise/EnterpriseManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/server/enterprise/EnterpriseManagerService;Lcom/miui/enterprise/signature/EnterpriseCer;)Lcom/miui/enterprise/signature/EnterpriseCer;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;
    .param p1, "x1"    # Lcom/miui/enterprise/signature/EnterpriseCer;

    .line 22
    iput-object p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/server/enterprise/EnterpriseManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/enterprise/EnterpriseManagerService;

    .line 22
    invoke-direct {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->loadEnterpriseCert()V

    return-void
.end method

.method private bootComplete()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mApplicationManagerService:Lcom/miui/server/enterprise/ApplicationManagerService;

    invoke-virtual {v0}, Lcom/miui/server/enterprise/ApplicationManagerService;->bootComplete()V

    .line 98
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mRestrictionsManagerService:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-virtual {v0}, Lcom/miui/server/enterprise/RestrictionsManagerService;->bootComplete()V

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/server/enterprise/EnterpriseManagerService$2;

    invoke-direct {v1, p0}, Lcom/miui/server/enterprise/EnterpriseManagerService$2;-><init>(Lcom/miui/server/enterprise/EnterpriseManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    return-void
.end method

.method private checkEnterprisePermission()V
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.miui.enterprise.permission.ACCESS_ENTERPRISE_API"

    const-string v2, "Permission denied to access enterprise API"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "Enterprise"

    const-string v1, "Init enterprise service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "EnterpriseManager"

    new-instance v1, Lcom/miui/server/enterprise/EnterpriseManagerService;

    invoke-direct {v1, p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    return-void
.end method

.method private loadEnterpriseCert()V
    .registers 7

    .line 120
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/entcert"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "certFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 122
    return-void

    .line 124
    :cond_e
    const/4 v1, 0x0

    .line 126
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 127
    new-instance v2, Lcom/miui/enterprise/signature/EnterpriseCer;

    invoke-direct {v2, v1}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_2d
    .catchall {:try_start_f .. :try_end_1c} :catchall_2b

    .line 132
    nop

    .line 133
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_2a

    .line 135
    :catch_21
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Enterprise"

    const-string v4, "Something wrong"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_3b

    .line 137
    :cond_2a
    :goto_2a
    goto :goto_3b

    .line 131
    :catchall_2b
    move-exception v2

    goto :goto_3c

    .line 128
    :catch_2d
    move-exception v2

    .line 129
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2e
    const-string v3, "Enterprise"

    const-string v4, "Something wrong"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    .line 132
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2a

    .line 133
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_21

    goto :goto_2a

    .line 139
    :goto_3b
    return-void

    .line 131
    :goto_3c
    nop

    .line 132
    if-eqz v1, :cond_4c

    .line 133
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_4c

    .line 135
    :catch_43
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Enterprise"

    const-string v5, "Something wrong"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 137
    :cond_4c
    :goto_4c
    throw v2
.end method

.method private onUserRemoved(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 117
    return-void
.end method

.method private onUserStarted(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 109
    return-void
.end method

.method private onUserSwitched(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 112
    iput p1, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCurrentUserId:I

    .line 113
    return-void
.end method


# virtual methods
.method public getEnterpriseCert()Lcom/miui/enterprise/signature/EnterpriseCer;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->checkEnterprisePermission()V

    .line 152
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public isSignatureVerified()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/miui/server/enterprise/EnterpriseManagerService;->mCert:Lcom/miui/enterprise/signature/EnterpriseCer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
