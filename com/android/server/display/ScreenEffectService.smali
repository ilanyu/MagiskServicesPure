.class public Lcom/android/server/display/ScreenEffectService;
.super Lcom/android/server/SystemService;
.source "ScreenEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ScreenEffectService$BrightnessHandler;,
        Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;,
        Lcom/android/server/display/ScreenEffectService$LocalService;,
        Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;,
        Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;,
        Lcom/android/server/display/ScreenEffectService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

.field private static final MSG_SET_GRAY_VALUE:I = 0x1

.field private static final MSG_SET_NIGHT_LIGHT_BRIGHTNESS:I = 0x0

.field private static final MSG_SWITCH_DARK_MODE:I = 0xa

.field private static final MSG_UPDATE_MONOCHROME_MODE:I = 0x3

.field private static final MSG_UPDATE_NIGHT_LIGHT_COLOR:I = 0x5

.field private static final MSG_UPDATE_PAPER_MODE:I = 0x1

.field private static final MSG_UPDATE_PAPER_MODE_CACHE:I = 0x4

.field private static final MSG_UPDATE_PCC_LEVEL:I = 0x7

.field private static final MSG_UPDATE_SCREEN_OPTIMIZE:I = 0x2

.field private static final MSG_UPDATE_UNLIMITED_COLOR_LEVEL:I = 0x8

.field private static final MSG_UPDATE_WCG_STATE:I = 0x6

.field private static final PAPER_MODE_MIN_LEVEL:F

.field private static final SUPPORT_MONOCHROME_MODE:Z

.field private static final SUPPORT_UNLIMITED_COLOR_MODE:Z

.field private static final SURFACE_FLINGER:Ljava/lang/String; = "SurfaceFlinger"

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE:I = 0x44c

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_PCC:I = 0x44d

.field private static final TAG:Ljava/lang/String; = "ScreenEffectService"

.field private static final TEMP_PAPER_MODE_LEVEL:I = -0x1

.field static sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;


# instance fields
.field private mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

.field private mContext:Landroid/content/Context;

.field private mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

.field private mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

.field private mDisplayState:I

.field private mDriveMode:I

.field private mForceDisableEyecare:Z

.field private mGameHdrEnabled:Z

.field private mGrayScale:F

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMonochromeModeEnabled:Z

.field private mMonochromeModeType:I

.field private mMonochromeWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNightLightBrightness:I

.field private mNightLightColor:I

.field private mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/MiuiRampAnimator<",
            "Lmiui/hardware/display/DisplayFeatureManager;",
            ">;"
        }
    .end annotation
.end field

.field private mPaperModeEnabled:Z

.field private mPaperModeLevel:I

.field private mPaperModeMinRate:I

.field private mScreenColorLevel:I

.field private mScreenOptimizeMode:I

.field private mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

