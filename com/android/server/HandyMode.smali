.class public Lcom/android/server/HandyMode;
.super Ljava/lang/Object;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HandyMode$RotationWatcher;
    }
.end annotation


# static fields
.field private static final ACTION_CHANGEMODE:Ljava/lang/String; = "miui.action.handymode.changemode"

.field public static final ACTION_HANDYMODE_CHANGE:Ljava/lang/String; = "miui.action.handymode_change"

.field private static BLURED_WALLPAPER_FILE:Ljava/lang/String; = null

.field public static final COMBINATION_CLICK_TIMEOUT:I

.field public static final HANDYMODE:Ljava/lang/String; = "handymode"

.field public static final HANDYMODETIME:Ljava/lang/String; = "handymodetime"

.field public static final MODE_LEFT:I = 0x1

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_RIGHT:I = 0x2

.field private static final NOTCH_FORCE_BLACK_V2:Ljava/lang/String; = "force_black_v2"

.field private static SETTING_ICON_FILE:Ljava/lang/String;

.field private static TITLE_IMAGE_FILE:Ljava/lang/String;

.field private static isdDisplayOled:Z

.field static mHideNotch:Z

.field static mNotchHeight:I

.field private static sAlertDialog:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field static sBootCompleted:Z

.field static sContext:Landroid/content/Context;

.field static sDeviceProvisioned:Z

.field static sEnable:Z

.field static sFiledTitleLanguage:Ljava/lang/String;

.field static sHandler:Landroid/os/Handler;

.field static sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

.field static sHandyModeUtils:Lmiui/util/HandyModeUtils;

.field static sIconHeight:I

.field static sIconWidth:I

.field static sInputManager:Lcom/android/server/input/InputManagerService;

.field private static sMode:I

.field static sPowerManager:Landroid/os/PowerManager;

.field static sReceiver:Landroid/content/BroadcastReceiver;

.field static sRegistered:Z

.field static sRotation:I

.field static sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

.field static sScale:F

.field static sScreenHeight:I

.field static sScreenWidth:I

.field static sSettingClickListener:Ljava/lang/Runnable;

.field static sSettingIconPadding:I

.field static sTimeEnter:J

.field static sWallpaperManager:Landroid/app/WallpaperManager;

.field static sWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 64
    const-string v0, "/data/system/blured_wallpaper.png"

    sput-object v0, Lcom/android/server/HandyMode;->BLURED_WALLPAPER_FILE:Ljava/lang/String;

    .line 65
    const-string v0, "/data/system/setting_icon_for_handymode.png"

    sput-object v0, Lcom/android/server/HandyMode;->SETTING_ICON_FILE:Ljava/lang/String;

    .line 66
    const-string v0, "/data/system/title_image_for_handymode.png"

    sput-object v0, Lcom/android/server/HandyMode;->TITLE_IMAGE_FILE:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput v0, Lcom/android/server/HandyMode;->sMode:I

    .line 79
    const-string/jumbo v0, "persist.sys.handy_mode_cct"

    const/16 v1, 0x50

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/HandyMode;->COMBINATION_CLICK_TIMEOUT:I

    .line 80
    const-string/jumbo v0, "oled"

    const-string/jumbo v1, "ro.display.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HandyMode;->isdDisplayOled:Z

    new-instance v0, Lcom/android/server/HandyMode$1;

    invoke-direct {v0}, Lcom/android/server/HandyMode$1;-><init>()V

    sput-object v0, Lcom/android/server/HandyMode;->sSettingClickListener:Ljava/lang/Runnable;

    .line 130
    new-instance v0, Lcom/android/server/HandyMode$2;

    invoke-direct {v0}, Lcom/android/server/HandyMode$2;-><init>()V

    sput-object v0, Lcom/android/server/HandyMode;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 63
    sget v0, Lcom/android/server/HandyMode;->sMode:I

    return v0
.end method

.method static synthetic access$100()V
    .registers 0

    .line 63
    invoke-static {}, Lcom/android/server/HandyMode;->refreshStatus()V

    return-void
