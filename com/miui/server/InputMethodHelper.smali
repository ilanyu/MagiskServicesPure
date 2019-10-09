.class public Lcom/miui/server/InputMethodHelper;
.super Ljava/lang/Object;
.source "InputMethodHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputMethodHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 21
    invoke-static {p0, p1}, Lcom/miui/server/InputMethodHelper;->initForUser(Landroid/content/Context;I)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/miui/server/InputMethodHelper;->isSupportMiuiBottom()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26
    const-string v0, "InputMethodHelper"

    const-string v1, "Not support miui bottom."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 29
    :cond_e
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/server/InputMethodHelper;->initForUser(Landroid/content/Context;I)V

    .line 31
    :try_start_12
    new-instance v0, Lcom/miui/server/InputMethodHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/server/InputMethodHelper$1;-><init>(Landroid/content/Context;)V

    const-string v1, "InputMethodHelper"

    invoke-static {v0, v1}, Lmiui/securityspace/CrossUserUtils;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1c} :catch_1d

    .line 59
    goto :goto_26

    .line 57
    :catch_1d
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodHelper"

    const-string/jumbo v2, "registerUserSwitchObserver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void
.end method

.method private static initForUser(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 76
    invoke-static {p0, p1}, Lcom/miui/server/InputMethodHelper;->isMiuiBottomNeedSet(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 77
    return-void

    .line 79
    :cond_7
    invoke-static {}, Lcom/miui/server/InputMethodHelper;->isFullScreenDevice()Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_41

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_20

    goto :goto_41

    .line 84
    :cond_20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_ime_bottom_view"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 85
    const-string v0, "InputMethodHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable miui bottom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 81
    :cond_41
    :goto_41
    const-string v0, "InputMethodHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable miui bottom for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_ime_bottom_view"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 87
    :goto_61
    return-void
.end method

.method private static isFullScreenDevice()Z
    .registers 4

    .line 64
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lmiui/util/CompatibilityHelper;->hasNavigationBar(I)Z

    move-result v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_5} :catch_6

    return v1

    .line 65
    :catch_6
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodHelper"

    const-string v3, "get isFullScreenDevice error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method private static isMiuiBottomNeedSet(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_miui_ime_bottom_view"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private static isSupportMiuiBottom()Z
    .registers 3

    .line 90
    const-string/jumbo v0, "ro.miui.support_miui_ime_bottom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    return v1
.end method