.field private mTopAppPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 65
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    .line 69
    const-string/jumbo v0, "is_compatible_paper_and_screen_effect"

    .line 70
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    .line 73
    const-string/jumbo v0, "paper_mode_min_level"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/server/display/ScreenEffectService;->PAPER_MODE_MIN_LEVEL:F

    .line 78
    sget-boolean v0, Landroid/provider/MiuiSettings$ScreenEffect;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    sput-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    .line 110
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mGrayScale:F

    .line 120
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenEffectThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ScreenEffectService$ScreenEffectHandler;-><init>(Lcom/android/server/display/ScreenEffectService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    return p1
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 45
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateUnlimitedColorLevel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/ScreenEffectService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/ScreenEffectService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateMonochromeMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/display/ScreenEffectService;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mDriveMode:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mDriveMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/MiuiRampAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateGameMode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateNightLightColor()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/ScreenEffectService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Z

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService;->notifySFWcgState(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/ScreenEffectService;IFFF)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/ScreenEffectService;->notifySFPccLevel(IFFF)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/ScreenEffectService;Landroid/content/Context;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/ScreenEffectService;Landroid/content/Context;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ScreenEffectService;->setDarkModeEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/ScreenEffectService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->loadSettings()V

    return-void
.end method

.method static synthetic access$2700()Z
    .registers 1

    .line 45
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/ScreenEffectService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/display/ScreenEffectService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 45
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/ScreenEffectService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Z

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/display/ScreenEffectService;->setScreenModes(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/display/ScreenEffectService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/ScreenEffectService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mGrayScale:F

    return v0
.end method

.method static synthetic access$3302(Lcom/android/server/display/ScreenEffectService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # F

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mGrayScale:F

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Lcom/android/server/display/DisplayPowerController;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/ScreenEffectService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/ScreenEffectService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/ScreenEffectService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/ScreenEffectService;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$BrightnessHandler;)Lcom/android/server/display/ScreenEffectService$BrightnessHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/ScreenEffectService;->mBrightnessHandler:Lcom/android/server/display/ScreenEffectService$BrightnessHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/display/ScreenEffectService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;

    .line 45
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/ScreenEffectService;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ScreenEffectService;->updatePaperMode(ZZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/display/ScreenEffectService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/ScreenEffectService;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    return p1
.end method

.method private checkSettingsData()V
    .registers 9

    .line 315
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne v0, v1, :cond_30

    .line 318
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_paper_mode_enabled"

    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 321
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_paper_mode"

    .line 322
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 321
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    :cond_30
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_paper_mode_level"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6b

    .line 327
    const-string/jumbo v0, "persist.sys.eyecare_cache"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "paperModeLevel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    .line 330
    iget-object v5, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_paper_mode_level"

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 330
    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_6b

    .line 334
    :cond_5d
    iget-object v5, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_paper_mode_level"

    sget v7, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 340
    .end local v0    # "paperModeLevel":Ljava/lang/String;
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_level"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9b

    .line 342
    const-string/jumbo v0, "persist.sys.display_prefer"

    .line 343
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 344
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_level"

    .line 346
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/hardware/display/DisplayFeatureManager;->getColorPrefer()I

    move-result v6

    .line 344
    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 350
    :cond_9b
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_optimize_mode"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_f2

    .line 352
    const-string/jumbo v0, "persist.sys.display_ce"

    .line 353
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f2

    .line 354
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hardware/display/DisplayFeatureManager;->isAdEnable()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 355
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_optimize_mode"

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_f2

    .line 359
    :cond_ce
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/hardware/display/DisplayFeatureManager;->getScreenGamut()I

    move-result v0

    if-nez v0, :cond_e5

    .line 360
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_f2

    .line 365
    :cond_e5
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_optimize_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 372
    :cond_f2
    :goto_f2
    return-void
.end method

.method public static getDimDurationExtraTime(J)J
    .registers 4
    .param p0, "extraTimeMillis"    # J

    .line 850
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_b

    .line 851
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/ScreenEffectService$LocalService;->getDimDurationExtraTime(J)J

    move-result-wide v0

    return-wide v0

    .line 853
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static initDisplayPowerController(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .registers 3
    .param p0, "controller"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 824
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_9

    .line 825
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/ScreenEffectService$LocalService;->initDisplayPowerController(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    .line 827
    :cond_9
    return-void
.end method

.method private isDarkModeEnable(Landroid/content/Context;)Z
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .line 734
    nop

    .line 735
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ui_night_mode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_13

    .line 734
    move v2, v3

    goto :goto_14

    .line 735
    :cond_13
    nop

    .line 734
    :goto_14
    return v2
.end method

.method private loadSettings()V
    .registers 7

    .line 375
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    .line 379
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_paper_mode_level"

    sget v5, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    .line 382
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->resetLocalPaperLevelIfNeed()V

    .line 383
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_optimize_mode"

    sget v5, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    .line 386
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_color_level"

    const/4 v5, 0x2

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    .line 389
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "drive_mode_drive_mode"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mDriveMode:I

    .line 393
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    if-eqz v0, :cond_8b

    .line 394
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "screen_monochrome_mode_enabled"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v1, v2

    :goto_6f
    iput-boolean v1, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    .line 398
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_monochrome_mode"

    invoke-static {v0, v1, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    .line 401
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_monochrome_mode_white_list"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$ScreenEffect;->getScreenModePkgList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    .line 405
    :cond_8b
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v0, :cond_106

    .line 406
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_light_level"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 408
    .local v0, "value":I
    if-eq v0, v2, :cond_e8

    .line 409
    and-int/lit16 v1, v0, 0xff

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 410
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110a0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 409
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    .line 414
    const v1, 0xff00

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 415
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110a0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110a0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 414
    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    goto :goto_106

    .line 420
    :cond_e8
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightBrightness:I

    .line 422
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    .line 427
    .end local v0    # "value":I
    :cond_106
    :goto_106
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v0, :cond_119

    .line 428
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeMinRate:I

    .line 431
    :cond_119
    return-void
.end method

.method private notifySFPccLevel(IFFF)V
    .registers 10
    .param p1, "level"    # I
    .param p2, "red"    # F
    .param p3, "green"    # F
    .param p4, "blue"    # F

    .line 295
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 296
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_37

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 304
    const/16 v2, 0x44d

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_21
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_2a
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_24} :catch_2a
    .catchall {:try_start_21 .. :try_end_24} :catchall_28

    .line 308
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_24
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    goto :goto_37

    .line 308
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_28
    move-exception v2

    goto :goto_33

    .line 305
    :catch_2a
    move-exception v2

    .line 306
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_2b
    const-string v3, "ScreenEffectService"

    const-string v4, "Failed to notifySurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_28

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_24

    .line 308
    :goto_33
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 311
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_37
    :goto_37
    return-void
.end method

.method private notifySFWcgState(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 279
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 280
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_2e

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 282
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 285
    const/16 v2, 0x44c

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_18
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1b} :catch_21
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    .line 289
    .end local v1    # "data":Landroid/os/Parcel;
    :goto_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    goto :goto_2e

    .line 289
    .restart local v1    # "data":Landroid/os/Parcel;
    :catchall_1f
    move-exception v2

    goto :goto_2a

    .line 286
    :catch_21
    move-exception v2

    .line 287
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_22
    const-string v3, "ScreenEffectService"

    const-string v4, "Failed to notifySurfaceFlinger"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_1b

    .line 289
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 292
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private resetLocalPaperLevelIfNeed()V
    .registers 6

    .line 436
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    int-to-float v0, v0

    sget v1, Lcom/android/server/display/ScreenEffectService;->PAPER_MODE_MIN_LEVEL:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_30

    .line 438
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_level"

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 442
    .local v0, "tempValue":I
    if-eq v0, v3, :cond_30

    .line 443
    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_PAPER_MODE_LEVEL:I

    iput v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    .line 444
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "screen_paper_mode_level"

    iget v4, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 449
    .end local v0    # "tempValue":I
    :cond_30
    return-void
.end method

.method private setDarkModeEnable(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .line 726
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 727
    .local v0, "manager":Landroid/app/UiModeManager;
    if-nez v0, :cond_b

    .line 728
    return-void

    .line 730
    :cond_b
    if-eqz p2, :cond_f

    const/4 v1, 0x2

    goto :goto_10

    :cond_f
    const/4 v1, 0x1

    :goto_10
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 731
    return-void
.end method

.method static setDisplayPowerController(Lcom/android/server/display/DisplayPowerController;)V
    .registers 3
    .param p0, "controller"    # Lcom/android/server/display/DisplayPowerController;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 818
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_a

    .line 819
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/ScreenEffectService$LocalService;->initDisplayPowerController(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    .line 821
    :cond_a
    return-void
.end method

.method private setScreenEyeCare(ZZ)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "immediate"    # Z

    .line 595
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 597
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    iget v3, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayState:I

    if-eq v3, v0, :cond_2f

    .line 599
    :cond_11
    if-eqz p2, :cond_15

    move v0, v2

    goto :goto_20

    :cond_15
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v0, v1

    iget v3, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeMinRate:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 600
    .local v0, "rate":I
    :goto_20
    if-eqz p1, :cond_25

    iget v3, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    goto :goto_26

    :cond_25
    move v3, v2

    .line 601
    .local v3, "targetLevel":I
    :goto_26
    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/display/MiuiRampAnimator;->animateTo(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 602
    return-void

    .line 607
    .end local v0    # "rate":I
    .end local v3    # "targetLevel":I
    :cond_2f
    if-eqz p1, :cond_39

    .line 608
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeLevel:I

    invoke-virtual {v0, v1, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_46

    .line 611
    :cond_39
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-eqz v0, :cond_43

    .line 612
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v0, v1, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_46

    .line 614
    :cond_43
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V

    .line 617
    :goto_46
    return-void
.end method

.method private setScreenModes(Z)V
    .registers 5
    .param p1, "immediatePaperMode"    # Z

    .line 269
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    if-eqz v0, :cond_12

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 272
    :cond_12
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    if-eqz v0, :cond_21

    .line 273
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    :cond_21
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 276
    return-void
.end method

.method public static startScreenEffectService()V
    .registers 2

    .line 842
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-nez v0, :cond_15

    .line 843
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    .line 845
    .local v0, "systemServiceManager":Lcom/android/server/SystemServiceManager;
    const-class v1, Lcom/android/server/display/ScreenEffectService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 847
    .end local v0    # "systemServiceManager":Lcom/android/server/SystemServiceManager;
    :cond_15
    return-void
.end method

.method private updateGameMode()V
    .registers 9

    .line 647
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_game_mode"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 649
    .local v0, "gameMode":I
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "game_hdr_level"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 651
    .local v1, "gameHdrLevel":I
    and-int/lit8 v2, v0, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_22

    move v2, v4

    goto :goto_23

    :cond_22
    move v2, v3

    .line 652
    .local v2, "gameHdrEnabled":Z
    :goto_23
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_29

    move v5, v4

    goto :goto_2a

    :cond_29
    move v5, v3

    .line 653
    .local v5, "forceDisableEyecare":Z
    :goto_2a
    iget-boolean v6, p0, Lcom/android/server/display/ScreenEffectService;->mGameHdrEnabled:Z

    if-eq v6, v2, :cond_5e

    .line 654
    iput-boolean v2, p0, Lcom/android/server/display/ScreenEffectService;->mGameHdrEnabled:Z

    .line 655
    const/16 v6, 0x13

    if-nez v2, :cond_3d

    .line 657
    iget-object v7, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v7, v6, v3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 658
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->updateScreenOptimize()V

    goto :goto_5e

    .line 662
    :cond_3d
    sget-boolean v7, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v7, :cond_4b

    if-eqz v5, :cond_47

    iget-boolean v7, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    if-nez v7, :cond_4b

    :cond_47
    iget-boolean v7, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    if-nez v7, :cond_5e

    .line 666
    :cond_4b
    if-eqz v5, :cond_59

    iget-boolean v7, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    if-eqz v7, :cond_59

    .line 667
    if-nez v5, :cond_55

    move v7, v4

    goto :goto_56

    :cond_55
    move v7, v3

    :goto_56
    invoke-direct {p0, v7, v4}, Lcom/android/server/display/ScreenEffectService;->setScreenEyeCare(ZZ)V

    .line 669
    :cond_59
    iget-object v7, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v7, v6, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 674
    :cond_5e
    :goto_5e
    iget-boolean v6, p0, Lcom/android/server/display/ScreenEffectService;->mForceDisableEyecare:Z

    if-eq v6, v5, :cond_64

    .line 675
    iput-boolean v5, p0, Lcom/android/server/display/ScreenEffectService;->mForceDisableEyecare:Z

    .line 678
    :cond_64
    sget-boolean v6, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v6, :cond_6a

    if-nez v2, :cond_75

    .line 679
    :cond_6a
    iget-boolean v6, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    if-eqz v6, :cond_75

    .line 680
    if-nez v5, :cond_71

    goto :goto_72

    :cond_71
    move v4, v3

    :goto_72
    invoke-direct {p0, v4, v3}, Lcom/android/server/display/ScreenEffectService;->setScreenEyeCare(ZZ)V

    .line 683
    :cond_75
    return-void
.end method

.method public static updateLocalScreenEffect(Ljava/lang/String;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 836
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_9

    .line 837
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;->updateLocalScreenEffect(Ljava/lang/String;)V

    .line 839
    :cond_9
    return-void
.end method

.method private updateMonochromeMode()V
    .registers 7

    .line 574
    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_c

    .line 575
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v0, v2, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_35

    .line 577
    :cond_c
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeModeType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_17

    .line 578
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v0, v2, v3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_35

    .line 580
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mMonochromeWhiteList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/display/ScreenEffectService;->mTopAppPkg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 581
    .local v0, "monochromeModepkg":Ljava/lang/Boolean;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2b

    move v4, v3

    goto :goto_2c

    :cond_2b
    move v4, v1

    .line 582
    .local v4, "isPkgMonochromeMode":Z
    :goto_2c
    iget-object v5, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    if-eqz v4, :cond_32

    move v1, v3

    nop

    :cond_32
    invoke-virtual {v5, v2, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 585
    .end local v0    # "monochromeModepkg":Ljava/lang/Boolean;
    .end local v4    # "isPkgMonochromeMode":Z
    :goto_35
    return-void
.end method

.method private updateNightLightColor()V
    .registers 4

    .line 691
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    iget v1, p0, Lcom/android/server/display/ScreenEffectService;->mNightLightColor:I

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 693
    return-void
.end method

.method private updatePaperMode(ZZ)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "immediate"    # Z

    .line 588
    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mForceDisableEyecare:Z

    if-eqz v0, :cond_5

    .line 589
    return-void

    .line 591
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ScreenEffectService;->setScreenEyeCare(ZZ)V

    .line 592
    return-void
.end method

.method static updateScreenEffect(I)V
    .registers 2
    .param p0, "state"    # I

    .line 830
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    if-eqz v0, :cond_9

    .line 831
    sget-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;->updateScreenEffect(I)V

    .line 833
    :cond_9
    return-void
.end method

.method private updateScreenOptimize()V
    .registers 5

    .line 620
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeEnabled:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mGameHdrEnabled:Z

    if-eqz v0, :cond_11

    :cond_c
    iget-boolean v0, p0, Lcom/android/server/display/ScreenEffectService;->mForceDisableEyecare:Z

    if-nez v0, :cond_11

    .line 622
    return-void

    .line 627
    :cond_11
    iget v0, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    .line 628
    .local v0, "value":I
    sget-boolean v1, Lcom/android/server/display/ScreenEffectService;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    if-eqz v1, :cond_18

    .line 631
    const/4 v0, 0x0

    .line 633
    :cond_18
    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_23

    iget v1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    if-eq v1, v2, :cond_23

    .line 635
    const/4 v0, 0x2

    .line 637
    :cond_23
    const/4 v1, 0x0

    .line 638
    .local v1, "mode":I
    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 639
    const/4 v1, 0x1

    goto :goto_31

    .line 640
    :cond_2b
    iget v2, p0, Lcom/android/server/display/ScreenEffectService;->mScreenOptimizeMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    .line 641
    const/4 v1, 0x2

    .line 643
    :cond_31
    :goto_31
    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-virtual {v2, v1, v0}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 644
    return-void
.end method

.method private updateUnlimitedColorLevel()V
    .registers 4

    .line 687
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    iget v1, p0, Lcom/android/server/display/ScreenEffectService;->mScreenColorLevel:I

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    .line 688
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 135
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_135

    .line 136
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->checkSettingsData()V

    .line 138
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_game_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    invoke-direct {p0}, Lcom/android/server/display/ScreenEffectService;->loadSettings()V

    .line 142
    new-instance v0, Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/ScreenEffectService$SettingsObserver;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 143
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    .line 144
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 143
    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_level"

    .line 149
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 148
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 153
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_optimize_mode"

    .line 154
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 153
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 157
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_level"

    .line 158
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 157
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 161
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode_drive_mode"

    .line 162
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 161
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 166
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/display/ScreenEffectService$UserSwitchReceiver;-><init>(Lcom/android/server/display/ScreenEffectService;Lcom/android/server/display/ScreenEffectService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    sget-boolean v0, Lcom/android/server/display/ScreenEffectService;->SUPPORT_MONOCHROME_MODE:Z

    if-eqz v0, :cond_ce

    .line 170
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_monochrome_mode_enabled"

    .line 171
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 170
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_monochrome_mode"

    .line 176
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 180
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_monochrome_mode_white_list"

    .line 181
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 180
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 185
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    :cond_ce
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v0, :cond_e4

    .line 189
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_light_level"

    .line 190
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 189
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 197
    :cond_e4
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_game_mode"

    .line 198
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/ScreenEffectService;->mSettingsObserver:Lcom/android/server/display/ScreenEffectService$SettingsObserver;

    .line 197
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 201
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_PAPERMODE_ANIMATION:Z

    if-eqz v0, :cond_115

    .line 202
    new-instance v0, Lcom/android/server/display/ScreenEffectService$1;

    const-string/jumbo v1, "papermode"

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ScreenEffectService$1;-><init>(Lcom/android/server/display/ScreenEffectService;Ljava/lang/String;)V

    .line 226
    .local v0, "paperMode":Landroid/util/IntProperty;, "Landroid/util/IntProperty<Lmiui/hardware/display/DisplayFeatureManager;>;"
    new-instance v1, Lcom/android/server/display/MiuiRampAnimator;

    iget-object v2, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    invoke-direct {v1, v2, v0}, Lcom/android/server/display/MiuiRampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    .line 228
    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mPaperModeAnimator:Lcom/android/server/display/MiuiRampAnimator;

    new-instance v2, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;

    invoke-direct {v2, p0}, Lcom/android/server/display/ScreenEffectService$PaperModeAnimatListener;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/MiuiRampAnimator;->setListener(Lcom/android/server/display/MiuiRampAnimator$Listener;)V

    .line 231
    .end local v0    # "paperMode":Landroid/util/IntProperty;, "Landroid/util/IntProperty<Lmiui/hardware/display/DisplayFeatureManager;>;"
    :cond_115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/ScreenEffectService;->setScreenModes(Z)V

    .line 232
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_NIGHT_LIGHT_ADJ:Z

    if-eqz v0, :cond_127

    .line 233
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    :cond_127
    sget-boolean v0, Lmiui/os/DeviceFeature;->SUPPORT_DISPLAYFEATURE_CALLBACK:Z

    if-eqz v0, :cond_135

    .line 237
    iget-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    new-instance v1, Lcom/android/server/display/ScreenEffectService$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/ScreenEffectService$2;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    invoke-virtual {v0, v1}, Lmiui/hardware/display/DisplayFeatureManager;->registerCallback(Ljava/lang/Object;)V

    .line 260
    :cond_135
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 128
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/display/ScreenEffectService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 129
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ScreenEffectService;->mDisplayFeatureManager:Lmiui/hardware/display/DisplayFeatureManager;

    .line 130
    new-instance v0, Lcom/android/server/display/ScreenEffectService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/display/ScreenEffectService$LocalService;-><init>(Lcom/android/server/display/ScreenEffectService;)V

    sput-object v0, Lcom/android/server/display/ScreenEffectService;->sScreenEffectManager:Lcom/android/server/display/ScreenEffectService$LocalService;

    .line 131
    return-void
.end method