.end method

.method static synthetic access$200()Landroid/graphics/Rect;
    .registers 1

    .line 63
    invoke-static {}, Lcom/android/server/HandyMode;->getSettingIconClickRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    .line 63
    invoke-static {}, Lcom/android/server/HandyMode;->destroyBluredWallpaper()V

    return-void
.end method

.method public static alertToEnter(I)V
    .registers 7
    .param p0, "newMode"    # I

    .line 276
    invoke-static {}, Lcom/android/server/HandyMode;->canEnterHandyMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 278
    :cond_7
    sget-object v0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 279
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    .line 281
    :cond_19
    sget-object v1, Lcom/android/server/HandyMode;->sAlertDialog:Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    move-object v1, v2

    goto :goto_28

    :cond_20
    sget-object v1, Lcom/android/server/HandyMode;->sAlertDialog:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .line 282
    .local v1, "dlg":Landroid/app/Dialog;
    :goto_28
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 283
    :cond_30
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x110b009e

    .line 284
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x110b009f

    .line 285
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/HandyMode$9;

    invoke-direct {v5, p0}, Lcom/android/server/HandyMode$9;-><init>(I)V

    .line 286
    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    .line 292
    invoke-virtual {v3, v4, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 295
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/server/HandyMode;->sAlertDialog:Ljava/lang/ref/SoftReference;

    .line 296
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 298
    :cond_6e
    return-void
.end method

.method private static buildBluredWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "wallpaper"    # Landroid/graphics/Bitmap;

    .line 481
    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    sget v1, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 482
    .local v0, "dstWidth":I
    sget v2, Lcom/android/server/HandyMode;->sScreenHeight:I

    sget v3, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    div-int/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 484
    .local v1, "dstHeight":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 485
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 487
    .local v3, "newCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 488
    .local v4, "dstRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 491
    .local v6, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/2addr v7, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/2addr v8, v1

    const/4 v9, 0x2

    if-le v7, v8, :cond_50

    .line 492
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v1

    div-float/2addr v7, v8

    int-to-float v8, v0

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 493
    .local v7, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/2addr v8, v9

    .line 494
    .local v8, "left":I
    add-int v10, v8, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v6, v8, v5, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 495
    .end local v7    # "srcWidth":I
    .end local v8    # "left":I
    goto :goto_69

    .line 496
    :cond_50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float/2addr v7, v8

    int-to-float v8, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 497
    .local v7, "srcHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/2addr v8, v9

    .line 498
    .local v8, "top":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int v11, v8, v7

    invoke-virtual {v6, v5, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 501
    .end local v7    # "srcHeight":I
    .end local v8    # "top":I
    :goto_69
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p0, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 502
    const/high16 v7, 0x437f0000    # 255.0f

    sget v8, Lmiui/util/ScreenshotUtils;->REAL_BLUR_BLACK:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v7, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 503
    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-boolean v7, Lcom/android/server/HandyMode;->isdDisplayOled:Z

    if-eqz v7, :cond_8c

    const v7, 0x1107001d

    goto :goto_8f

    :cond_8c
    const v7, 0x1107001c

    :goto_8f
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 505
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v5, v7, :cond_a1

    .line 506
    invoke-static {v2}, Lcom/android/server/HandyMode;->fastBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    .line 508
    :cond_a1
    sget v5, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    int-to-float v5, v5

    .line 509
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    .line 508
    invoke-static {v2, v5}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method static canEnterHandyMode()Z
    .registers 4

    .line 301
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 303
    :cond_8
    sget-boolean v0, Lcom/android/server/HandyMode;->sBootCompleted:Z

    if-nez v0, :cond_1a

    .line 304
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HandyMode;->sBootCompleted:Z

    .line 305
    sget-boolean v0, Lcom/android/server/HandyMode;->sBootCompleted:Z

    if-nez v0, :cond_1a

    return v1

    .line 308
    :cond_1a
    sget-boolean v0, Lcom/android/server/HandyMode;->sDeviceProvisioned:Z

    const/4 v2, 0x1

    if-nez v0, :cond_37

    .line 309
    sget-object v0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_provisioned"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    sput-boolean v0, Lcom/android/server/HandyMode;->sDeviceProvisioned:Z

    .line 310
    sget-boolean v0, Lcom/android/server/HandyMode;->sDeviceProvisioned:Z

    if-nez v0, :cond_37

    return v1

    .line 314
    :cond_37
    :try_start_37
    sget-object v0, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v0
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3d} :catch_42

    if-eqz v0, :cond_40

    return v1

    .line 317
    :cond_40
    nop

    .line 319
    return v2

    .line 315
    :catch_42
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public static changeMode(I)V
    .registers 9
    .param p0, "mode"    # I

    .line 327
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 328
    sget-object v0, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/HandyMode$10;

    invoke-direct {v1, p0}, Lcom/android/server/HandyMode$10;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void

    .line 337
    :cond_27
    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v0

    sput v0, Lcom/android/server/HandyMode;->sScale:F

    .line 339
    if-eqz p0, :cond_38

    invoke-static {}, Lcom/android/server/HandyMode;->canEnterHandyMode()Z

    move-result v0

    if-nez v0, :cond_38

    return-void

    .line 341
    :cond_38
    sget-object v0, Lcom/android/server/HandyMode;->sPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 343
    if-eqz p0, :cond_4c

    sget v0, Lcom/android/server/HandyMode;->sMode:I

    if-ne p0, v0, :cond_4c

    .line 344
    invoke-static {v3}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 345
    return-void

    .line 347
    :cond_4c
    sput p0, Lcom/android/server/HandyMode;->sMode:I

    .line 348
    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    sget-object v1, Lcom/android/server/HandyMode;->sSettingClickListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiInputFilter;->removeOutsideClickableRect(Ljava/lang/Runnable;)V

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.action.handymode_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "handymode"

    sget v2, Lcom/android/server/HandyMode;->sMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    if-eqz p0, :cond_d6

    .line 354
    sget-object v1, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_77

    .line 355
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    const-string/jumbo v2, "wallpaper"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    sput-object v1, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    .line 358
    :cond_77
    sget-boolean v1, Lcom/android/server/HandyMode;->sRegistered:Z

    const/4 v2, 0x1

    if-nez v1, :cond_ad

    .line 359
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/HandyMode;->sReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 360
    sget-object v1, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    if-nez v1, :cond_95

    new-instance v1, Lcom/android/server/HandyMode$RotationWatcher;

    invoke-direct {v1}, Lcom/android/server/HandyMode$RotationWatcher;-><init>()V

    sput-object v1, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    .line 362
    :cond_95
    :try_start_95
    sget-object v1, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    sget-object v4, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a6} :catch_a7

    .line 365
    goto :goto_ab

    .line 363
    :catch_a7
    move-exception v1

    .line 364
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 366
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_ab
    sput-boolean v2, Lcom/android/server/HandyMode;->sRegistered:Z

    .line 369
    :cond_ad
    invoke-static {}, Lcom/android/server/HandyMode;->ensureAllImages()V

    .line 370
    invoke-static {}, Lcom/android/server/HandyMode;->ensureBluredWallpaper()V

    .line 372
    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-static {}, Lcom/android/server/HandyMode;->getSettingIconClickRect()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v5, Lcom/android/server/HandyMode;->sSettingClickListener:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/MiuiInputFilter;->addOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    .line 375
    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->hasShowed()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 376
    .local v1, "isFirstTime":Z
    if-eqz v1, :cond_cf

    .line 377
    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v2, v3}, Lmiui/util/HandyModeUtils;->setEnterDirect(Z)V

    .line 378
    invoke-static {}, Lcom/android/server/HandyMode;->gotoHandyModeSetting()V

    .line 380
    :cond_cf
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/HandyMode;->sTimeEnter:J

    .line 381
    .end local v1    # "isFirstTime":Z
    goto :goto_fb

    .line 382
    :cond_d6
    sget-boolean v1, Lcom/android/server/HandyMode;->sRegistered:Z

    if-eqz v1, :cond_ef

    .line 383
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/HandyMode;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    :try_start_e1
    sget-object v1, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    sget-object v2, Lcom/android/server/HandyMode;->sRotationWatcher:Lcom/android/server/HandyMode$RotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_e8} :catch_e9

    .line 388
    goto :goto_ed

    .line 386
    :catch_e9
    move-exception v1

    .line 387
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 389
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_ed
    sput-boolean v3, Lcom/android/server/HandyMode;->sRegistered:Z

    .line 391
    :cond_ef
    const-string v1, "handymodetime"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/HandyMode;->sTimeEnter:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 394
    :goto_fb
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 398
    :try_start_100
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 399
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_122

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 401
    .local v2, "data":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    sget v4, Lcom/android/server/HandyMode;->sScale:F

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 404
    const/16 v4, 0x44a

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v5, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 405
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_122} :catch_124

    .line 410
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "data":Landroid/os/Parcel;
    :cond_122
    nop

    .line 411
    return-void

    .line 407
    :catch_124
    move-exception v1

    .line 408
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 409
    return-void
