.class Lcom/android/server/wm/WindowManagerServiceInjector;
.super Ljava/lang/Object;
.source "WindowManagerServiceInjector.java"


# static fields
.field private static CUR_DEVICE:Ljava/lang/String; = null

.field public static final DEBUG_BLUR:Z

.field private static FORCE_ORI_DEVICES_LIST:[Ljava/lang/String; = null

.field private static FORCE_ORI_LIST:[Ljava/lang/String; = null

.field private static final MIUI_RESOLUTION:Ljava/lang/String; = "persist.sys.miui_resolution"

.field public static MM:Ljava/lang/String; = null

.field public static MM_FLOATING:Ljava/lang/String; = null

.field public static QQ:Ljava/lang/String; = null

.field public static QQ_FLOATING:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "WindowManagerService"

.field private static mIsInScreenProjection:Z

.field private static mProjectionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMiuiDisplayDensity:I

.field static sMiuiDisplayHeight:I

.field static sMiuiDisplayWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    const-string v0, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v1, "com.tencent.mm/com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "lithium"

    const-string v1, "chiron"

    const-string/jumbo v2, "polaris"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_DEVICES_LIST:[Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->CUR_DEVICE:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "persist.sys.debug_blur"

    .line 46
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceInjector;->DEBUG_BLUR:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    .line 50
    const-string v0, "com.tencent.mm"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->MM:Ljava/lang/String;

    .line 51
    const-string v0, "com.tencent.mobileqq"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->QQ:Ljava/lang/String;

    .line 52
    const-string v0, "com.tencent.mm/.FloatingWindow"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->MM_FLOATING:Ljava/lang/String;

    .line 53
    const-string v0, "com.tencent.mobileqq/.FloatingWindow"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->QQ_FLOATING:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addShowOnFindDeviceKeyguardAttrsIfNecessary(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 133
    if-nez p0, :cond_3

    return-void

    .line 135
    :cond_3
    const-string v0, "com.google.android.dialer"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 137
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.xiaomi.system.devicelock.locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1a

    .line 138
    return-void

    .line 140
    :cond_1a
    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 141
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 142
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 143
    return-void
.end method

.method private static adjustFindDeviceAttrs(Landroid/content/Context;ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 125
    invoke-static {p0, p2, p3}, Lcom/android/server/wm/WindowManagerServiceInjector;->addShowOnFindDeviceKeyguardAttrsIfNecessary(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    .line 127
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/WindowManagerServiceInjector;->removeFindDeviceKeyguardFlagsIfNecessary(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static adjustWindowParams(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appOps"    # Landroid/app/AppOpsManager;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 63
    if-nez p2, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_47

    .line 67
    :cond_11
    const/16 v0, 0x2724

    invoke-virtual {p1, v0, p4, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "mode":I
    if-eqz v0, :cond_47

    .line 69
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 70
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x400001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    const-string v1, "WindowManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG- Show when locked PermissionDenied pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "mode":I
    :cond_47
    invoke-static {p0, p4, p2, p3}, Lcom/android/server/wm/WindowManagerServiceInjector;->adjustFindDeviceAttrs(Landroid/content/Context;ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method static checkBoostPriorityForLockTime(J)V
    .registers 8
    .param p0, "startBoostPriorityTime"    # J

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 273
    .local v0, "endBoostPriorityTime":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_37

    .line 274
    const-string v2, "WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow operation: holding wms lock in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_37
    return-void
.end method

.method public static getForceOrientation(Lcom/android/server/wm/AppWindowToken;I)I
    .registers 8
    .param p0, "atoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p1, "lastOrientation"    # I

    .line 97
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceInjector;->needForceOrientation()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 99
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2b

    .line 100
    sget-object v1, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 101
    sget-object v1, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 102
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 103
    const/4 v1, 0x7

    return v1

    .line 101
    .end local v4    # "name":Ljava/lang/String;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 109
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_2b
    return p1
.end method

.method public static getLastFrame(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 304
    const-string v0, "Splash Screen com.android.incallui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.android.incallui/com.android.incallui.InCallActivity"

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.AVActivity"

    .line 306
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.AVLoadingDialogActivity"

    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.tencent.mobileqq/com.tencent.av.ui.VideoInviteActivity"

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "Splash Screen com.tencent.mm"

    .line 309
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "com.whatsapp/com.whatsapp.voipcalling.VoipActivityV2"

    .line 311
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_43

    .line 314
    :cond_41
    const/4 v0, 0x0

    return v0

    .line 312
    :cond_43
    :goto_43
    const/4 v0, 0x1

    return v0
.end method

.method public static getProjectionBlackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_86

    .line 281
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Splash Screen com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui/com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "FloatAssistantView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "MiuiFreeformBorderView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "SnapshotStartingWindow for"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Splash Screen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "ScreenshotThumbnail"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.milink.ui.activity.ScreeningConsoleWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "FloatNotificationPanel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.AVActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.AVLoadingDialogActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.VideoInviteActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq/.FloatingWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "Splash Screen com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm/.FloatingWindow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    const-string v1, "com.whatsapp/com.whatsapp.voipcalling.VoipActivityV2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_86
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->mProjectionBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static initializeMiuiResolutionLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p0, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 250
    const-string/jumbo v0, "persist.sys.miui_resolution"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "resolution":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 252
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_37

    .line 255
    const/4 v2, 0x0

    :try_start_15
    aget-object v2, v1, v2

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayWidth:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 257
    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayHeight:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 259
    const/4 v2, 0x2

    aget-object v2, v1, v2

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayDensity:I

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_35} :catch_36

    .line 261
    return-void

    .line 262
    :catch_36
    move-exception v2

    .line 266
    .end local v1    # "values":[Ljava/lang/String;
    :cond_37
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    sput v1, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 267
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    sput v1, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 268
    sget v1, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    sput v1, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayDensity:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 269
    return-void
.end method

.method public static isAllowedDisableKeyguard(Landroid/app/AppOpsManager;I)Z
    .registers 8
    .param p0, "appOps"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "packages":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 84
    goto :goto_c

    .line 82
    :catch_b
    move-exception v1

    .line 85
    :goto_c
    const/4 v1, 0x1

    if-eqz v0, :cond_36

    array-length v2, v0

    if-nez v2, :cond_13

    goto :goto_36

    .line 88
    :cond_13
    const/16 v2, 0x2724

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {p0, v2, p1, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 89
    .local v2, "mode":I
    if-nez v2, :cond_1f

    .line 90
    return v1

    .line 92
    :cond_1f
    const-string v1, "WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG- DisableKeyguard PermissionDenied uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return v3

    .line 86
    .end local v2    # "mode":I
    :cond_36
    :goto_36
    return v1
.end method

.method private static isFindDeviceFlagUsePermitted(ILjava/lang/String;)Z
    .registers 7
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 167
    :cond_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 168
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    if-nez v0, :cond_f

    return v1

    .line 171
    :cond_f
    :try_start_f
    const-string v2, "android"

    invoke-interface {v0, v2, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_19

    .line 172
    return v3

    .line 175
    :cond_19
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 176
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_29

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_25} :catch_2a

    and-int/2addr v4, v3

    if-eqz v4, :cond_29

    return v3

    .line 179
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_29
    goto :goto_2b

    .line 178
    :catch_2a
    move-exception v2

    .line 181
    :goto_2b
    return v1
.end method

.method private static needForceOrientation()Z
    .registers 6

    .line 113
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceInjector;->FORCE_ORI_DEVICES_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 114
    .local v4, "device":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/WindowManagerServiceInjector;->CUR_DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 115
    const/4 v0, 0x1

    return v0

    .line 113
    .end local v4    # "device":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 118
    :cond_16
    return v2
.end method

.method static onTransact(Lcom/android/server/wm/WindowManagerService;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 186
    const/16 v0, 0xff

    if-ne p1, v0, :cond_9

    .line 187
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/wm/WindowManagerServiceInjector;->switchResolution(Lcom/android/server/wm/WindowManagerService;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 189
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static removeFindDeviceKeyguardFlagsIfNecessary(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 148
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_d

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_d

    .line 150
    return-void

    .line 153
    :cond_d
    invoke-static {p0, p2}, Lcom/android/server/wm/WindowManagerServiceInjector;->isFindDeviceFlagUsePermitted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_21

    const-string v0, "com.xiaomi.finddevice"

    .line 155
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 156
    :cond_21
    return-void

    .line 159
    :cond_22
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 160
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 161
    return-void
.end method

.method static switchResolution(Lcom/android/server/wm/WindowManagerService;Landroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 199
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerServiceInjector;->switchResolutionIntenal(Lcom/android/server/wm/WindowManagerService;IIII)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method private static switchResolutionIntenal(Lcom/android/server/wm/WindowManagerService;IIII)V
    .registers 16
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .line 208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_c3

    .line 212
    if-nez p1, :cond_bb

    .line 216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 218
    .local v0, "ident":J
    :try_start_12
    const-class v2, Landroid/os/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    .line 219
    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v2

    .line 220
    .local v2, "userIds":[I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_b6

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 221
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 222
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v5, 0xc8

    .line 223
    .local v5, "MIN_WIDTH":I
    const/16 v6, 0xc8

    .line 224
    .local v6, "MIN_HEIGHT":I
    const/4 v7, 0x2

    .line 225
    .local v7, "MAX_SCALE":I
    if-eqz v4, :cond_5c

    .line 226
    const/16 v8, 0xc8

    invoke-static {p2, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move p2, v9

    .line 228
    invoke-static {p3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    mul-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move p3, v8

    .line 230
    iput p2, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    sput p2, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayWidth:I

    .line 231
    iput p3, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    sput p3, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayHeight:I

    .line 232
    iput p4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    sput p4, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayDensity:I

    .line 233
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 235
    .end local v4    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "MIN_WIDTH":I
    .end local v6    # "MIN_HEIGHT":I
    .end local v7    # "MAX_SCALE":I
    :cond_5c
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_21 .. :try_end_5d} :catchall_b0

    :try_start_5d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 236
    const-string/jumbo v3, "persist.sys.miui_resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wm/WindowManagerServiceInjector;->sMiuiDisplayDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_size_forced"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    array-length v3, v2

    const/4 v4, 0x0

    :goto_97
    if-ge v4, v3, :cond_ab

    aget v5, v2, v4

    .line 241
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "display_density_forced"

    const-string v8, ""

    invoke-static {v6, v7, v8, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_a8
    .catchall {:try_start_5d .. :try_end_a8} :catchall_b6

    .line 240
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 245
    .end local v2    # "userIds":[I
    :cond_ab
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 246
    nop

    .line 247
    return-void

    .line 235
    .restart local v2    # "userIds":[I
    :catchall_b0
    move-exception v4

    :try_start_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_b6
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_b6

    .line 245
    .end local v2    # "userIds":[I
    :catchall_b6
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 213
    .end local v0    # "ident":J
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only set the default display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_c3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system uid can switch resolution"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
