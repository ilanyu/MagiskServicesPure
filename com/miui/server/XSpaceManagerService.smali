.class public Lcom/miui/server/XSpaceManagerService;
.super Ljava/lang/Object;
.source "XSpaceManagerService.java"


# static fields
.field private static final ACTION_START_DUAL_ANIMATION:Ljava/lang/String; = "miui.intent.action.START_DUAL_ANIMATION"

.field private static final EXTRA_XSPACE_CACHED_USERID:Ljava/lang/String; = "android.intent.extra.xspace_cached_uid"

.field private static final EXTRA_XSPACE_RESOLVE_INTENT_AGAIN:Ljava/lang/String; = "android.intent.extra.xspace_resolve_intent_again"

.field private static final EXTRA_XSPACE_USERID_SELECTED:Ljava/lang/String; = "android.intent.extra.xspace_userid_selected"

.field private static final HISTORY_PACKAGE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_COMPETE_XSPACE_NOTIFICATION_TIMES:I = 0x1

.field private static final PACKAGE_LINKER:Ljava/lang/String; = "@"

.field private static final PACKAGE_SECURITYADD:Ljava/lang/String; = "com.miui.securityadd"

.field private static final PACKAGE_SETTING:Ljava/lang/String; = "com.android.settings"

.field private static final SYSTEM_PROP_XSPACE_CREATED:Ljava/lang/String; = "persist.sys.xspace_created"

.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_GAMECENTER_SDK_PKGNAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static final XSPACE_ANIMATION_STATUS:Ljava/lang/String; = "xspace_animation_status"

.field private static final XSPACE_ANIMATION_STATUS_DEFAULT:I = 0x2

.field private static final XSPACE_ANIMATION_STATUS_OFF:I = 0x0

.field private static final XSPACE_ANIMATION_STATUS_ON:I = 0x1

.field private static final XSPACE_APP_LIST_INIT_NUMBER:I

.field private static final XSPACE_CLOUD_CONTROL_STATUS:Ljava/lang/String; = "dual_animation_switch"

.field private static final XSPACE_SERVICE_COMPONENT:Ljava/lang/String; = "com.miui.securitycore/com.miui.xspace.service.XSpaceService"

.field private static mContext:Landroid/content/Context;

.field private static final sAddUserPackagesBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAnimStatus:Z

.field private static final sCachedCallingRelationSelfLocked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsXSpaceActived:Z

.field public static sIsXSpaceCreated:Z

.field private static sLastTime:J

.field private static final sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

.field private static final sPublicActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResolver:Landroid/content/ContentResolver;

.field private static final sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sXspaceAnimWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    const-class v0, Lcom/miui/server/XSpaceManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->HISTORY_PACKAGE:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z

    .line 84
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.mi.android.globallauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    .line 99
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    .line 107
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gsf.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.play.games"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sXspaceAnimWhiteList:Ljava/util/ArrayList;

    .line 120
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXspaceAnimWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXspaceAnimWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.mi.android.globallauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sAddUserPackagesBlackList:Ljava/util/ArrayList;

    .line 128
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sAddUserPackagesBlackList:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    .line 134
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    .line 389
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 391
    sput-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 487
    new-instance v0, Lcom/miui/server/XSpaceManagerService$3;

    invoke-direct {v0}, Lcom/miui/server/XSpaceManagerService$3;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .registers 1

    .line 42
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 42
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    .line 42
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 42
    sget-boolean v0, Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 42
    sput-boolean p0, Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z

    return p0
.end method