.end method

.method private static destroyBluredWallpaper()V
    .registers 2

    .line 414
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/HandyMode;->BLURED_WALLPAPER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 416
    :cond_10
    return-void
.end method

.method private static ensureAllImages()V
    .registers 2

    .line 419
    sget-object v0, Lcom/android/server/HandyMode;->SETTING_ICON_FILE:Ljava/lang/String;

    const v1, 0x1102004e

    invoke-static {v0, v1}, Lcom/android/server/HandyMode;->ensureIcon(Ljava/lang/String;I)V

    .line 420
    invoke-static {}, Lcom/android/server/HandyMode;->ensureTitleImage()V

    .line 421
    return-void
.end method

.method private static ensureBluredWallpaper()V
    .registers 4

    .line 462
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/HandyMode;->BLURED_WALLPAPER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, "file":Ljava/io/File;
    sget-object v1, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 465
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 466
    :cond_18
    return-void

    .line 469
    :cond_19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    return-void

    .line 471
    :cond_20
    sget-object v1, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 472
    .local v1, "wallpaper":Landroid/graphics/Bitmap;
    if-nez v1, :cond_29

    return-void

    .line 474
    :cond_29
    invoke-static {v1}, Lcom/android/server/HandyMode;->buildBluredWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 475
    .local v2, "bluredBitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v0}, Lcom/android/server/HandyMode;->saveBitmapToPNG(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 477
    sget-object v3, Lcom/android/server/HandyMode;->sWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 478
    return-void
