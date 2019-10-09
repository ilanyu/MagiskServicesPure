.class Lcom/android/server/SystemServerInjector;
.super Ljava/lang/Object;
.source "SystemServerInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final RUNTIME_REBOOT_PROPERTIY:Ljava/lang/String; = "sys.miui.runtime.reboot"

.field private static final TAG:Ljava/lang/String; = "SystemServerI"

.field private static sVersionPolicyDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-direct {v0}, Lcom/android/server/SystemLogSwitchesConfigReceiver;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    .line 47
    const-string/jumbo v0, "ugg"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "ugglite"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "rosy"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "riva"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "vince"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "whyred"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "versace"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "wayne"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "ysl"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "sirius"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "polaris"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "sakura"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "sakura_india"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "ursa"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 61
    const-string v0, "beryllium"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 62
    const-string v0, "comet"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 63
    const-string v0, "clover"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 64
    const-string v0, "cactus"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 65
    const-string v0, "cereus"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "nitrogen"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 67
    const-string v0, "dipper"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "tulip"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "platina"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "lilium"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 71
    const-string v0, "equuleus"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "perseus"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 73
    const-string v0, "cepheus"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "onc"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "onclite"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "lavender"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 77
    const-string v0, "grus"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v0, "violet"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 79
    const-string v0, "davinci"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v0, "raphael"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 81
    const-string v0, "davinciin"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "raphaelin"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 83
    const-string v0, "andromeda"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v0, "pavo"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 85
    const-string v0, "crux"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "pyxis"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "vela"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 88
    const-string v0, "begonia"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 89
    const-string v0, "begoniain"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "olive"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "olivelite"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 92
    const-string v0, "ginkgo"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "willow"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v0, "tucana"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "phoenix"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "phoenixin"

    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->addDeviceName(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addDeviceName(Ljava/lang/String;)V
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_ru"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_eea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method static final addExtraServices(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onlyCore"    # Z

    .line 105
    const-string/jumbo v0, "security"

    new-instance v1, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    const-string v0, "MiuiInit"

    new-instance v1, Lcom/miui/server/MiuiInitServer;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiInitServer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 108
    const-string v0, "MiuiBackup"

    new-instance v1, Lcom/miui/server/BackupManagerService;

    invoke-direct {v1, p0}, Lcom/miui/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 109
    const-string/jumbo v0, "locationpolicy"

    .line 110
    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 111
    const-string/jumbo v0, "perfshielder"

    new-instance v1, Lcom/miui/server/PerfShielderService;

    invoke-direct {v1, p0}, Lcom/miui/server/PerfShielderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    const-string v0, "ProcessManager"

    new-instance v1, Lcom/android/server/am/ProcessManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_41
    const-string v3, "com.miui.whetstone.server.WhetstoneActivityManagerService"

    invoke-static {v3, v0}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 121
    .local v3, "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    .line 122
    invoke-static {v3, v4}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 123
    .local v4, "whetstoneInstance":Landroid/os/IBinder;
    const-string v5, "SERVICE"

    const-class v6, Ljava/lang/String;

    .line 124
    invoke-static {v3, v5, v6}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v5

    .line 125
    .local v5, "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    if-eqz v4, :cond_66

    if-eqz v5, :cond_66

    .line 126
    invoke-virtual {v5}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_66} :catch_67

    .line 130
    .end local v3    # "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "whetstoneInstance":Landroid/os/IBinder;
    .end local v5    # "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    :cond_66
    goto :goto_6b

    .line 128
    :catch_67
    move-exception v3

    .line 129
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 133
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_6b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_a3

    .line 137
    :try_start_71
    const-string v3, "com.miui.server.TidaService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 138
    .local v3, "tidaService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 139
    .local v4, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string v5, "SERVICE_NAME"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 140
    .local v5, "nameField":Ljava/lang/reflect/Field;
    if-eqz v4, :cond_9e

    if-eqz v5, :cond_9e

    .line 141
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 142
    .local v1, "tidaInstance":Landroid/os/IBinder;
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_9e} :catch_9f

    .line 147
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "tidaInstance":Landroid/os/IBinder;
    .end local v3    # "tidaService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "nameField":Ljava/lang/reflect/Field;
    :cond_9e
    goto :goto_a3

    .line 145
    :catch_9f
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a3
    :goto_a3
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->startScreenEffectService()V

    .line 152
    invoke-static {}, Lcom/android/server/MiuiFgThread;->initialMiuiFgThread()V

    .line 154
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v0, :cond_b0

    .line 155
    invoke-static {p0}, Lcom/miui/server/enterprise/EnterpriseManagerService;->init(Landroid/content/Context;)V

    .line 158
    :cond_b0
    return-void
.end method

.method static enableLogSwitch()V
    .registers 1

    .line 161
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    .line 162
    invoke-static {}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName()V

    .line 163
    return-void
