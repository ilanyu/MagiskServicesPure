.class public Lcom/miui/server/SecSpaceManagerService;
.super Ljava/lang/Object;
.source "SecSpaceManagerService.java"


# static fields
.field public static KID_SPACE_ID:I = 0x0

.field public static SECOND_USER_ID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SecSpaceManagerService"

.field private static sDataTransferPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const/16 v0, -0x2710

    sput v0, Lcom/miui/server/SecSpaceManagerService;->SECOND_USER_ID:I

    .line 24
    sput v0, Lcom/miui/server/SecSpaceManagerService;->KID_SPACE_ID:I

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/SecSpaceManagerService;->sDataTransferPackageNames:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/miui/server/SecSpaceManagerService;->sDataTransferPackageNames:Ljava/util/List;

    const-string v1, "com.android.fileexplorer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/miui/server/SecSpaceManagerService;->sDataTransferPackageNames:Ljava/util/List;

    const-string v1, "com.mi.android.globalFileexplorer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/miui/server/SecSpaceManagerService;->sDataTransferPackageNames:Ljava/util/List;

    const-string v1, "com.miui.securitycore"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/miui/server/SecSpaceManagerService;->sDataTransferPackageNames:Ljava/util/List;

    const-string v1, "com.miui.gallery"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 21
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->getSecondSpaceId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getKidSpaceId(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kid_user_id"

    const/16 v2, -0x2710

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static getSecondSpaceId(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "second_user_id"

    const/16 v2, -0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    const-string v0, "SecSpaceManagerService"

    const-string v1, "init SecSpaceManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_c

    .line 37
    return-void

    .line 39
    :cond_c
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->getSecondSpaceId(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/server/SecSpaceManagerService;->SECOND_USER_ID:I

    .line 40
    sget v0, Lcom/miui/server/SecSpaceManagerService;->SECOND_USER_ID:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1b

    .line 41
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->startSecSpace(Landroid/content/Context;)V

    .line 43
    :cond_1b
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->getKidSpaceId(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/miui/server/SecSpaceManagerService;->KID_SPACE_ID:I

    .line 44
    sget v0, Lcom/miui/server/SecSpaceManagerService;->KID_SPACE_ID:I

    if-eq v0, v1, :cond_30

    .line 45
    const-string v0, "SecSpaceManagerService"

    const-string/jumbo v1, "start KidModeSpaceService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->startKidSpace(Landroid/content/Context;)V

    .line 48
    :cond_30
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->registerContentObserver(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public static isDataTransferProcess(ILjava/lang/String;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 93
    sget v0, Lcom/miui/server/SecSpaceManagerService;->SECOND_USER_ID:I

    if-ne p0, v0, :cond_e

    sget-object v0, Lcom/miui/server/SecSpaceManagerService;->sDataTransferPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static registerContentObserver(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/miui/server/SecSpaceManagerService$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/miui/server/SecSpaceManagerService$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 77
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "second_user_id"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    return-void
.end method

.method private static startKidSpace(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.securityspace.service.KidModeSpaceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1e

    .line 65
    :catch_15
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecSpaceManagerService"

    const-string/jumbo v2, "start KidModeSpaceService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method private static startSecSpace(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.securityspace.service.SecondSpaceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    return-void
.end method
