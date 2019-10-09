.class public Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyInjector.java"


# static fields
.field private static INCALL_UI:Ljava/lang/String; = null

.field private static final MIUI_APPS:[Ljava/lang/String;

.field private static final MIUI_APPS_GLOBAL:[Ljava/lang/String;

.field private static final MIUI_SYSTEM_APPS:[Ljava/lang/String;

.field private static final REQUIRED_PERMISSIONS:Ljava/lang/String; = "required_permissions"

.field private static final RUNTIME_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUNTIME_PERMSSION_PROPTERY:Ljava/lang/String; = "persist.sys.runtime_perm"

.field private static final STATE_DEF:I = -0x1

.field private static final STATE_GRANT:I = 0x0

.field private static final STATE_REVOKE:I = 0x1

.field private static sTempPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 51

    .line 27
    const-string v0, "com.android.incallui"

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    .line 39
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.USE_SIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.SEND_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_SMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_CELL_BROADCASTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.BODY_SENSORS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v2, "com.miui.core"

    const-string v3, "com.android.bips"

    const-string v4, "com.android.soundrecorder"

    const-string v5, "com.android.fileexplorer"

    const-string v6, "com.android.calendar"

    const-string v7, "com.android.deskclock"

    const-string v8, "com.android.browser"

    const-string v9, "com.android.camera"

    const-string v10, "com.android.mms"

    const-string v11, "com.xiaomi.xmsf"

    const-string v12, "com.android.quicksearchbox"

    const-string v13, "com.miui.home"

    const-string v14, "com.miui.securityadd"

    const-string v15, "com.miui.guardprovider"

    const-string v16, "com.android.providers.downloads"

    const-string v17, "com.android.providers.downloads.ui"

    const-string v18, "com.miui.cloudservice"

    const-string v19, "com.cleanmaster.sdk"

    const-string v20, "com.android.incallui"

    const-string v21, "com.trafficctr.miui"

    const-string v22, "com.opera.max.oem.xiaomi"

    const-string v23, "com.xiaomi.account"

    const-string v24, "com.android.contacts"

    const-string v25, "com.android.bluetooth"

    const-string v26, "com.miui.cloudbackup"

    const-string v27, "com.miui.voip"

    const-string v28, "com.xiaomi.finddevice"

    const-string v29, "com.xiaomi.payment"

    const-string v30, "com.miui.virtualsim"

    const-string v31, "com.miui.gallery"

    const-string v32, "com.miui.compass"

    const-string v33, "com.miui.bugreport"

    const-string v34, "com.miui.mipub"

    const-string v35, "com.miui.backup"

    const-string v36, "com.xiaomi.midrop"

    const-string v37, "com.miui.analytics"

    const-string v38, "com.miui.systemAdSolution"

    const-string v39, "com.miui.msa.global"

    const-string v40, "com.xiaomi.metoknlp"

    const-string v41, "com.android.htmlviewer"

    const-string v42, "com.xiaomi.simactivate.service"

    const-string v43, "com.miui.extraphoto"

    const-string v44, "com.miui.packageinstaller"

    const-string v45, "com.google.android.packageinstaller"

    const-string v46, "com.miui.hybrid"

    const-string v47, "com.xiaomi.camera.parallelservice"

    const-string v48, "com.miui.voiceassist"

    const-string v49, "com.xiaomi.mimoji"

    const-string v50, "com.miui.mishare.connectivity"

    filled-new-array/range {v2 .. v50}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    .line 118
    const-string v1, "com.android.thememanager"

    const-string v2, "com.miui.barcodescanner"

    const-string v3, "com.miui.dmregservice"

    const-string v4, "com.wdstechnology.android.kryten"

    const-string v5, "com.miui.notes"

    const-string v6, "com.miui.weather2"

    const-string v7, "com.xiaomi.gamecenter"

    const-string v8, "com.miui.fmradio"

    const-string v9, "com.android.email"

    const-string v10, "com.miui.video"

    const-string v11, "com.miui.player"

    const-string v12, "com.xiaomi.market"

    const-string v13, "com.xiaomi.jr"

    const-string v14, "com.xiaomi.vip"

    const-string v15, "com.mi.vtalk"

    const-string v16, "com.xiaomi.gamecenter.sdk.service"

    const-string v17, "com.mipay.wallet"

    const-string v18, "com.miui.tsmclient"

    const-string/jumbo v19, "org.simalliance.openmobileapi.service"

    const-string v20, "com.xiaomi.channel"

    const-string v21, "com.miui.yellowpage"

    const-string v22, "com.xiaomi.o2o"

    const-string v23, "com.miui.miuibbs"

    const-string v24, "com.xiaomi.pass"

    const-string v25, "com.xiaomi.mircs"

    const-string v26, "com.android.vending"

    const-string v27, "com.android.calculator2"

    const-string v28, "com.xiaomi.scanner"

    const-string v29, "com.milink.service"

    const-string v30, "com.miui.sysbase"

    const-string v31, "com.miui.calculator"

    const-string v32, "com.miui.milivetalk"

    const-string v33, "com.miui.smsextra"

    const-string v34, "com.xiaomi.oga"

    const-string v35, "com.miui.contentextension"

    const-string v36, "com.miui.personalassistant"

    const-string v37, "com.android.storagemonitor"

    const-string v38, "com.xiaomi.gamecenter.pad"

    const-string v39, "com.miui.voicetrigger"

    const-string v40, "com.xiaomi.vipaccount"

    const-string v41, "com.google.android.gms"

    const-string v42, "com.miui.greenguard"

    const-string v43, "com.mobiletools.systemhelper"

    const-string v44, "com.miui.fm"

    const-string v45, "com.miui.smarttravel"

    filled-new-array/range {v1 .. v45}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    .line 165
    const-string v0, "com.android.bips"

    const-string v1, "com.xiaomi.mircs"

    const-string v2, "com.xiaomi.camera.parallelservice"

    const-string v3, "com.miui.home"

    const-string v4, "com.mi.android.globallauncher"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS_GLOBAL:[Ljava/lang/String;

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 199
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static grantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 10
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .line 176
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    return-void

    .line 179
    :cond_7
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_21

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS_GLOBAL:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 181
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS_GLOBAL:[Ljava/lang/String;

    aget-object v3, v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 183
    .end local v0    # "i":I
    :cond_20
    return-void

    .line 185
    :cond_21
    invoke-static {p0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    .line 187
    return-void
.end method

.method private static grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 7
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    .local v2, "p":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 334
    .local v3, "result":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_37

    .line 335
    sget-object v4, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {p0, v4, v2, p1}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    .end local v2    # "p":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_37
    goto :goto_1d

    .line 338
    :cond_38
    return-void
.end method

.method public static grantMiuiPackageInstallerPermssions(Lcom/android/server/pm/PackageManagerService;)V
    .registers 9
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 447
    const-string v0, "com.miui.packageinstaller"

    .line 448
    .local v0, "miuiPkgInstaller":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 455
    .local v3, "permItem":Ljava/lang/String;
    :try_start_26
    const-string v4, "com.miui.packageinstaller"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_2d

    .line 458
    goto :goto_48

    .line 456
    :catch_2d
    move-exception v4

    .line 457
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "DefaultPermissionGrantPolicyInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grantMiuiPackageInstallerPermssions error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v3    # "permItem":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_48
    goto :goto_1a

    .line 460
    :cond_49
    return-void
.end method

.method public static grantRuntimePermission(Ljava/lang/String;I)V
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 319
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 320
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->INCALL_UI:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 321
    invoke-static {v0, p1}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantIncallUiPermission(Lcom/android/server/pm/PackageManagerService;I)V

    .line 323
    :cond_11
    return-void
.end method

.method private static grantRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 341
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 342
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 346
    .local v1, "callingUid":I
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 347
    :try_start_d
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 348
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_51

    .line 351
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 352
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v4, :cond_3a

    .line 355
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 357
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 359
    .local v6, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v6, v4, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v7

    .line 360
    .local v7, "result":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_38

    .line 367
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v9, 0x0

    invoke-virtual {v8, p2, v9}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 368
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v7    # "result":I
    monitor-exit v2

    .line 369
    return-void

    .line 362
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v7    # "result":I
    :cond_38
    monitor-exit v2

    return-void

    .line 353
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v7    # "result":I
    :cond_3a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 349
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 368
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_68
    move-exception v3

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_d .. :try_end_6a} :catchall_68

    throw v3
.end method

.method private static grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V
    .registers 27
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "systemFixed"    # Z
    .param p3, "userFixed"    # Z
    .param p4, "overrideUserChoice"    # Z
    .param p5, "userId"    # I

    move-object/from16 v7, p0

    .line 204
    move/from16 v8, p5

    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 205
    :try_start_7
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 206
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_167

    invoke-static {v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->doesPackageSupportRuntimePermissions(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_167

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_167

    .line 210
    :cond_23
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 211
    .local v1, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 212
    .local v2, "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_44

    .line 213
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string/jumbo v4, "required_permissions"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "declareStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 215
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 218
    .end local v3    # "declareStr":Ljava/lang/String;
    :cond_44
    const/4 v3, 0x0

    .line 220
    .local v3, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 221
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 222
    .local v4, "sysPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_99

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_99

    .line 223
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 224
    monitor-exit v9

    return-void

    .line 226
    :cond_65
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 227
    .local v5, "disablePermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 228
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v6, :cond_8c

    .line 229
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string/jumbo v11, "required_permissions"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "disablePermissions":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8c

    .line 231
    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object v2, v11

    .line 234
    .end local v6    # "disablePermissions":Ljava/lang/String;
    :cond_8c
    invoke-interface {v1, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    .line 235
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v6

    .line 236
    move-object v1, v5

    .line 241
    .end local v1    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "sysPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "disablePermissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_99
    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move v14, v1

    .line 242
    .local v14, "grantablePermissionCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    .line 243
    .local v15, "grantPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 243
    .local v1, "i":I
    :goto_a8
    move v6, v1

    .line 243
    .end local v1    # "i":I
    .local v6, "i":I
    if-ge v6, v14, :cond_143

    .line 244
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    .line 248
    .local v5, "permission":Ljava/lang/String;
    if-eqz v13, :cond_bf

    invoke-interface {v13, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 249
    nop

    .line 243
    move/from16 v18, v6

    goto/16 :goto_13d

    .line 252
    :cond_bf
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->RUNTIME_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 253
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5, v1, v8}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    move/from16 v16, v1

    .line 254
    .local v16, "flags":I
    if-eqz v12, :cond_f7

    invoke-interface {v12, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f7

    .line 255
    and-int/lit8 v1, v16, 0x20

    if-eqz v1, :cond_13b

    .line 256
    const/16 v17, 0x32

    .line 258
    .local v17, "revokeFlags":I
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v18, 0x0

    move-object v1, v7

    move-object v2, v5

    move/from16 v4, v17

    move-object v10, v5

    move/from16 v5, v18

    .line 258
    .end local v5    # "permission":Ljava/lang/String;
    .local v10, "permission":Ljava/lang/String;
    move/from16 v18, v6

    move v6, v8

    .line 258
    .end local v6    # "i":I
    .local v18, "i":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 261
    .end local v17    # "revokeFlags":I
    goto :goto_13d

    .line 270
    .end local v10    # "permission":Ljava/lang/String;
    .end local v18    # "i":I
    .restart local v5    # "permission":Ljava/lang/String;
    .restart local v6    # "i":I
    :cond_f7
    move-object v10, v5

    move/from16 v18, v6

    .line 270
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "i":I
    .restart local v10    # "permission":Ljava/lang/String;
    .restart local v18    # "i":I
    if-eqz v16, :cond_fe

    if-eqz p4, :cond_13d

    .line 272
    :cond_fe
    const/16 v19, 0x14

    .line 274
    .local v19, "fixedFlags":I
    and-int/lit8 v1, v16, 0x14

    if-eqz v1, :cond_105

    .line 275
    goto :goto_13d

    .line 278
    :cond_105
    if-nez v8, :cond_110

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 279
    invoke-virtual {v7, v10, v1, v8}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_118

    :cond_110
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 280
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 281
    :cond_118
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_11b
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1, v10, v8}, Lcom/android/server/pm/PackageManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    const/16 v1, 0x20

    .line 287
    .local v1, "newFlags":I
    if-eqz p2, :cond_129

    .line 288
    or-int/lit8 v1, v1, 0x10

    .line 293
    .end local v1    # "newFlags":I
    .local v20, "newFlags":I
    :cond_126
    :goto_126
    move/from16 v20, v1

    goto :goto_12e

    .line 289
    .end local v20    # "newFlags":I
    .restart local v1    # "newFlags":I
    :cond_129
    if-eqz p3, :cond_126

    .line 290
    or-int/lit8 v1, v1, 0x2

    goto :goto_126

    .line 293
    .end local v1    # "newFlags":I
    .restart local v20    # "newFlags":I
    :goto_12e
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v1, v7

    move-object v2, v10

    move/from16 v4, v20

    move/from16 v5, v20

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 293
    .end local v10    # "permission":Ljava/lang/String;
    .end local v16    # "flags":I
    .end local v19    # "fixedFlags":I
    .end local v20    # "newFlags":I
    goto :goto_13d

    .line 243
    .end local v18    # "i":I
    .restart local v6    # "i":I
    :cond_13b
    move/from16 v18, v6

    .line 243
    .end local v6    # "i":I
    .restart local v18    # "i":I
    :cond_13d
    :goto_13d
    add-int/lit8 v1, v18, 0x1

    .line 243
    .end local v18    # "i":I
    .local v1, "i":I
    move-object/from16 v10, p1

    goto/16 :goto_a8

    .line 299
    .end local v1    # "i":I
    :cond_143
    if-nez v8, :cond_165

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_165

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.has_gmscore"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15e

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_165

    .line 300
    :cond_15e
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v11    # "requestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "grantablePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "grantablePermissionCount":I
    .end local v15    # "grantPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_165
    monitor-exit v9

    .line 303
    return-void

    .line 207
    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_167
    :goto_167
    monitor-exit v9

    return-void

    .line 302
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_169
    move-exception v0

    monitor-exit v9
    :try_end_16b
    .catchall {:try_start_7 .. :try_end_16b} :catchall_169

    throw v0
.end method

.method private static realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 11
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "userId"    # I

    .line 190
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 191
    sget-object v2, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_SYSTEM_APPS:[Ljava/lang/String;

    aget-object v4, v2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p0

    move v8, p1

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 193
    .end local v1    # "i":I
    :cond_16
    nop

    .local v0, "i":I
    :goto_17
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    .line 194
    sget-object v1, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->MIUI_APPS:[Ljava/lang/String;

    aget-object v3, v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermissionsLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZZI)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 196
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method public static revokeAllPermssions(Lcom/android/server/pm/PackageManagerService;)V
    .registers 11
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 404
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_d8

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1b

    const-string v0, "1"

    const-string/jumbo v1, "ro.miui.has_gmscore"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_d8

    .line 408
    :cond_1b
    :try_start_1b
    sget-object v0, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, "pkg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->sTempPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 410
    .local v3, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "com.google.android.packageinstaller"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 411
    goto :goto_25

    .line 413
    :cond_43
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 414
    .local v5, "p":Ljava/lang/String;
    const-string v6, "com.google.android.gms"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 415
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 416
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_69} :catch_d3

    if-eqz v6, :cond_6c

    .line 417
    goto :goto_47

    .line 421
    :cond_6c
    :try_start_6c
    invoke-virtual {p0, v1, v5, v2}, Lcom/android/server/pm/PackageManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6f} :catch_70

    .line 424
    goto :goto_8c

    .line 422
    :catch_70
    move-exception v6

    .line 423
    .local v6, "e":Ljava/lang/Exception;
    :try_start_71
    const-string v7, "DefaultPermissionGrantPolicyInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "revokeAllPermssions error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .end local v5    # "p":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8c
    goto :goto_47

    .line 426
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8d
    goto :goto_25

    .line 427
    :cond_8e
    const-string v0, "com.miui.packageinstaller"

    .line 428
    .local v0, "miuiPkgInstaller":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_af} :catch_d3

    .line 433
    .local v4, "permItem":Ljava/lang/String;
    :try_start_af
    const-string v5, "com.miui.packageinstaller"

    invoke-static {v5, v4, v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b4} :catch_b5

    .line 436
    goto :goto_d1

    .line 434
    :catch_b5
    move-exception v5

    .line 435
    .local v5, "e":Ljava/lang/Exception;
    :try_start_b6
    const-string v6, "DefaultPermissionGrantPolicyInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "revokeRuntimePermissionInternal error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d1} :catch_d3

    .line 439
    .end local v4    # "permItem":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_d1
    goto :goto_a3

    .line 442
    .end local v0    # "miuiPkgInstaller":Ljava/lang/String;
    .end local v1    # "permissionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d2
    goto :goto_d7

    .line 440
    :catch_d3
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d7
    return-void

    .line 405
    :cond_d8
    :goto_d8
    return-void
.end method

.method private static revokeRuntimePermissionInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 372
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 374
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 375
    :try_start_9
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 376
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_66

    .line 380
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, v3, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 381
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v3, :cond_4f

    .line 385
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/SettingBase;

    .line 386
    .local v4, "sb":Lcom/android/server/pm/SettingBase;
    if-eqz v4, :cond_38

    .line 390
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 392
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v5, v3, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_30

    .line 394
    monitor-exit v1

    return-void

    .line 398
    :cond_30
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v7, 0x1

    invoke-virtual {v6, p2, v7}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 400
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "sb":Lcom/android/server/pm/SettingBase;
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    monitor-exit v1

    .line 401
    return-void

    .line 387
    .restart local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_38
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 382
    .end local v4    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_4f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 377
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_66
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 400
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_7d
    move-exception v2

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_9 .. :try_end_7f} :catchall_7d

    throw v2
.end method

.method public static setCoreRuntimePermissionEnabled(ZII)V
    .registers 6
    .param p0, "grant"    # Z
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 306
    if-eqz p2, :cond_3

    .line 307
    return-void

    .line 309
    :cond_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 310
    .local v0, "service":Lcom/android/server/pm/PackageManagerService;
    if-eqz p0, :cond_1a

    .line 311
    invoke-static {v0, p2}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->realGrantDefaultPermissions(Lcom/android/server/pm/PackageManagerService;I)V

    .line 312
    const-string/jumbo v1, "persist.sys.runtime_perm"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 314
    :cond_1a
    const-string/jumbo v1, "persist.sys.runtime_perm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_25
    return-void
.end method