.end method

.method private static enforceVersionPolicy()V
    .registers 3

    .line 239
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "product":Ljava/lang/String;
    sget-object v1, Lcom/android/server/SystemServerInjector;->sVersionPolicyDevices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 243
    const-string v1, "SystemServerI"

    const-string v2, "enforceVersionPolicy: enable_flash_global enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 248
    :cond_17
    const-string/jumbo v1, "locked"

    const-string/jumbo v2, "ro.secureboot.lockstate"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 249
    const-string v1, "SystemServerI"

    const-string v2, "enforceVersionPolicy: device unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 254
    :cond_2f
    invoke-static {v0}, Lcom/android/server/SystemServerInjector;->isGlobalHaredware(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 255
    const-string v1, "SystemServerI"

    const-string v2, "enforceVersionPolicy: global device"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 259
    :cond_3d
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_4b

    .line 260
    const-string v1, "SystemServerI"

    const-string v2, "CN hardware can\'t run Global build; reboot into recovery!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lcom/android/server/SystemServerInjector;->rebootIntoRecovery()V

    .line 263
    :cond_4b
    return-void
.end method

.method private static isGlobalHaredware(Ljava/lang/String;)Z
    .registers 5
    .param p0, "product"    # Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "ugglite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b8

    const-string/jumbo v0, "ugg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    const-string/jumbo v0, "ugglite_ru"

    .line 203
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    const-string/jumbo v0, "ugg_ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_b8

    .line 216
    :cond_27
    const-string/jumbo v0, "riva"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_79

    const-string/jumbo v0, "riva_ru"

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_79

    .line 225
    :cond_3b
    const-string/jumbo v0, "rosy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string/jumbo v0, "rosy_ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_6a

    .line 231
    :cond_4e
    const-string/jumbo v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "country":Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    if-eqz v0, :cond_68

    const-string v3, "CN_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    goto :goto_69

    .line 235
    :cond_68
    return v1

    .line 233
    :cond_69
    :goto_69
    return v2

    .line 226
    .end local v0    # "country":Ljava/lang/String;
    :cond_6a
    :goto_6a
    const-string v0, "CN"

    const-string/jumbo v2, "ro.boot.hwcountry"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 218
    :cond_79
    :goto_79
    const-string v0, "S88505AA1"

    const-string/jumbo v3, "ro.product.wt.boardid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "S88505DA1"

    const-string/jumbo v3, "ro.product.wt.boardid"

    .line 219
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "S88505AC1"

    const-string/jumbo v3, "ro.product.wt.boardid"

    .line 220
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "S88505DC1"

    const-string/jumbo v3, "ro.product.wt.boardid"

    .line 221
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_b7

    .line 218
    :cond_b6
    move v1, v2

    :goto_b7
    return v1

    .line 204
    :cond_b8
    :goto_b8
    const-string v0, "China"

    const-string/jumbo v2, "ro.boot.hwcountry"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method static markBootDexopt(JJ)V
    .registers 7
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 271
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sub-long v1, p2, p0

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->setBootDexopt(J)V

    .line 272
    return-void
.end method

.method static markPmsScan(JJ)V
    .registers 5
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 266
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanStart(J)V

    .line 267
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanEnd(J)V

    .line 268
    return-void
.end method

.method static markSystemRun(J)V
    .registers 7
    .param p0, "time"    # J

    .line 175
    :try_start_0
    const-string/jumbo v0, "sys.miui.runtime.reboot"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "runtimeRebootCount":I
    const-string/jumbo v1, "sys.miui.runtime.reboot"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 179
    .end local v0    # "runtimeRebootCount":I
    goto :goto_1d

    .line 177
    :catch_15
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SystemServer"

    const-string v2, "failed to set runtime reboot count"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 182
    .local v0, "now":J
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    sub-long v3, v0, p0

    invoke-virtual {v2, v3, v4}, Lmiui/mqsas/sdk/BootEventManager;->setZygotePreload(J)V

    .line 183
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setSystemRun(J)V

    .line 185
    const-string v2, "file"

    const-string/jumbo v3, "ro.crypto.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string/jumbo v2, "trigger_restart_framework"

    const-string/jumbo v3, "vold.decrypt"

    .line 186
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 191
    :cond_50
    invoke-static {}, Lcom/android/server/SystemServerInjector;->enforceVersionPolicy()V

    .line 193
    :cond_53
    return-void
.end method

.method private static rebootIntoRecovery()V
    .registers 2

    .line 196
    const-string v0, "--show_version_mismatch\n"

    invoke-static {v0}, Lcom/android/server/BcbUtil;->setupBcb(Ljava/lang/String;)Z

    .line 197
    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "reboot,recovery"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method static registerSystemLogSwitchesReceiver(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method