.end method

.method private static ensureIcon(Ljava/lang/String;I)V
    .registers 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "iconId"    # I

    .line 453
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 455
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 456
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1, v0}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    .line 457
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 459
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1b
    return-void
.end method

.method private static ensureTitleImage()V
    .registers 11

    .line 424
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/HandyMode;->TITLE_IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/HandyMode;->sFiledTitleLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 426
    :cond_25
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/HandyMode;->sFiledTitleLanguage:Ljava/lang/String;

    .line 428
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1103000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 429
    .local v1, "rootView":Landroid/view/View;
    const/high16 v2, 0x42700000    # 60.0f

    sget-object v4, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 430
    .local v2, "padding":I
    sget-object v4, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 431
    .local v4, "screenWidth":I
    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v4, v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 432
    .local v5, "widthMeasureSpec":I
    const/4 v6, 0x0

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 433
    .local v7, "heightMeasureSpec":I
    invoke-virtual {v1, v5, v7}, Landroid/view/View;->measure(II)V

    .line 434
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v1, v6, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 437
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 438
    .local v8, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 440
    nop

    .line 442
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_95
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v9

    .line 443
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v6, v9, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_a2} :catch_a5
    .catchall {:try_start_95 .. :try_end_a2} :catchall_a3

    goto :goto_a9

    .line 447
    :catchall_a3
    move-exception v9

    goto :goto_ae

    .line 444
    :catch_a5
    move-exception v9

    .line 445
    .local v9, "ex":Ljava/io/IOException;
    :try_start_a6
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a3

    .line 447
    .end local v9    # "ex":Ljava/io/IOException;
    :goto_a9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 448
    nop

    .line 450
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "padding":I
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .end local v4    # "screenWidth":I
    .end local v5    # "widthMeasureSpec":I
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :cond_ad
    return-void

    .line 447
    .restart local v1    # "rootView":Landroid/view/View;
    .restart local v2    # "padding":I
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "screenWidth":I
    .restart local v5    # "widthMeasureSpec":I
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "heightMeasureSpec":I
    .restart local v8    # "canvas":Landroid/graphics/Canvas;
    :goto_ae
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9
.end method