.method static synthetic access$400(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/os/UserHandle;
    .param p2, "x2"    # Ljava/lang/String;

    .line 42
    invoke-static {p0, p1, p2}, Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private static checkCallXSpacePermission(Ljava/lang/String;)Z
    .registers 6
    .param p0, "callingPkg"    # Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 375
    invoke-interface {v1, p0, v0, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 376
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-gtz v2, :cond_17

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_18

    const/16 v4, 0x3e8

    if-gt v2, v4, :cond_16

    goto :goto_17

    .line 381
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_16
    goto :goto_2f

    .line 377
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_17
    :goto_17
    return v3

    .line 379
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_18
    move-exception v1

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read package info of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return v0
.end method

.method private static checkDualAnimationEnable(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    const/16 v1, 0x3e7

    if-eq p1, v1, :cond_6

    .line 226
    return v0

    .line 229
    :cond_6
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sXspaceAnimWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 230
    return v0

    .line 233
    :cond_f
    sget-wide v1, Lcom/miui/server/XSpaceManagerService;->sLastTime:J

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-nez v1, :cond_22

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/miui/server/XSpaceManagerService;->sLastTime:J

    .line 235
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->HISTORY_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 238
    :cond_22
    if-eqz p0, :cond_41

    const-string v1, "com.android.settings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    sget-object v1, Lcom/miui/server/XSpaceManagerService;->HISTORY_PACKAGE:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    goto :goto_41

    .line 243
    :cond_35
    sget-boolean v1, Lcom/miui/server/XSpaceManagerService;->sAnimStatus:Z

    if-nez v1, :cond_3a

    .line 244
    return v0

    .line 247
    :cond_3a
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->HISTORY_PACKAGE:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_41
    :goto_41
    return v0
.end method

.method public static checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 143
    invoke-static {p2}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "aimPkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 146
    .local v2, "callingUserId":I
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkXSpaceControl, from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", with act:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callingUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", toUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/16 v3, 0x3e7

    if-eqz v2, :cond_4d

    if-eq v2, v3, :cond_4d

    .line 152
    return-object p2

    .line 155
    :cond_4d
    if-nez v2, :cond_5a

    if-nez p5, :cond_5a

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 158
    return-object p2

    .line 161
    :cond_5a
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_64

    .line 163
    return-object p2

    .line 166
    :cond_64
    invoke-static {v0, p5, p6}, Lcom/miui/server/XSpaceManagerService;->checkDualAnimationEnable(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 167
    invoke-static {p2}, Lcom/miui/server/XSpaceManagerService;->creatDualAnimIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    return-object v3

    .line 170
    :cond_6f
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    :cond_7f
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 173
    :cond_87
    return-object p2

    .line 177
    :cond_88
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 178
    invoke-static {p1, v3}, Lcom/miui/server/XSpaceManagerService;->isComponentEnabled(Landroid/content/pm/ActivityInfo;I)Z

    move-result v3

    if-nez v3, :cond_97

    .line 179
    return-object p2

    .line 183
    :cond_97
    const-string v3, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 185
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v4, "from XSpace ResolverActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 187
    invoke-static {p2, v2}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    .line 188
    invoke-static {v0, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_122

    .line 191
    :cond_b2
    invoke-static {v0, p6}, Lcom/miui/server/XSpaceManagerService;->getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 192
    .local v3, "cachedToUserId":I
    const/16 v4, -0x2710

    if-eq v3, v4, :cond_c8

    .line 194
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "using cached calling relation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v4, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_122

    .line 198
    :cond_c8
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v4

    .line 199
    :try_start_cb
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 200
    const-string v5, "android.intent.extra.auth_to_call_xspace"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 201
    invoke-static {p6}, Lcom/miui/server/XSpaceManagerService;->checkCallXSpacePermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ea

    .line 202
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "call XSpace directly"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v4

    return-object p2

    .line 206
    :cond_ea
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "pop up ResolverActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {p2, v0, p4, p6}, Lcom/miui/server/XSpaceManagerService;->getResolverActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object p2, v5

    goto :goto_121

    .line 208
    :cond_f8
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v5, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_121

    .line 209
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "XSpace installed App to normal App"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sAddUserPackagesBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_112

    .line 211
    invoke-static {p2, v2}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    .line 213
    :cond_112
    const-string v5, "android.intent.extra.xspace_cached_uid"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string/jumbo v5, "userId"

    invoke-virtual {p2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    invoke-static {v0, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_121
    :goto_121
    monitor-exit v4

    .line 221
    .end local v3    # "cachedToUserId":I
    :goto_122
    return-object p2

    .line 217
    .restart local v3    # "cachedToUserId":I
    :catchall_123
    move-exception v5

    monitor-exit v4
    :try_end_125
    .catchall {:try_start_cb .. :try_end_125} :catchall_123

    throw v5
.end method

.method private static creatDualAnimIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.START_DUAL_ANIMATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "com.miui.securityadd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    const-string v1, "android.intent.extra.xspace_cached_uid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v1, "android.intent.extra.auth_to_call_xspace"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    return-object v0
.end method

.method private static getAimPkg(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "aimPkg":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 345
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 346
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_10

    .line 347
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 350
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_10
    return-object v0
.end method

.method public static getCachedUserId(Landroid/content/Intent;Ljava/lang/String;)I
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 282
    const/16 v0, -0x2710

    .line 283
    .local v0, "cachedUserId":I
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "aimPkg":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "android.intent.extra.xspace_cached_uid"

    .line 285
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 286
    const-string v2, "android.intent.extra.xspace_cached_uid"

    const/16 v3, -0x2710

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 287
    const-string v2, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 289
    :cond_21
    return v0
.end method

.method private static getPackageActionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResolverActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aimPkg"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "resolverActivityIntent":Landroid/content/Intent;
    const/high16 v1, 0x2000000

    if-ltz p2, :cond_10

    .line 357
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1a

    .line 359
    :cond_10
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_1a

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    :cond_1a
    :goto_1a
    const-string/jumbo v1, "miui.intent.extra.xspace_resolver_activity_calling_package"

    invoke-virtual {p0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "android.intent.extra.xspace_userid_selected"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    const-string v1, "android.intent.extra.xspace_resolver_activity_original_intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    const-string v1, "android.intent.extra.xspace_resolver_activity_aim_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    const-string v1, "android"

    const-string v3, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v1, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    return-object v0
.end method

.method private static getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "aimPkg"    # Ljava/lang/String;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 328
    const/16 v0, -0x2710

    .line 329
    .local v0, "cachedToUserId":I
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v1

    .line 330
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "callingRelationKey":Ljava/lang/String;
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 332
    .local v3, "toUserIdObj":Ljava/lang/Integer;
    if-eqz v3, :cond_4b

    .line 334
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    .line 335
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got callingRelationKey :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cachedToUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v2    # "callingRelationKey":Ljava/lang/String;
    .end local v3    # "toUserIdObj":Ljava/lang/Integer;
    :cond_4b
    monitor-exit v1

    .line 339
    return v0

    .line 338
    :catchall_4d
    move-exception v2

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public static init(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 398
    sput-object p0, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    .line 400
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->initXSpaceAppList()V

    .line 401
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "xspace_enabled"

    .line 402
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/miui/server/XSpaceManagerService$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Lcom/miui/server/XSpaceManagerService$1;-><init>(Landroid/os/Handler;)V

    .line 401
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 413
    new-instance v0, Lcom/miui/server/XSpaceManagerService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/miui/server/XSpaceManagerService$2;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 432
    .local v0, "animListener":Landroid/database/ContentObserver;
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "xspace_animation_status"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 433
    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 435
    const-string/jumbo v1, "launcherapps"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    .line 436
    .local v1, "launcherApps":Landroid/content/pm/LauncherApps;
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 438
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XSpace init, active:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {p0}, Lmiui/securityspace/CrossUserUtils;->hasXSpaceUser(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 441
    sget-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v2, :cond_78

    .line 442
    const-string/jumbo v2, "persist.sys.xspace_created"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_86

    .line 444
    :cond_78
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/XSpaceManagerService;->needSetBootXSpaceGuideTaskForCompete(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 445
    const-string/jumbo v2, "param_intent_value_compete_boot_xspace_guide"

    invoke-static {p0, v2}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    :cond_86
    :goto_86
    invoke-static {p0}, Lcom/android/server/pm/ExtraPackageManagerService;->checkExtraRestoreconFlag(Landroid/content/Context;)V

    .line 450
    return-void
.end method

.method private static initXSpaceAppList()V
    .registers 8

    .line 453
    const/4 v0, 0x0

    .line 455
    .local v0, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 458
    goto :goto_12

    .line 456
    :catch_e
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 459
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_12
    if-eqz v0, :cond_4a

    .line 460
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 461
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v2

    .line 462
    :try_start_1b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 463
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 464
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {v5}, Lcom/miui/server/XSpaceManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_44

    sget-object v6, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 465
    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_44
    goto :goto_1f

    .line 468
    :cond_45
    monitor-exit v2

    goto :goto_4a

    :catchall_47
    move-exception v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_47

    throw v3

    .line 470
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_4a
    :goto_4a
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    if-le v1, v2, :cond_57

    .line 471
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 473
    :cond_57
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "xspace_enabled"

    sget-boolean v3, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 474
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initXSpaceAppList sXSpaceInstalledPackagesSelfLocked ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    XSPACE_APP_LIST_INIT_NUMBER ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset XSpace enable, active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method static isComponentEnabled(Landroid/content/pm/ActivityInfo;I)Z
    .registers 7
    .param p0, "info"    # Landroid/content/pm/ActivityInfo;
    .param p1, "userId"    # I

    .line 588
    if-nez p0, :cond_4

    .line 589
    const/4 v0, 0x1

    return v0

    .line 591
    :cond_4
    const/4 v0, 0x0

    .line 592
    .local v0, "enabled":Z
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .local v1, "compname":Landroid/content/ComponentName;
    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_1b

    if-eqz v2, :cond_1a

    .line 599
    const/4 v0, 0x1

    .line 603
    :cond_1a
    goto :goto_1d

    .line 601
    :catch_1b
    move-exception v2

    .line 602
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 604
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1d
    if-nez v0, :cond_3d

    .line 605
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component not enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  in user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_3d
    return v0
.end method

.method public static isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 298
    return v1

    .line 300
    :cond_8
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "aimPkg":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 302
    return v1

    .line 304
    :cond_13
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 306
    .local v2, "newIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    :try_start_19
    invoke-static {v1}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    .line 307
    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_21} :catch_28
    .catchall {:try_start_19 .. :try_end_21} :catchall_26

    .line 313
    invoke-static {v3}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    .line 314
    nop

    .line 315
    return v3

    .line 313
    :catchall_26
    move-exception v1

    goto :goto_35

    .line 308
    :catch_28
    move-exception v4

    .line 310
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_29
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Private intent"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    .line 311
    nop

    .line 313
    invoke-static {v3}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    .line 311
    return v1

    .line 313
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_35
    invoke-static {v3}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    throw v1
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 480
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-gtz v0, :cond_f

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    nop

    :cond_f
    :goto_f
    return v1
.end method

.method private static needSetBootXSpaceGuideTaskForCompete(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 577
    const-string/jumbo v0, "key_xspace_boot_guide_times"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$XSpace;->getGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private static needSetInstallXSpaceGuideTaskForCompete(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 583
    const-string/jumbo v0, "key_xspace_compete_guide_times"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$XSpace;->getGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private static onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;

    .line 513
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update XSpace App: packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 515
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 516
    :cond_3d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 517
    const-string/jumbo v1, "persist.sys.xspace_created"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9f

    .line 519
    move v1, v2

    .line 521
    .local v1, "isSystemApp":Z
    :try_start_52
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x3e7

    .line 522
    invoke-interface {v3, p0, v2, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 523
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v2, :cond_5f

    .line 524
    return-void

    .line 526
    :cond_5f
    invoke-static {v2}, Lcom/miui/server/XSpaceManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_63} :catch_65

    move v1, v3

    .line 529
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_6d

    .line 527
    :catch_65
    move-exception v2

    .line 528
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v4, "PMS died"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6d
    if-nez v1, :cond_88

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    goto :goto_88

    .line 535
    :cond_78
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v2

    .line 536
    :try_start_7b
    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V

    .line 537
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    monitor-exit v2

    .line 539
    .end local v1    # "isSystemApp":Z
    goto :goto_e2

    .line 538
    .restart local v1    # "isSystemApp":Z
    :catchall_85
    move-exception v0

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_85

    throw v0

    .line 532
    :cond_88
    :goto_88
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XSpace ignore system or GMS package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void

    .line 540
    .end local v1    # "isSystemApp":Z
    :cond_9f
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroid/provider/MiuiSettings$XSpace;->resetDefaultSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v0

    .line 542
    :try_start_a7
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 543
    invoke-static {v2}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V

    .line 544
    monitor-exit v0

    goto :goto_e2

    :catchall_b1
    move-exception v1

    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_a7 .. :try_end_b3} :catchall_b1

    throw v1

    .line 546
    :cond_b4
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_e2

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 547
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    .line 549
    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->needSetInstallXSpaceGuideTaskForCompete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e2

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    .line 550
    invoke-static {v0}, Lmiui/securityspace/CrossUserUtils;->hasXSpaceUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e2

    .line 551
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "param_intent_value_compete_install_xspace_guide"

    invoke-static {v0, v1}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    :cond_e2
    :goto_e2
    return-void
.end method

.method private static putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "aimPkg"    # Ljava/lang/String;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 319
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v0

    .line 320
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "callingRelationKey":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 322
    .local v2, "cachedUserId":I
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putCachedCallingRelationm, callingRelationKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", cachedUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1    # "callingRelationKey":Ljava/lang/String;
    .end local v2    # "cachedUserId":I
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public static shouldResolveAgain(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 265
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "aimPkg":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 268
    .local v1, "newIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    :try_start_a
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "android.intent.extra.xspace_resolve_intent_again"

    .line 269
    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 270
    const-string v3, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_21

    .line 271
    const/4 v2, 0x1

    return v2

    .line 277
    :cond_1f
    nop

    .line 278
    return v2

    .line 273
    :catch_21
    move-exception v3

    .line 275
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v5, "Private intent: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    return v2
.end method

.method private static startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extra"    # Ljava/lang/String;

    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.securitycore/com.miui.xspace.service.XSpaceService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 569
    if-eqz p1, :cond_16

    .line 570
    const-string/jumbo v1, "param_intent_key_has_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    :cond_16
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 573
    return-void
.end method

.method private static updateXSpaceStatusLocked(Z)V
    .registers 4
    .param p0, "isXSpaceActive"    # Z

    .line 557
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    if-ne v0, v1, :cond_50

    .line 558
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateXSpaceStatusLocked sXSpaceInstalledPackagesSelfLocked ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    XSPACE_APP_LIST_INIT_NUMBER ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update XSpace Enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "xspace_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 563
    :cond_50
    return-void
.end method
