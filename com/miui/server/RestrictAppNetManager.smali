.class public Lcom/miui/server/RestrictAppNetManager;
.super Ljava/lang/Object;
.source "RestrictAppNetManager.java"


# static fields
.field private static final RULE_ALLOW:I = 0x0

.field private static final RULE_RESTRICT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictAppNetManager"

.field private static final TYPE_ALL:I = 0x3

.field private static final URI_CLOUD_DEVICE_RELEASED_NOTIFY:Landroid/net/Uri;

.field private static mAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private static sLastUpdateTime:J

.field private static sReleasedDeviceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/android/server/MiuiNetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    const-string v0, "content://com.android.settings.cloud.CloudSettings/device_released"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/server/RestrictAppNetManager;->URI_CLOUD_DEVICE_RELEASED_NOTIFY:Landroid/net/Uri;

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/server/RestrictAppNetManager;->sLastUpdateTime:J

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    .line 37
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "gemini"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "scorpio"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "capricorn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "natrium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "sagit"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "riva"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "jason"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "rosy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "daisy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "sakura"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "sakura_india"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "tiffany"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "tissot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "wayne"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "jasmine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "platina"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "clover"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "ysl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "vince"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "tulip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "lotus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "violet"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "onc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "pine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "vela"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "davinciin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string/jumbo v1, "raphaelin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "ginkgo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "crux"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    const-string v1, "draco"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v0, Lcom/miui/server/RestrictAppNetManager$3;

    invoke-direct {v0}, Lcom/miui/server/RestrictAppNetManager$3;-><init>()V

    sput-object v0, Lcom/miui/server/RestrictAppNetManager;->mAppInstallReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 26
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->updateRestrictAppNetProp(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 26
    invoke-static {p0, p1}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/server/MiuiNetworkManagementService;
    .registers 1

    .line 26
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->isAllowAccessInternet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 26
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->tryDownloadCloudData(Landroid/content/Context;)V

    return-void
.end method

.method private static getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 243
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 244
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_c

    return v2

    .line 245
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_c
    move-exception v1

    .line 246
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "RestrictAppNetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not find packageName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method static init(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    const-string/jumbo v0, "persist.sys.released"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    .local v0, "hasReleased":Z
    const-string v1, "RestrictAppNetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init released : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v0, :cond_21

    .line 102
    return-void

    .line 104
    :cond_21
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sReleasedDeviceList:Ljava/util/HashSet;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 105
    const-string v1, "RestrictAppNetManager"

    const-string v2, "Device is released"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string/jumbo v1, "persist.sys.released"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_3c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_4c

    .line 111
    const-string/jumbo v1, "persist.sys.released"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 115
    :cond_4c
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v1

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    .line 116
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver(Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver1(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerAppInstallReceiver(Landroid/content/Context;)V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    .line 121
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.bench64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.videobench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.ABenchMark.GL2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.tester"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.antutu.benchmark.full"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.music.videogame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ludashi.benchmarkhd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.qihoo360.ludashi.cooling"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "cn.opda.android.activity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.shouji.cesupaofen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.colola.mobiletest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "ws.j7uxli.a6urcd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.gamebench.metricscollector"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.huahua.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.futuremark.dmandroid.application"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.eembc.coremark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.rightware.BasemarkOSII"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.glbenchmark.glbenchmark27"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.greenecomputing.linpack"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.cfbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.primatelabs.geekbench3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.quicinc.vellamo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "eu.chainfire.perfmon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.evozi.deviceid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.finalwire.aida64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.cpuid.cpu_z"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "rs.in.luka.android.pi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.uzywpq.cqlzahm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.xidige.androidinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.appems.hawkeye"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.tyyj89.androidsuperinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.ft1gp"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "ws.k6t2we.b4zyjdjv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.myapp.dongxie_app1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.shoujijiance.zj"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.qrj.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string v2, "com.appems.testonetest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(Landroid/content/Context;I)V

    .line 166
    return-void
.end method

.method private static isAllowAccessInternet(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "persist.sys.released"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    .local v0, "hasReleased":Z
    const/4 v1, 0x1

    if-nez v0, :cond_18

    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    if-nez v2, :cond_10

    goto :goto_18

    .line 173
    :cond_10
    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 171
    :cond_18
    :goto_18
    return v1
.end method

.method static isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method private static registerAppInstallReceiver(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->mAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method private static registerCloudDataObserver(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/miui/server/RestrictAppNetManager$1;

    .line 190
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/miui/server/RestrictAppNetManager$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 189
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    return-void
.end method

.method private static registerCloudDataObserver1(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->URI_CLOUD_DEVICE_RELEASED_NOTIFY:Landroid/net/Uri;

    new-instance v2, Lcom/miui/server/RestrictAppNetManager$2;

    .line 200
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/miui/server/RestrictAppNetManager$2;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 199
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    return-void
.end method

.method private static tryDownloadCloudData(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/server/RestrictAppNetManager;->sLastUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/server/RestrictAppNetManager;->sLastUpdateTime:J

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.action.UPDATE_RESTRICT_APP_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_26

    .line 275
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    :cond_26
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v2, "com.miui.permission.UPDATE_RESTRICT_DATA"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 279
    const-string v1, "RestrictAppNetManager"

    const-string/jumbo v2, "send\uff1a com.miui.action.UPDATE_RESTRICT_APP_DATA"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_35
    return-void
.end method

.method private static updateFirewallRule(Landroid/content/Context;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rule"    # I

    .line 177
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    if-eqz v0, :cond_3e

    .line 178
    const-string v0, "RestrictAppNetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFirewallRule : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/miui/server/RestrictAppNetManager;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "uid":I
    if-ltz v2, :cond_3d

    .line 182
    sget-object v3, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v2, p1, v4}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    .line 184
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_3d
    goto :goto_25

    .line 186
    :cond_3e
    return-void
.end method

.method private static updateRestrictAppNetProp(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 218
    :try_start_0
    const-string/jumbo v0, "persist.sys.released"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 219
    .local v0, "released":Z
    if-nez v0, :cond_55

    .line 220
    const-string v2, "RestrictAppNetManager"

    const-string/jumbo v3, "updateRestrictAppNetProp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 222
    .local v2, "deviceMode":Ljava/lang/String;
    nop

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "RestrictAppControl"

    .line 222
    invoke-static {v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 224
    .local v3, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    if-eqz v3, :cond_54

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_28

    goto :goto_54

    .line 227
    :cond_28
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 228
    .local v5, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string/jumbo v6, "released"

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 229
    const-string/jumbo v4, "persist.sys.released"

    const-string/jumbo v6, "true"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {p0, v1}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(Landroid/content/Context;I)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_56

    .line 231
    return-void

    .line 233
    .end local v5    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :cond_53
    goto :goto_2c

    .line 225
    :cond_54
    :goto_54
    return-void

    .line 237
    .end local v0    # "released":Z
    .end local v2    # "deviceMode":Ljava/lang/String;
    .end local v3    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    :cond_55
    goto :goto_5f

    .line 235
    :catch_56
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RestrictAppNetManager"

    const-string/jumbo v2, "update released prop exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method