.method private static fastBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "background"    # Landroid/graphics/Bitmap;

    .line 513
    sget-object v0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/HandyMode;->isdDisplayOled:Z

    if-eqz v1, :cond_e

    const v1, 0x1107001d

    goto :goto_11

    .line 514
    :cond_e
    const v1, 0x1107001c

    .line 513
    :goto_11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 515
    .local v0, "color_realtimeblur_bg":I
    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 516
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 517
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 518
    return-object p0
.end method

.method public static getMode()I
    .registers 1

    .line 532
    sget v0, Lcom/android/server/HandyMode;->sMode:I

    return v0
.end method

.method private static getSettingIconClickRect()Landroid/graphics/Rect;
    .registers 10

    .line 536
    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/android/server/HandyMode;->sScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/android/server/HandyMode;->sIconWidth:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 537
    .local v0, "iconToBorder":I
    sget v2, Lcom/android/server/HandyMode;->sMode:I

    if-ne v2, v1, :cond_18

    move v1, v0

    goto :goto_23

    :cond_18
    sget v1, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v1, v1

    sget v2, Lcom/android/server/HandyMode;->sScale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    .line 538
    .local v1, "left":I
    :goto_23
    sget v2, Lcom/android/server/HandyMode;->sIconWidth:I

    add-int/2addr v2, v1

    .line 539
    .local v2, "right":I
    sget v3, Lcom/android/server/HandyMode;->sScreenHeight:I

    sub-int/2addr v3, v0

    sget v4, Lcom/android/server/HandyMode;->sIconHeight:I

    sub-int/2addr v3, v4

    .line 541
    .local v3, "top":I
    sget-boolean v4, Lcom/android/server/HandyMode;->mHideNotch:Z

    if-eqz v4, :cond_33

    .line 542
    sget v4, Lcom/android/server/HandyMode;->mNotchHeight:I

    sub-int/2addr v3, v4

    .line 544
    :cond_33
    sget v4, Lcom/android/server/HandyMode;->sIconHeight:I

    add-int/2addr v4, v3

    .line 545
    .local v4, "bottom":I
    new-instance v5, Landroid/graphics/Rect;

    sget v6, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    sub-int v6, v1, v6

    sget v7, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    sub-int v7, v3, v7

    sget v8, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    add-int/2addr v8, v2

    sget v9, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    add-int/2addr v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5
.end method

