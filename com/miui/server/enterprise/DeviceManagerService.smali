.class public Lcom/miui/server/enterprise/DeviceManagerService;
.super Lcom/miui/enterprise/IDeviceManager$Stub;
.source "DeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise-device"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceHandler:Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v1, Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;-><init>(Lcom/miui/server/enterprise/DeviceManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mServiceHandler:Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/enterprise/DeviceManagerService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/enterprise/DeviceManagerService;

    .line 39
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private rebootWifi()V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 329
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 330
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mServiceHandler:Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

    new-instance v1, Lcom/miui/server/enterprise/DeviceManagerService$2;

    invoke-direct {v1, p0}, Lcom/miui/server/enterprise/DeviceManagerService$2;-><init>(Lcom/miui/server/enterprise/DeviceManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    :cond_1a
    return-void
.end method


# virtual methods
.method public captureScreen()Landroid/graphics/Bitmap;
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 250
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_e

    .line 252
    return-object v0

    .line 255
    :cond_e
    move-object v1, v0

    .line 256
    .local v1, "original":Landroid/graphics/Bitmap;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 260
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 261
    return-object v0
.end method

.method public deviceReboot()V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 85
    const-string/jumbo v0, "power"

    .line 86
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 89
    .local v0, "pm":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_13
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 92
    goto :goto_18

    .line 90
    :catch_17
    move-exception v1

    .line 93
    :goto_18
    return-void
.end method

.method public deviceShutDown()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 72
    const-string/jumbo v0, "power"

    .line 73
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 76
    .local v0, "pm":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_12
    invoke-interface {v0, v2, v1, v2}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 79
    goto :goto_17

    .line 77
    :catch_16
    move-exception v1

    .line 80
    :goto_17
    return-void
.end method

.method public enableUsbDebug(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 300
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    return-void
.end method

.method public formatSdCard()V
    .registers 7

    .line 97
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 99
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    const/4 v1, 0x0

    .line 100
    .local v1, "usbVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 101
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_36

    .line 102
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    iget v4, v4, Landroid/os/storage/DiskInfo;->flags:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_36

    .line 103
    move-object v1, v3

    .line 104
    goto :goto_37

    .line 106
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_36
    goto :goto_18

    .line 107
    :cond_37
    :goto_37
    if-eqz v1, :cond_51

    .line 108
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_51

    .line 109
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "volId":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/miui/server/enterprise/DeviceManagerService$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/miui/server/enterprise/DeviceManagerService$1;-><init>(Lcom/miui/server/enterprise/DeviceManagerService;Landroid/os/storage/StorageManager;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 118
    .end local v2    # "volId":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method public getDefaultHome()Ljava/lang/String;
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_default_home"

    invoke-static {v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpBlackList(I)Ljava/util/List;
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

    .line 293
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 294
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_ip_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIpWhiteList(I)Ljava/util/List;
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

    .line 286
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 287
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_ip_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBlackList(I)Ljava/util/List;
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

    .line 143
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_url_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlWhiteList(I)Ljava/util/List;
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

    .line 136
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_url_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApBssidBlackList(I)Ljava/util/List;
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

    .line 230
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_bssid_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApBssidWhiteList(I)Ljava/util/List;
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

    .line 216
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 217
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_bssid_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApSsidBlackList(I)Ljava/util/List;
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

    .line 223
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 224
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_ssid_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApSsidWhiteList(I)Ljava/util/List;
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

    .line 209
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 210
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_ssid_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConnRestriction(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 170
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 171
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_conn_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isDeviceRoot()Z
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 66
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    const/4 v0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v0, 0x1

    :goto_23
    return v0
.end method

.method public recoveryFactory(Z)V
    .registers 5
    .param p1, "formatSdcard"    # Z

    .line 150
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "factoryResetIntent":Landroid/content/Intent;
    const-string v1, "format_sdcard"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_21

    .line 154
    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_21
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public setBootAnimation(Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_3d

    .line 311
    nop

    .line 313
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.enterprise.service.EntInstallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 316
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "apkPath"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string/jumbo v2, "type"

    const-string v3, "BootAnimation"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_32

    .line 323
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_3b

    .line 321
    :catch_32
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Enterprise-device"

    const-string/jumbo v2, "setBootAnimation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    const/4 v0, 0x1

    return v0

    .line 308
    :catch_3d
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "Enterprise-device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has no permission to access this API"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v1, 0x0

    return v1
.end method

.method public setBrowserRestriction(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 243
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_host_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 245
    return-void
.end method

.method public setDefaultHome(Ljava/lang/String;)V
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "isPkgInstalled":Z
    const/4 v1, 0x0

    .line 344
    .local v1, "packageInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 346
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v3, "homeIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const/high16 v4, 0x20000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 349
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ComponentName;

    .line 351
    .local v5, "set":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 352
    .local v6, "bestMatch":I
    const/4 v7, 0x0

    move v8, v6

    move-object v6, v1

    move v1, v0

    move v0, v7

    .local v0, "i":I
    .local v1, "isPkgInstalled":Z
    .local v6, "packageInfo":Landroid/content/pm/ResolveInfo;
    .local v8, "bestMatch":I
    :goto_2b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_5b

    .line 353
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 354
    .local v9, "item":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 355
    const/4 v1, 0x1

    .line 356
    move-object v6, v9

    .line 358
    :cond_43
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v5, v0

    .line 360
    iget v10, v9, Landroid/content/pm/ResolveInfo;->match:I

    if-le v10, v8, :cond_58

    iget v8, v9, Landroid/content/pm/ResolveInfo;->match:I

    .line 352
    .end local v9    # "item":Landroid/content/pm/ResolveInfo;
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 363
    .end local v0    # "i":I
    :cond_5b
    invoke-virtual {v2, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 364
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 365
    if-eqz v1, :cond_aa

    if-eqz v6, :cond_aa

    .line 366
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 369
    const-string v9, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 370
    const-string v9, "android.intent.category.BROWSABLE"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 371
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8, v5, v9}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 373
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8, v5, v9}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 375
    iget-object v9, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v10, "ep_default_home"

    invoke-static {v9, v10, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v7    # "intentFilter":Landroid/content/IntentFilter;
    :cond_aa
    return-void
.end method

.method public setIpBlackList(Ljava/util/List;I)V
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

    .line 279
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_ip_black_list"

    .line 281
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    return-void
.end method

.method public setIpRestriction(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 266
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 267
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_ip_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 268
    return-void
.end method

.method public setIpWhiteList(Ljava/util/List;I)V
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

    .line 272
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 273
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_ip_white_list"

    .line 274
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    return-void
.end method

.method public setLockWallPaper(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 406
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.enterprise.service.EntInstallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 409
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "apkPath"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v2, "type"

    const-string v3, "LockWallPaper"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 413
    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_31

    .line 416
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_3a

    .line 414
    :catch_31
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Enterprise-device"

    const-string/jumbo v2, "setWallPaper"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public setRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .line 237
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 239
    return-void
.end method

.method public setUrlBlackList(Ljava/util/List;I)V
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

    .line 129
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_url_white_list"

    .line 131
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    return-void
.end method

.method public setUrlWhiteList(Ljava/util/List;I)V
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

    .line 122
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_url_white_list"

    .line 124
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public setWallPaper(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 388
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.enterprise.service.EntInstallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 391
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 392
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "apkPath"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v2, "type"

    const-string v3, "WallPaper"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_31

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_3a

    .line 396
    :catch_31
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Enterprise-device"

    const-string/jumbo v2, "setWallPaper"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public setWifiApBssidBlackList(Ljava/util/List;I)V
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

    .line 201
    .local p1, "bssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_bssid_black_list"

    .line 203
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    .line 205
    return-void
.end method

.method public setWifiApBssidWhiteList(Ljava/util/List;I)V
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

    .line 185
    .local p1, "bssid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_bssid_white_list"

    .line 187
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    .line 189
    return-void
.end method

.method public setWifiApSsidBlackList(Ljava/util/List;I)V
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

    .line 193
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 194
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_ssid_black_list"

    .line 195
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    .line 197
    return-void
.end method

.method public setWifiApSsidWhiteList(Ljava/util/List;I)V
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

    .line 177
    .local p1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_ap_ssid_white_list"

    .line 179
    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    .line 181
    return-void
.end method

.method public setWifiConnRestriction(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .line 163
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ep_wifi_conn_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    .line 165
    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    .line 166
    return-void
.end method