.method static gotoHandyModeSetting()V
    .registers 3

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "settingIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v1, ":android:show_fragment"

    const-string v2, "com.android.settings.display.HandyModeFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v1, ":android:show_fragment_title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    sget-object v1, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 272
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .line 139
    sget-object v0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-void

    .line 141
    :cond_5
    sput-object p0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    .line 143
    invoke-static {p0}, Lmiui/util/HandyModeUtils;->getInstance(Landroid/content/Context;)Lmiui/util/HandyModeUtils;

    move-result-object v0

    sput-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/server/HandyMode;->mNotchHeight:I

    .line 146
    sget-object v0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_black_v2"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HandyMode;->mHideNotch:Z

    .line 148
    sput-object p1, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    .line 149
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/HandyMode;->sWindowManager:Landroid/view/IWindowManager;

    .line 150
    new-instance v0, Lcom/android/server/MiuiInputFilter;

    invoke-direct {v0, p0}, Lcom/android/server/MiuiInputFilter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    .line 151
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/HandyMode;->sPowerManager:Landroid/os/PowerManager;

    .line 153
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 154
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 155
    .local v1, "size":Landroid/graphics/Point;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 156
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sput v2, Lcom/android/server/HandyMode;->sScreenWidth:I

    .line 157
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Lcom/android/server/HandyMode;->sScreenHeight:I

    .line 158
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/android/server/HandyMode;->sSettingIconPadding:I

    .line 160
    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v2}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/HandyMode;->sEnable:Z

    .line 161
    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v2}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v2

    sput v2, Lcom/android/server/HandyMode;->sScale:F

    .line 162
    sget-boolean v2, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v2, :cond_ab

    .line 163
    sget-object v2, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    sget-object v3, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 166
    :cond_ab
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v2

    if-nez v2, :cond_b2

    return-void

    .line 168
    :cond_b2
    new-instance v2, Lcom/android/server/HandyMode$3;

    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Lcom/android/server/HandyMode$3;-><init>(Landroid/os/Handler;)V

    .line 186
    .local v2, "observer":Landroid/database/ContentObserver;
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "handy_mode_size"

    .line 187
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 186
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 188
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "handy_mode_state"

    .line 189
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 188
    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_test_mode_on"

    .line 192
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Lcom/android/server/HandyMode$4;

    sget-object v7, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    invoke-direct {v5, v7}, Lcom/android/server/HandyMode$4;-><init>(Landroid/os/Handler;)V

    .line 191
    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 202
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/HandyMode$5;

    invoke-direct {v4}, Lcom/android/server/HandyMode$5;-><init>()V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/HandyMode$6;

    invoke-direct {v4}, Lcom/android/server/HandyMode$6;-><init>()V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    sget-object v3, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/HandyMode$7;

    invoke-direct {v4}, Lcom/android/server/HandyMode$7;-><init>()V

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "miui.action.handymode.changemode"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/HandyMode;->SETTING_ICON_FILE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_13d

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 231
    :cond_13d
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/HandyMode;->TITLE_IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 232
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14e

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 234
    :cond_14e
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 235
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 236
    sget-object v5, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1102004d

    invoke-static {v5, v6, v4}, Lmiui/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 237
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sput v5, Lcom/android/server/HandyMode;->sIconWidth:I

    .line 238
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sput v5, Lcom/android/server/HandyMode;->sIconHeight:I

    .line 239
    return-void
.end method

.method private static refreshStatus()V
    .registers 5

    .line 242
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1e

    .line 243
    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    .line 244
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-nez v0, :cond_1e

    sget v0, Lcom/android/server/HandyMode;->sMode:I

    if-eqz v0, :cond_1e

    .line 245
    invoke-static {v2}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 248
    :cond_1e
    sget v0, Lcom/android/server/HandyMode;->sScale:F

    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_50

    .line 249
    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->getScale()F

    move-result v0

    sput v0, Lcom/android/server/HandyMode;->sScale:F

    .line 250
    sget v0, Lcom/android/server/HandyMode;->sMode:I

    if-eqz v0, :cond_50

    .line 251
    sget v0, Lcom/android/server/HandyMode;->sMode:I

    .line 252
    .local v0, "mode":I
    invoke-static {v2}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 253
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 254
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/HandyMode$8;

    invoke-direct {v2, v0}, Lcom/android/server/HandyMode$8;-><init>(I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    .end local v0    # "mode":I
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_50
    return-void
.end method

.method private static saveBitmapToPNG(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;

    .line 523
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 524
    .local v0, "os":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 525
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 528
    .end local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_14

    .line 526
    :catch_10
    move-exception v0

    .line 527
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_14
    return-void
.end method
