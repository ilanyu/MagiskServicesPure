.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field private static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCustomAnimation:Z

.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDefaultActivityAnimation:Z

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLauncherAnimationRect:Landroid/graphics/Rect;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBackHomeAnimation:Z

.field private final mLowRamRecentsEnabled:Z

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFlags:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 151
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 154
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 170
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 192
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 211
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 219
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .line 222
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 230
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 239
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 244
    const-wide/16 v2, 0x150

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    .line 247
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    .line 267
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 269
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 271
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 273
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 277
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 279
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    .line 304
    const-string/jumbo v0, "ro.recents.grid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .line 305
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .line 2136
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_28

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2144
    :pswitch_1a
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    .line 2142
    :pswitch_1d
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    .line 2140
    :pswitch_20
    const-string v0, "APP_STATE_READY"

    return-object v0

    .line 2138
    :pswitch_23
    const-string v0, "APP_STATE_IDLE"

    return-object v0

    nop

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "transition"    # I

    .line 2062
    packed-switch p0, :pswitch_data_5c

    .line 2130
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2127
    :pswitch_1a
    const-string v0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    .line 2124
    :pswitch_1d
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    .line 2121
    :pswitch_20
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    .line 2118
    :pswitch_23
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    .line 2115
    :pswitch_26
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    .line 2112
    :pswitch_29
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    .line 2109
    :pswitch_2c
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    .line 2106
    :pswitch_2f
    const-string v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    .line 2103
    :pswitch_32
    const-string v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    .line 2100
    :pswitch_35
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    .line 2097
    :pswitch_38
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    .line 2094
    :pswitch_3b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    .line 2091
    :pswitch_3e
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    .line 2088
    :pswitch_41
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    .line 2085
    :pswitch_44
    const-string v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    .line 2082
    :pswitch_47
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    .line 2079
    :pswitch_4a
    const-string v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    .line 2076
    :pswitch_4d
    const-string v0, "TRANSIT_TASK_OPEN"

    return-object v0

    .line 2073
    :pswitch_50
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    .line 2070
    :pswitch_53
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    .line 2067
    :pswitch_56
    const-string v0, "TRANSIT_NONE"

    return-object v0

    .line 2064
    :pswitch_59
    const-string v0, "TRANSIT_UNSET"

    return-object v0

    :pswitch_data_5c
    .packed-switch -0x1
        :pswitch_59
        :pswitch_56
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .registers 8
    .param p1, "cutOff"    # Z
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 799
    if-nez p1, :cond_5

    .line 800
    const-wide/16 v0, 0x150

    return-wide v0

    .line 802
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 803
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 802
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 804
    .local v0, "fraction":F
    const/high16 v1, 0x43a80000    # 336.0f

    const/high16 v2, 0x42a80000    # 84.0f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-long v1, v1

    return-wide v1
.end method

.method private canOverridePendingAppTransition()Z
    .registers 3

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .line 672
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 673
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 674
    int-to-float v1, p0

    return v1

    .line 676
    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .line 1316
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1317
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p3, "taskId"    # I

    .line 1323
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1324
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .registers 37
    .param p1, "sourceFrame"    # Landroid/graphics/Rect;
    .param p2, "destFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p4, "enter"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1330
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1331
    .local v5, "sourceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1332
    .local v6, "sourceHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 1333
    .local v7, "destWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    .line 1334
    .local v8, "destHeight":F
    if-eqz p4, :cond_22

    div-float v9, v5, v7

    :goto_20
    move v11, v9

    goto :goto_25

    :cond_22
    div-float v9, v7, v5

    goto :goto_20

    .line 1335
    .local v11, "scaleH":F
    :goto_25
    if-eqz p4, :cond_2b

    div-float v9, v6, v8

    :goto_29
    move v13, v9

    goto :goto_2e

    :cond_2b
    div-float v9, v8, v6

    goto :goto_29

    .line 1336
    .local v13, "scaleV":F
    :goto_2e
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1337
    .local v9, "set":Landroid/view/animation/AnimationSet;
    const/4 v10, 0x0

    if-nez v3, :cond_39

    .line 1338
    move v12, v10

    goto :goto_3e

    :cond_39
    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v14

    :goto_3e
    move v15, v12

    .line 1339
    .local v15, "surfaceInsetsH":I
    if-nez v3, :cond_42

    .line 1340
    goto :goto_47

    :cond_42
    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v12

    :goto_47
    move v14, v10

    .line 1343
    .local v14, "surfaceInsetsV":I
    if-eqz p4, :cond_4c

    move v10, v7

    goto :goto_4d

    :cond_4c
    move v10, v5

    :goto_4d
    int-to-float v12, v15

    add-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v23, v10, v12

    .line 1344
    .local v23, "scaleHCenter":F
    if-eqz p4, :cond_57

    move v10, v8

    goto :goto_58

    :cond_57
    move v10, v6

    :goto_58
    int-to-float v3, v14

    add-float/2addr v10, v3

    div-float v3, v10, v12

    .line 1345
    .local v3, "scaleVCenter":F
    if-eqz p4, :cond_74

    .line 1346
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v10, v17

    move/from16 v24, v14

    move/from16 v14, v16

    .end local v14    # "surfaceInsetsV":I
    .local v24, "surfaceInsetsV":I
    move/from16 v25, v15

    move/from16 v15, v23

    .end local v15    # "surfaceInsetsH":I
    .local v25, "surfaceInsetsH":I
    move/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_8b

    .line 1347
    .end local v24    # "surfaceInsetsV":I
    .end local v25    # "surfaceInsetsH":I
    .restart local v14    # "surfaceInsetsV":I
    .restart local v15    # "surfaceInsetsH":I
    :cond_74
    move/from16 v24, v14

    move/from16 v25, v15

    .end local v14    # "surfaceInsetsV":I
    .end local v15    # "surfaceInsetsH":I
    .restart local v24    # "surfaceInsetsV":I
    .restart local v25    # "surfaceInsetsH":I
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v10

    move/from16 v18, v11

    move/from16 v20, v13

    move/from16 v21, v23

    move/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1348
    .local v10, "scale":Landroid/view/animation/ScaleAnimation;
    :goto_8b
    iget v12, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v12, v14

    .line 1349
    .local v12, "sourceHCenter":I
    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    .line 1350
    .local v14, "sourceVCenter":I
    iget v15, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    .line 1351
    .local v15, "destHCenter":I
    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v1, v1, v16

    .line 1352
    .local v1, "destVCenter":I
    if-eqz p4, :cond_b6

    sub-int v16, v12, v15

    goto :goto_b8

    :cond_b6
    sub-int v16, v15, v12

    :goto_b8
    move/from16 v26, v16

    .line 1353
    .local v26, "fromX":I
    if-eqz p4, :cond_bf

    sub-int v16, v14, v1

    goto :goto_c1

    :cond_bf
    sub-int v16, v1, v14

    :goto_c1
    move/from16 v27, v16

    .line 1354
    .local v27, "fromY":I
    move/from16 v28, v1

    .end local v1    # "destVCenter":I
    .local v28, "destVCenter":I
    if-eqz p4, :cond_da

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    move/from16 v29, v3

    move/from16 v2, v26

    int-to-float v3, v2

    .end local v3    # "scaleVCenter":F
    .end local v26    # "fromX":I
    .local v2, "fromX":I
    .local v29, "scaleVCenter":F
    move/from16 v30, v5

    move/from16 v4, v27

    int-to-float v5, v4

    .end local v5    # "sourceWidth":F
    .end local v27    # "fromY":I
    .local v4, "fromY":I
    .local v30, "sourceWidth":F
    move/from16 v31, v6

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .end local v6    # "sourceHeight":F
    .local v31, "sourceHeight":F
    goto :goto_ec

    .line 1355
    .end local v2    # "fromX":I
    .end local v4    # "fromY":I
    .end local v29    # "scaleVCenter":F
    .end local v30    # "sourceWidth":F
    .end local v31    # "sourceHeight":F
    .restart local v3    # "scaleVCenter":F
    .restart local v5    # "sourceWidth":F
    .restart local v6    # "sourceHeight":F
    .restart local v26    # "fromX":I
    .restart local v27    # "fromY":I
    :cond_da
    move/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v2, v26

    move/from16 v4, v27

    const/4 v6, 0x0

    .end local v3    # "scaleVCenter":F
    .end local v5    # "sourceWidth":F
    .end local v6    # "sourceHeight":F
    .end local v26    # "fromX":I
    .end local v27    # "fromY":I
    .restart local v2    # "fromX":I
    .restart local v4    # "fromY":I
    .restart local v29    # "scaleVCenter":F
    .restart local v30    # "sourceWidth":F
    .restart local v31    # "sourceHeight":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v2

    int-to-float v5, v4

    invoke-direct {v1, v6, v3, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1356
    .local v1, "translation":Landroid/view/animation/TranslateAnimation;
    :goto_ec
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1357
    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1359
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1360
    .local v3, "callback":Landroid/os/IRemoteCallback;
    if-eqz v3, :cond_fe

    .line 1361
    new-instance v5, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v5, v0, v3}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1374
    :cond_fe
    return-object v9
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 38
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 811
    const/4 v3, 0x0

    if-eqz p2, :cond_161

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 813
    .local v6, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 817
    .local v14, "appHeight":I
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 819
    const/4 v7, 0x0

    .line 820
    .local v7, "t":F
    if-lez v14, :cond_25

    .line 821
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 823
    .end local v7    # "t":F
    .local v15, "t":F
    :cond_25
    move v15, v7

    iget v7, v0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    mul-float/2addr v8, v15

    float-to-int v8, v8

    add-int/2addr v7, v8

    .line 824
    .local v7, "translationY":I
    const/4 v8, 0x0

    .line 825
    .local v8, "translationX":I
    move v9, v7

    .line 826
    .local v9, "translationYCorrection":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 827
    .local v16, "centerX":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 828
    .local v17, "centerY":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v18, v10, 0x2

    .line 829
    .local v18, "halfWidth":I
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v19, v10, 0x2

    .line 830
    .local v19, "halfHeight":I
    sub-int v10, v16, v18

    iget v11, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .line 831
    .local v10, "clipStartX":I
    sub-int v11, v17, v19

    iget v12, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    .line 832
    .local v11, "clipStartY":I
    const/4 v12, 0x0

    .line 837
    .local v12, "cutOff":Z
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v17, v19

    if-le v13, v4, :cond_71

    .line 838
    sub-int v4, v17, v19

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v7, v4, v13

    .line 839
    const/4 v4, 0x0

    .line 840
    .end local v9    # "translationYCorrection":I
    .local v4, "translationYCorrection":I
    const/4 v9, 0x0

    .line 841
    .end local v11    # "clipStartY":I
    .local v9, "clipStartY":I
    const/4 v12, 0x1

    .line 843
    move/from16 v22, v4

    move v4, v7

    move/from16 v21, v9

    goto :goto_76

    .end local v4    # "translationYCorrection":I
    .local v9, "translationYCorrection":I
    .restart local v11    # "clipStartY":I
    :cond_71
    move v4, v7

    move/from16 v22, v9

    move/from16 v21, v11

    .end local v7    # "translationY":I
    .end local v9    # "translationYCorrection":I
    .end local v11    # "clipStartY":I
    .local v4, "translationY":I
    .local v21, "clipStartY":I
    .local v22, "translationYCorrection":I
    :goto_76
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v16, v18

    if-le v7, v9, :cond_84

    .line 844
    sub-int v7, v16, v18

    iget v9, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v7, v9

    .line 845
    const/4 v10, 0x0

    .line 846
    const/4 v12, 0x1

    .line 848
    :cond_84
    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int v9, v16, v18

    if-ge v7, v9, :cond_99

    .line 849
    add-int v7, v16, v18

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v7, v9

    .line 850
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v10, v6, v7

    .line 851
    const/4 v12, 0x1

    .line 853
    .end local v8    # "translationX":I
    .end local v10    # "clipStartX":I
    .local v11, "clipStartX":I
    .local v12, "translationX":I
    .local v13, "cutOff":Z
    :cond_99
    move v11, v10

    move v13, v12

    move v12, v8

    int-to-float v7, v12

    int-to-float v8, v4

    move-object/from16 v10, p4

    invoke-direct {v0, v13, v7, v8, v10}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v8

    .line 857
    .local v8, "duration":J
    new-instance v7, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 858
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v11

    const/4 v10, 0x0

    invoke-direct {v7, v11, v5, v10, v6}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    move-object v5, v7

    .line 859
    .local v5, "clipAnimLR":Landroid/view/animation/Animation;
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 860
    long-to-float v7, v8

    const/high16 v24, 0x40200000    # 2.5f

    div-float v7, v7, v24

    move/from16 v25, v11

    float-to-long v10, v7

    .end local v11    # "clipStartX":I
    .local v25, "clipStartX":I
    invoke-virtual {v5, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 862
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v10, v12

    int-to-float v11, v4

    invoke-direct {v7, v10, v3, v11, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v3, v7

    .line 863
    .local v3, "translate":Landroid/view/animation/TranslateAnimation;
    if-eqz v13, :cond_cf

    sget-object v7, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_d1

    .line 864
    :cond_cf
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 863
    :goto_d1
    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 865
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 867
    new-instance v24, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    .line 868
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int v10, v21, v7

    const/4 v11, 0x0

    const/16 v26, 0x0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v7

    move-object/from16 v7, v24

    move-wide/from16 v28, v8

    move/from16 v8, v21

    .end local v8    # "duration":J
    .local v28, "duration":J
    move v9, v10

    move v10, v11

    move/from16 v23, v25

    move v11, v14

    .end local v25    # "clipStartX":I
    .local v23, "clipStartX":I
    move/from16 v30, v12

    move/from16 v12, v22

    .end local v12    # "translationX":I
    .local v30, "translationX":I
    move/from16 v25, v13

    move/from16 v13, v26

    .end local v13    # "cutOff":Z
    .local v25, "cutOff":Z
    move v2, v14

    move-object/from16 v14, v27

    .end local v14    # "appHeight":I
    .local v2, "appHeight":I
    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    .line 872
    .local v7, "clipAnimTB":Landroid/view/animation/Animation;
    sget-object v8, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 873
    move-wide/from16 v8, v28

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 876
    .end local v28    # "duration":J
    .restart local v8    # "duration":J
    const-wide/16 v10, 0x4

    div-long v10, v8, v10

    .line 877
    .local v10, "alphaDuration":J
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 878
    .local v12, "alpha":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v12, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 879
    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 881
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 882
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 883
    invoke-virtual {v13, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 884
    invoke-virtual {v13, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 885
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 886
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 887
    invoke-virtual {v13, v6, v2, v6, v2}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 888
    move-object/from16 v20, v13

    .line 889
    .local v20, "anim":Landroid/view/animation/Animation;
    iput-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 890
    iput-wide v8, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 894
    if-eqz v25, :cond_154

    .line 895
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v2, v30

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .end local v3    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v30    # "translationX":I
    .local v2, "translationX":I
    .local v31, "appHeight":I
    .local v32, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_15b

    .end local v31    # "appHeight":I
    .end local v32    # "translate":Landroid/view/animation/TranslateAnimation;
    .local v2, "appHeight":I
    .restart local v3    # "translate":Landroid/view/animation/TranslateAnimation;
    .restart local v30    # "translationX":I
    :cond_154
    move/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v2, v30

    .end local v3    # "translate":Landroid/view/animation/TranslateAnimation;
    .end local v30    # "translationX":I
    .local v2, "translationX":I
    .restart local v31    # "appHeight":I
    .restart local v32    # "translate":Landroid/view/animation/TranslateAnimation;
    const/4 v3, 0x0

    :goto_15b
    iput v3, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 896
    .end local v2    # "translationX":I
    .end local v4    # "translationY":I
    .end local v5    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v6    # "appWidth":I
    .end local v7    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v8    # "duration":J
    .end local v10    # "alphaDuration":J
    .end local v12    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .end local v15    # "t":F
    .end local v16    # "centerX":I
    .end local v17    # "centerY":I
    .end local v18    # "halfWidth":I
    .end local v19    # "halfHeight":I
    .end local v21    # "clipStartY":I
    .end local v22    # "translationYCorrection":I
    .end local v23    # "clipStartX":I
    .end local v25    # "cutOff":Z
    .end local v31    # "appHeight":I
    .end local v32    # "translate":Landroid/view/animation/TranslateAnimation;
    nop

    .line 923
    move-object/from16 v2, v20

    goto :goto_195

    .line 898
    .end local v20    # "anim":Landroid/view/animation/Animation;
    :cond_161
    packed-switch v1, :pswitch_data_196

    .line 904
    const-wide/16 v4, 0x150

    goto :goto_16b

    .line 901
    :pswitch_167
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v4, v2

    .line 902
    .local v4, "duration":J
    nop

    .line 904
    :goto_16b
    nop

    .line 907
    const/16 v2, 0xe

    if-eq v1, v2, :cond_17e

    const/16 v2, 0xf

    if-ne v1, v2, :cond_175

    goto :goto_17e

    .line 917
    :cond_175
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v3, 0x1

    goto :goto_189

    .line 913
    :cond_17e
    :goto_17e
    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 914
    .local v2, "anim":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 917
    :goto_189
    nop

    .line 919
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 920
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 921
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 923
    .end local v4    # "duration":J
    :goto_195
    return-object v2

    :pswitch_data_196
    .packed-switch 0x6
        :pswitch_167
        :pswitch_167
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .line 1137
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1d

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_13

    goto :goto_1d

    .line 1140
    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 1141
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1

    .line 1138
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_1d
    :goto_1d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .registers 13
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    .line 1146
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1147
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1149
    cmpl-float v1, p3, p4

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f666666    # 0.9f

    if-lez v1, :cond_20

    .line 1151
    mul-float/2addr v3, p3

    mul-float/2addr v2, p4

    add-float v5, v3, v2

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p2

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2d

    .line 1154
    :cond_20
    mul-float/2addr v2, p3

    mul-float/2addr v3, p4

    add-float v5, v2, v3

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p1

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1156
    :goto_2d
    return-object v0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 16
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;

    .line 1489
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1491
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1492
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1494
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1495
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1496
    .local v2, "set":Landroid/view/animation/AnimationSet;
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1497
    .local v4, "fromWidth":F
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1498
    .local v5, "toWidth":F
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1502
    .local v6, "fromHeight":F
    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 1503
    .local v7, "toHeight":F
    const/4 v8, 0x0

    .line 1504
    .local v8, "translateAdjustment":I
    cmpg-float v9, v4, v5

    if-gtz v9, :cond_60

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_60

    .line 1508
    new-instance v9, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_74

    .line 1512
    :cond_60
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    div-float v10, v4, v5

    div-float v11, v6, v7

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1516
    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    float-to-int v8, v9

    .line 1522
    :goto_74
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v11, v1, v11

    sub-int/2addr v11, v8

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1524
    .local v9, "translate":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1525
    const-wide/16 v10, 0x150

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1526
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1527
    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 21
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "containingFrame"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 682
    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 684
    .local v2, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 685
    .local v3, "appHeight":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_68

    .line 687
    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    .line 688
    .local v7, "scaleW":F
    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    .line 689
    .local v8, "scaleH":F
    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    .line 690
    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 691
    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v16

    move v10, v7

    move v12, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 692
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 694
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 695
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 697
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 698
    .local v6, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 699
    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 700
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 701
    nop

    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v6    # "set":Landroid/view/animation/AnimationSet;
    .end local v7    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    move-object v4, v6

    .line 702
    .local v4, "a":Landroid/view/animation/Animation;
    goto :goto_80

    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_68
    const/16 v7, 0xe

    if-eq v1, v7, :cond_77

    const/16 v7, 0xf

    if-ne v1, v7, :cond_71

    goto :goto_77

    .line 712
    :cond_71
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_80

    .line 708
    :cond_77
    :goto_77
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v7

    .line 709
    .restart local v4    # "a":Landroid/view/animation/Animation;
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 712
    :goto_80
    nop

    .line 719
    packed-switch v1, :pswitch_data_9c

    .line 725
    const-wide/16 v7, 0x150

    goto :goto_8b

    .line 722
    :pswitch_87
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v7, v6

    .line 723
    .local v7, "duration":J
    nop

    .line 725
    :goto_8b
    nop

    .line 728
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 729
    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 730
    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 731
    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 732
    return-object v4

    nop

    :pswitch_data_9c
    .packed-switch 0x6
        :pswitch_87
        :pswitch_87
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .registers 4

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_18

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->startFetchingAppTransitionSpecs()V

    .line 2023
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2025
    .local v0, "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2026
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 2048
    .end local v0    # "future":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_18
    return-void
.end method

.method private getAspectScaleDuration()J
    .registers 3

    .line 1160
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1161
    const-wide/16 v0, 0x1c5

    return-wide v0

    .line 1163
    :cond_9
    const-wide/16 v0, 0x150

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    .line 1168
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 1169
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    .line 1171
    :cond_9
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 522
    if-eqz p1, :cond_2f

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_2f

    .line 526
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_f

    :cond_d
    const-string v0, "android"

    .line 527
    .local v0, "packageName":Ljava/lang/String;
    :goto_f
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 528
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_1a

    .line 529
    const-string v0, "android"

    .line 532
    :cond_1a
    const-string v2, "android"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppTransition;->mDefaultActivityAnimation:Z

    .line 535
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    .line 538
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 544
    if-eqz p1, :cond_18

    .line 545
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_b

    .line 546
    const-string p1, "android"

    .line 550
    :cond_b
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    .line 553
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 736
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    goto :goto_13

    .line 741
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_22

    .line 738
    :cond_13
    :goto_13
    const-string v0, "WindowManager"

    const-string v1, "Starting rect for app requested, but none available"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 743
    :goto_22
    return-void
.end method

.method static isActivityTransit(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 2319
    const/4 v0, 0x6

    if-eq p0, v0, :cond_d

    const/4 v0, 0x7

    if-eq p0, v0, :cond_d

    const/16 v0, 0x12

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isKeyguardGoingAwayTransit(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 2296
    const/16 v0, 0x14

    if-eq p0, v0, :cond_b

    const/16 v0, 0x15

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private static isKeyguardTransit(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 2301
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x16

    if-eq p0, v0, :cond_11

    const/16 v0, 0x17

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private static isTaskOpenTransit(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 2313
    const/16 v0, 0x8

    if-eq p0, v0, :cond_f

    const/16 v0, 0x10

    if-eq p0, v0, :cond_f

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static isTaskTransit(I)Z
    .registers 2
    .param p0, "transit"    # I

    .line 2306
    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransit(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x9

    if-eq p0, v0, :cond_15

    const/16 v0, 0xb

    if-eq p0, v0, :cond_15

    const/16 v0, 0x11

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static synthetic lambda$fetchAppTransitionSpecsFromFuture$0(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .registers 8
    .param p1, "future"    # Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 2027
    const/4 v0, 0x0

    move-object v1, v0

    .line 2029
    .local v1, "specs":[Landroid/view/AppTransitionAnimationSpec;
    :try_start_2
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2030
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_f

    move-object v1, v2

    .line 2033
    goto :goto_26

    .line 2031
    :catch_f
    move-exception v2

    .line 2032
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fetch app transition specs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_26
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2037
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 2040
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 2042
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->finishFetchingAppTransitionSpecs()V

    .line 2043
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2046
    return-void

    .line 2043
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 586
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 587
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 588
    .local v0, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v0, :cond_13

    .line 589
    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 592
    .end local v0    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "transit"    # I

    .line 1817
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 1818
    const/4 v0, 0x0

    return-object v0

    .line 1820
    :cond_8
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 1824
    .local v0, "toShade":Z
    :goto_12
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v4, 0x15

    if-ne p1, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    invoke-interface {v3, v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExitForAppWindow(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private needsBoosting()Z
    .registers 6

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 479
    .local v0, "recentsAnimRunning":Z
    :goto_d
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v3, v2, :cond_1f

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    goto :goto_20

    :cond_1f
    :goto_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method private notifyAppTransitionCancelledLocked(I)V
    .registers 4
    .param p1, "transit"    # I

    .line 502
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 503
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 505
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .registers 3

    .line 496
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 497
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 499
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .registers 24
    .param p1, "transit"    # I
    .param p2, "openToken"    # Landroid/os/IBinder;
    .param p3, "closeToken"    # Landroid/os/IBinder;
    .param p4, "duration"    # J
    .param p6, "statusBarAnimationStartTime"    # J
    .param p8, "statusBarAnimationDuration"    # J

    move-object v0, p0

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "redoLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 512
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v3

    or-int/2addr v1, v3

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 515
    .end local v2    # "i":I
    :cond_27
    return v1
.end method

.method private prepare()Z
    .registers 3

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 403
    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 404
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    .line 405
    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    .line 406
    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    .line 407
    const-wide/16 v0, 0x150

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    .line 408
    const/4 v0, 0x1

    return v0

    .line 410
    :cond_17
    return v1
.end method

.method private prepareMiuiAppTransitionIfNeeded(I)V
    .registers 4
    .param p1, "transit"    # I

    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_10

    .line 2389
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2395
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadBackHomeAnimation:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsInMultiWindowMode:Z

    if-nez v0, :cond_1e

    const/16 v0, 0xd

    if-eq p1, v0, :cond_31

    .line 2397
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isAppTransitionSkipped()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2398
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 2399
    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 2401
    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->setLoadBackHomeAnimation(Z)V

    .line 2406
    :cond_31
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadBackHomeAnimation:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mAllowCustomAnimation:Z

    if-nez v0, :cond_3d

    .line 2407
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2409
    :cond_3d
    return-void
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V
    .registers 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 761
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 763
    return-void
.end method

.method private setAppTransition(II)V
    .registers 5
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 321
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 322
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 323
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 325
    return-void
.end method

.method private setAppTransitionState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 464
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 465
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    .line 466
    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .registers 4
    .param p1, "uiMode"    # I
    .param p2, "orientation"    # I

    .line 2328
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v0, 0x1

    return v0
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .line 2151
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_36

    .line 2171
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2169
    :pswitch_1a
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    .line 2157
    :pswitch_1d
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    .line 2167
    :pswitch_20
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    .line 2165
    :pswitch_23
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    .line 2163
    :pswitch_26
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    .line 2161
    :pswitch_29
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    .line 2159
    :pswitch_2c
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    .line 2155
    :pswitch_2f
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    .line 2153
    :pswitch_32
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_5
        :pswitch_1a
    .end packed-switch
.end method

.method private updateToTranslucentAnimIfNeeded(II)I
    .registers 4
    .param p1, "anim"    # I
    .param p2, "transit"    # I

    .line 596
    const/16 v0, 0x18

    if-ne p2, v0, :cond_d

    const v0, 0x10a000f

    if-ne p1, v0, :cond_d

    .line 597
    const v0, 0x10a0012

    return v0

    .line 599
    :cond_d
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1a

    const v0, 0x10a000e

    if-ne p1, v0, :cond_1a

    .line 600
    const v0, 0x10a0011

    return v0

    .line 602
    :cond_1a
    return p1
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .registers 4

    .line 1536
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_17

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_17

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method clear()V
    .registers 3

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 447
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 448
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 449
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 450
    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 453
    return-void
.end method

.method clearNextAppTransitionBackHomeType()V
    .registers 3

    .line 2369
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_9

    .line 2370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2372
    :cond_9
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .registers 45
    .param p1, "thumbTransitState"    # I
    .param p2, "uiMode"    # I
    .param p3, "orientation"    # I
    .param p4, "transit"    # I
    .param p5, "containingFrame"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p8, "stableInsets"    # Landroid/graphics/Rect;
    .param p9, "freeform"    # Z
    .param p10, "taskId"    # I

    move-object/from16 v7, p0

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    .line 1184
    move/from16 v15, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 1185
    .local v16, "appWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 1186
    .local v17, "appHeight":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1187
    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1188
    .local v6, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v6, :cond_27

    int-to-float v1, v6

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    move/from16 v18, v1

    .line 1189
    .local v18, "thumbWidth":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1190
    .local v4, "thumbHeightI":I
    if-lez v4, :cond_34

    int-to-float v1, v4

    goto :goto_35

    :cond_34
    move v1, v0

    :goto_35
    move/from16 v19, v1

    .line 1191
    .local v19, "thumbHeight":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v2

    .line 1192
    .local v5, "thumbStartX":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v20, v1, v2

    .line 1194
    .local v20, "thumbStartY":I
    const/16 v1, 0xe

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_214

    .line 1307
    move v12, v4

    move v14, v5

    move v8, v6

    .end local v4    # "thumbHeightI":I
    .end local v5    # "thumbStartX":I
    .end local v6    # "thumbWidthI":I
    .local v8, "thumbWidthI":I
    .local v12, "thumbHeightI":I
    .local v14, "thumbStartX":I
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1297
    .end local v8    # "thumbWidthI":I
    .end local v12    # "thumbHeightI":I
    .end local v14    # "thumbStartX":I
    .restart local v4    # "thumbHeightI":I
    .restart local v5    # "thumbStartX":I
    .restart local v6    # "thumbWidthI":I
    :pswitch_5b
    if-ne v9, v1, :cond_64

    .line 1300
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    goto :goto_74

    .line 1302
    :cond_64
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1304
    .local v0, "a":Landroid/view/animation/Animation;
    goto/16 :goto_1fb

    .line 1286
    .end local v0    # "a":Landroid/view/animation/Animation;
    :pswitch_6c
    if-ne v9, v1, :cond_76

    .line 1289
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .restart local v0    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    :goto_74
    goto/16 :goto_1fb

    .line 1291
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "a":Landroid/view/animation/Animation;
    :cond_76
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    .line 1293
    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_1fb

    .line 1197
    .end local v0    # "a":Landroid/view/animation/Animation;
    :pswitch_7e
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_85

    move/from16 v21, v1

    goto :goto_87

    :cond_85
    move/from16 v21, v3

    .line 1198
    .local v21, "scaleUp":Z
    :goto_87
    if-eqz p9, :cond_92

    if-eqz v21, :cond_92

    .line 1199
    invoke-direct {v7, v10, v12, v15}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1307
    .end local v21    # "scaleUp":Z
    .restart local v0    # "a":Landroid/view/animation/Animation;
    .restart local v1    # "a":Landroid/view/animation/Animation;
    :goto_8f
    move-object v1, v0

    goto/16 :goto_1fb

    .line 1201
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "a":Landroid/view/animation/Animation;
    .restart local v21    # "scaleUp":Z
    :cond_92
    if-eqz p9, :cond_99

    .line 1202
    invoke-direct {v7, v10, v12, v15}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_8f

    .line 1205
    :cond_99
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1208
    .local v0, "set":Landroid/view/animation/AnimationSet;
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1209
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1213
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1214
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1217
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1218
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1220
    move/from16 v3, p2

    move/from16 v1, p3

    invoke-direct {v7, v3, v1}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v23

    if-eqz v23, :cond_1af

    .line 1222
    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v2, v16, v2

    iget v1, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float v1, v18, v1

    .line 1224
    .local v1, "scale":F
    iget-boolean v2, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_e0

    .line 1225
    div-float v2, v19, v1

    float-to-int v2, v2

    .line 1226
    .local v2, "unscaledThumbHeight":I
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    .line 1229
    .end local v2    # "unscaledThumbHeight":I
    :cond_e0
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1231
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .line 1232
    if-eqz v21, :cond_ec

    move/from16 v25, v1

    goto :goto_ee

    :cond_ec
    const/high16 v25, 0x3f800000    # 1.0f

    :goto_ee
    if-eqz v21, :cond_f3

    .line 1233
    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_f5

    :cond_f3
    move/from16 v26, v1

    :goto_f5
    if-eqz v21, :cond_fa

    move/from16 v27, v1

    goto :goto_fc

    :cond_fa
    const/high16 v27, 0x3f800000    # 1.0f

    :goto_fc
    if-eqz v21, :cond_101

    .line 1234
    const/high16 v28, 0x3f800000    # 1.0f

    goto :goto_103

    :cond_101
    move/from16 v28, v1

    :goto_103
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v29, v3, v8

    .line 1235
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v30, v3, v8

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1236
    .local v2, "scaleAnim":Landroid/view/animation/Animation;
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    .line 1237
    .local v3, "targetX":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v22, 0x40000000    # 2.0f

    div-float v8, v8, v22

    .line 1238
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    .line 1239
    .local v8, "x":F
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    .line 1240
    .local v9, "targetY":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v22, 0x40000000    # 2.0f

    div-float v12, v12, v22

    .line 1241
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v22

    mul-float/2addr v14, v1

    sub-float/2addr v12, v14

    .line 1245
    .local v12, "y":F
    iget-boolean v14, v7, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v14, :cond_16a

    iget v14, v11, Landroid/graphics/Rect;->top:I

    if-nez v14, :cond_16a

    if-eqz v21, :cond_16a

    .line 1246
    iget-object v14, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v31, v1

    iget v1, v14, Landroid/graphics/Rect;->top:I

    .end local v1    # "scale":F
    .local v31, "scale":F
    iget v10, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v14, Landroid/graphics/Rect;->top:I

    .line 1247
    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    goto :goto_16c

    .line 1249
    .end local v31    # "scale":F
    .restart local v1    # "scale":F
    :cond_16a
    move/from16 v31, v1

    .end local v1    # "scale":F
    .restart local v31    # "scale":F
    :goto_16c
    sub-float v1, v3, v8

    .line 1250
    .local v1, "startX":F
    sub-float v10, v9, v12

    .line 1251
    .local v10, "startY":F
    if-eqz v21, :cond_180

    .line 1252
    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    move/from16 v32, v3

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    .end local v3    # "targetX":F
    .local v32, "targetX":F
    move/from16 v33, v8

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    .end local v8    # "x":F
    .local v33, "x":F
    invoke-direct {v14, v3, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_18d

    .line 1253
    .end local v32    # "targetX":F
    .end local v33    # "x":F
    .restart local v3    # "targetX":F
    .restart local v8    # "x":F
    :cond_180
    move/from16 v32, v3

    move/from16 v33, v8

    .end local v3    # "targetX":F
    .end local v8    # "x":F
    .restart local v32    # "targetX":F
    .restart local v33    # "x":F
    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v14, v3, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_18d
    move-object v3, v14

    .line 1254
    .local v3, "clipAnim":Landroid/view/animation/Animation;
    if-eqz v21, :cond_19b

    .line 1255
    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v10, v8

    const/4 v14, 0x0

    invoke-direct {v7, v1, v14, v8, v14}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_1a5

    .line 1256
    :cond_19b
    const/4 v14, 0x0

    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v10, v8

    invoke-direct {v7, v14, v1, v14, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1258
    .local v8, "translateAnim":Landroid/view/animation/Animation;
    :goto_1a5
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1259
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1260
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1262
    .end local v1    # "startX":F
    .end local v2    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v3    # "clipAnim":Landroid/view/animation/Animation;
    .end local v8    # "translateAnim":Landroid/view/animation/Animation;
    .end local v9    # "targetY":F
    .end local v10    # "startY":F
    .end local v12    # "y":F
    .end local v31    # "scale":F
    .end local v32    # "targetX":F
    .end local v33    # "x":F
    goto :goto_1f5

    .line 1264
    :cond_1af
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1265
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1267
    if-eqz v21, :cond_1cd

    .line 1268
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1d6

    .line 1269
    :cond_1cd
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1270
    .local v1, "clipAnim":Landroid/view/animation/Animation;
    :goto_1d6
    if-eqz v21, :cond_1e4

    .line 1271
    int-to-float v2, v5

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v20, v3

    int-to-float v3, v3

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8, v3, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_1ef

    .line 1273
    :cond_1e4
    const/4 v8, 0x0

    int-to-float v2, v5

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v20, v3

    int-to-float v3, v3

    invoke-direct {v7, v8, v2, v8, v3}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    .line 1276
    .local v2, "translateAnim":Landroid/view/animation/Animation;
    :goto_1ef
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1277
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1279
    .end local v1    # "clipAnim":Landroid/view/animation/Animation;
    .end local v2    # "translateAnim":Landroid/view/animation/Animation;
    :goto_1f5
    move-object v1, v0

    .line 1280
    .local v1, "a":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 1282
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    nop

    .line 1307
    .end local v21    # "scaleUp":Z
    :goto_1fb
    nop

    .line 1310
    nop

    .line 1311
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    .line 1310
    move-object v0, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move v12, v4

    move v14, v5

    move-wide v4, v8

    .end local v4    # "thumbHeightI":I
    .end local v5    # "thumbStartX":I
    .local v12, "thumbHeightI":I
    .restart local v14    # "thumbStartX":I
    move v8, v6

    move-object v6, v10

    .end local v6    # "thumbWidthI":I
    .local v8, "thumbWidthI":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :pswitch_data_214
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_6c
        :pswitch_5b
        :pswitch_7e
    .end packed-switch
.end method

.method createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .registers 13
    .param p1, "thumbnailDrawableRes"    # I
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 988
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 989
    .local v0, "width":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 991
    .local v1, "height":I
    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    .line 992
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 993
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 994
    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 996
    .local v4, "thumbnailSize":I
    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 997
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    add-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1002
    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1003
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1004
    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    .line 1006
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    return-object v6
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 11
    .param p1, "appRect"    # Landroid/graphics/Rect;

    .line 1010
    const-string v0, "android"

    const v1, 0x10a0021

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1012
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1013
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1012
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;
    .registers 40
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "contentInsets"    # Landroid/graphics/Rect;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "taskId"    # I
    .param p5, "uiMode"    # I
    .param p6, "orientation"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v10

    .line 1024
    .local v10, "thumbWidthI":I
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v10, :cond_10

    int-to-float v1, v10

    goto :goto_11

    :cond_10
    move v1, v0

    :goto_11
    move v11, v1

    .line 1025
    .local v11, "thumbWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v12

    .line 1026
    .local v12, "thumbHeightI":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 1028
    .local v13, "appWidth":I
    int-to-float v1, v13

    div-float v21, v1, v11

    .line 1029
    .local v21, "scaleW":F
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v6, p4

    invoke-virtual {v7, v6, v1}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1036
    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v7, v4, v5}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1037
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 1038
    .local v1, "fromX":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1042
    .local v2, "fromY":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v14, v21, v0

    mul-float/2addr v3, v14

    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v3, v14

    .line 1043
    .local v3, "toX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v0, v21

    sub-float v15, v0, v15

    mul-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 1044
    .local v14, "toY":F
    iget-object v15, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    .line 1045
    .local v15, "pivotX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v0, v16, 0x2

    int-to-float v0, v0

    div-float v0, v0, v21

    .line 1046
    .local v0, "pivotY":F
    move/from16 v22, v0

    iget-boolean v0, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    .end local v0    # "pivotY":F
    .local v22, "pivotY":F
    if-eqz v0, :cond_76

    .line 1049
    int-to-float v0, v12

    sub-float/2addr v2, v0

    .line 1050
    int-to-float v0, v12

    mul-float v0, v0, v21

    sub-float/2addr v14, v0

    .line 1058
    .end local v1    # "fromX":F
    .end local v15    # "pivotX":F
    .local v0, "fromY":F
    .local v2, "fromX":F
    .local v22, "pivotX":F
    .local v23, "pivotY":F
    :cond_76
    move v0, v2

    move/from16 v23, v22

    move v2, v1

    move/from16 v22, v15

    goto :goto_96

    .line 1053
    .end local v0    # "fromY":F
    .end local v2    # "fromX":F
    .end local v3    # "toX":F
    .end local v14    # "toY":F
    .end local v22    # "pivotX":F
    .end local v23    # "pivotY":F
    :cond_7d
    const/4 v0, 0x0

    .line 1054
    .local v0, "pivotX":F
    const/4 v1, 0x0

    .line 1055
    .local v1, "pivotY":F
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 1056
    .restart local v2    # "fromX":F
    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 1057
    .local v3, "fromY":F
    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    .line 1058
    .local v14, "toX":F
    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move/from16 v22, v0

    move/from16 v23, v1

    move v0, v3

    move v3, v14

    move v14, v15

    .end local v1    # "pivotY":F
    .local v0, "fromY":F
    .local v3, "toX":F
    .local v14, "toY":F
    .restart local v22    # "pivotX":F
    .restart local v23    # "pivotY":F
    :goto_96
    move v1, v14

    .line 1060
    .end local v14    # "toY":F
    .local v1, "toY":F
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v14

    .line 1061
    .local v14, "duration":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 1062
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    iget-boolean v4, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-wide/from16 v24, v14

    const/4 v15, 0x0

    .end local v14    # "duration":J
    .local v24, "duration":J
    const/4 v14, 0x0

    if-eqz v4, :cond_184

    .line 1064
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move v5, v14

    move-wide/from16 v26, v24

    move-object v14, v4

    .end local v24    # "duration":J
    .local v26, "duration":J
    move v5, v15

    move/from16 v15, v16

    move/from16 v16, v21

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1065
    .local v4, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1066
    move-wide/from16 v14, v26

    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1067
    .end local v26    # "duration":J
    .restart local v14    # "duration":J
    move/from16 v28, v11

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "thumbWidth":F
    .local v28, "thumbWidth":F
    move/from16 v29, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v13, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .end local v13    # "appWidth":I
    .local v29, "appWidth":I
    move-object v5, v11

    .line 1068
    .local v5, "alpha":Landroid/view/animation/Animation;
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v13, 0x13

    if-ne v11, v13, :cond_dc

    .line 1069
    sget-object v11, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_de

    :cond_dc
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 1068
    :goto_de
    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1070
    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v11, v13, :cond_ec

    .line 1071
    const-wide/16 v16, 0x2

    div-long v16, v14, v16

    .line 1070
    move-wide/from16 v8, v16

    goto :goto_ee

    .line 1072
    :cond_ec
    nop

    .line 1070
    move-wide v8, v14

    :goto_ee
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1073
    invoke-direct {v7, v2, v3, v0, v1}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1074
    .local v8, "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1075
    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1077
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1078
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1082
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1083
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 1084
    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 1086
    move-object/from16 v9, p2

    if-eqz v9, :cond_151

    .line 1087
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move/from16 v30, v10

    iget v10, v9, Landroid/graphics/Rect;->left:I

    .end local v10    # "thumbWidthI":I
    .local v30, "thumbWidthI":I
    neg-int v10, v10

    int-to-float v10, v10

    mul-float v10, v10, v21

    float-to-int v10, v10

    move/from16 v31, v12

    iget v12, v9, Landroid/graphics/Rect;->top:I

    .end local v12    # "thumbHeightI":I
    .local v31, "thumbHeightI":I
    neg-int v12, v12

    int-to-float v12, v12

    mul-float v12, v12, v21

    float-to-int v12, v12

    iget v13, v9, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float v13, v13, v21

    float-to-int v13, v13

    move/from16 v32, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    .end local v0    # "fromY":F
    .local v32, "fromY":F
    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v11, v10, v12, v13, v0}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_157

    .line 1093
    .end local v30    # "thumbWidthI":I
    .end local v31    # "thumbHeightI":I
    .end local v32    # "fromY":F
    .restart local v0    # "fromY":F
    .restart local v10    # "thumbWidthI":I
    .restart local v12    # "thumbHeightI":I
    :cond_151
    move/from16 v32, v0

    move/from16 v30, v10

    move/from16 v31, v12

    .end local v0    # "fromY":F
    .end local v10    # "thumbWidthI":I
    .end local v12    # "thumbHeightI":I
    .restart local v30    # "thumbWidthI":I
    .restart local v31    # "thumbHeightI":I
    .restart local v32    # "fromY":F
    :goto_157
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1094
    .local v0, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1095
    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1098
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1099
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1100
    iget-boolean v11, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v11, :cond_176

    .line 1102
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1104
    :cond_176
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1105
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1106
    nop

    .end local v0    # "clipAnim":Landroid/view/animation/Animation;
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    move-object v0, v10

    .line 1107
    .local v0, "a":Landroid/view/animation/Animation;
    nop

    .line 1127
    move-object v12, v0

    move-wide v10, v14

    move/from16 v5, v32

    goto :goto_1d9

    .line 1109
    .end local v14    # "duration":J
    .end local v28    # "thumbWidth":F
    .end local v29    # "appWidth":I
    .end local v30    # "thumbWidthI":I
    .end local v31    # "thumbHeightI":I
    .end local v32    # "fromY":F
    .local v0, "fromY":F
    .local v10, "thumbWidthI":I
    .restart local v11    # "thumbWidth":F
    .restart local v12    # "thumbHeightI":I
    .restart local v13    # "appWidth":I
    .restart local v24    # "duration":J
    :cond_184
    move/from16 v32, v0

    move/from16 v30, v10

    move/from16 v28, v11

    move/from16 v31, v12

    move/from16 v29, v13

    move v5, v15

    move-wide/from16 v14, v24

    .end local v0    # "fromY":F
    .end local v10    # "thumbWidthI":I
    .end local v11    # "thumbWidth":F
    .end local v12    # "thumbHeightI":I
    .end local v13    # "appWidth":I
    .end local v24    # "duration":J
    .restart local v14    # "duration":J
    .restart local v28    # "thumbWidth":F
    .restart local v29    # "appWidth":I
    .restart local v30    # "thumbWidthI":I
    .restart local v31    # "thumbHeightI":I
    .restart local v32    # "fromY":F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-wide v10, v14

    move-object v14, v0

    .end local v14    # "duration":J
    .local v10, "duration":J
    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1110
    .local v0, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1111
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1112
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1113
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v5, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1114
    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1115
    move/from16 v5, v32

    invoke-direct {v7, v3, v2, v1, v5}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1116
    .end local v32    # "fromY":F
    .local v5, "fromY":F
    .restart local v8    # "translate":Landroid/view/animation/Animation;
    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1117
    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1120
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1121
    .local v12, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1122
    iget-boolean v13, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v13, :cond_1d5

    .line 1124
    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    :cond_1d5
    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1127
    nop

    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "translate":Landroid/view/animation/Animation;
    .local v12, "a":Landroid/view/animation/Animation;
    :goto_1d9
    move v8, v1

    move-object v1, v12

    .line 1130
    .end local v12    # "a":Landroid/view/animation/Animation;
    .local v1, "a":Landroid/view/animation/Animation;
    .local v8, "toY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v15, v5

    move-object v0, v7

    .end local v5    # "fromY":F
    .local v15, "fromY":F
    move/from16 v16, v2

    move/from16 v2, v29

    .end local v2    # "fromX":F
    .local v16, "fromX":F
    move/from16 v17, v3

    move v3, v4

    .end local v3    # "toX":F
    .local v17, "toX":F
    move-wide v4, v12

    move-object v12, v6

    move-object v6, v14

    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .registers 27
    .param p1, "thumbTransitState"    # I
    .param p2, "containingFrame"    # Landroid/graphics/Rect;
    .param p3, "transit"    # I
    .param p4, "taskId"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1426
    .local v2, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1427
    .local v3, "appHeight":I
    move/from16 v4, p4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 1429
    .local v5, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1430
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    goto :goto_1f

    :cond_1e
    move v6, v2

    .line 1431
    .local v6, "thumbWidthI":I
    :goto_1f
    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_25

    int-to-float v8, v6

    goto :goto_26

    :cond_25
    move v8, v7

    .line 1432
    .local v8, "thumbWidth":F
    :goto_26
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v9

    goto :goto_2e

    :cond_2d
    move v9, v3

    .line 1433
    .local v9, "thumbHeightI":I
    :goto_2e
    if-lez v9, :cond_32

    int-to-float v10, v9

    goto :goto_33

    :cond_32
    move v10, v7

    .line 1435
    .local v10, "thumbHeight":F
    :goto_33
    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_c2

    .line 1482
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v11, "Invalid thumbnail transition state"

    invoke-direct {v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1466
    :pswitch_3f
    int-to-float v12, v2

    div-float v12, v8, v12

    .line 1467
    .local v12, "scaleW":F
    int-to-float v13, v3

    div-float v14, v10, v13

    .line 1468
    .local v14, "scaleH":F
    new-instance v20, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    .line 1469
    invoke-static {v13, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 1470
    invoke-static {v13, v14}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v19

    move-object/from16 v13, v20

    move/from16 v21, v14

    move v14, v15

    .end local v14    # "scaleH":F
    .local v21, "scaleH":F
    move v15, v12

    move/from16 v17, v21

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1472
    .local v13, "scale":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v7, v14

    .line 1474
    .local v7, "alpha":Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1475
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1476
    invoke-virtual {v11, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1477
    invoke-virtual {v11, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1478
    move-object v14, v11

    .line 1479
    .local v14, "a":Landroid/view/animation/Animation;
    goto :goto_bc

    .line 1461
    .end local v7    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    .end local v12    # "scaleW":F
    .end local v13    # "scale":Landroid/view/animation/Animation;
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v21    # "scaleH":F
    :pswitch_7d
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 1462
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_bc

    .line 1447
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_84
    const/16 v12, 0xe

    if-ne v1, v12, :cond_8f

    .line 1451
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v12

    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_bc

    .line 1454
    .end local v14    # "a":Landroid/view/animation/Animation;
    :cond_8f
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    .line 1456
    .restart local v14    # "a":Landroid/view/animation/Animation;
    goto :goto_bc

    .line 1438
    .end local v14    # "a":Landroid/view/animation/Animation;
    :pswitch_96
    int-to-float v7, v2

    div-float v7, v8, v7

    .line 1439
    .local v7, "scaleW":F
    int-to-float v11, v3

    div-float v11, v10, v11

    .line 1440
    .local v11, "scaleH":F
    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 1441
    invoke-static {v12, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v17

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1442
    invoke-static {v12, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    move-object/from16 v12, v19

    move v13, v7

    move v15, v11

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v14, v19

    .line 1443
    .restart local v14    # "a":Landroid/view/animation/Animation;
    nop

    .line 1482
    .end local v7    # "scaleW":F
    .end local v11    # "scaleH":F
    :goto_bc
    move-object v7, v14

    .line 1485
    .end local v14    # "a":Landroid/view/animation/Animation;
    .local v7, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v11

    return-object v11

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_96
        :pswitch_84
        :pswitch_7d
        :pswitch_3f
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .registers 23
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I
    .param p4, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1384
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1385
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    .line 1386
    .local v3, "thumbWidthI":I
    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_15

    int-to-float v5, v3

    goto :goto_16

    :cond_15
    move v5, v4

    .line 1387
    .local v5, "thumbWidth":F
    :goto_16
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    .line 1388
    .local v6, "thumbHeightI":I
    if-lez v6, :cond_1e

    int-to-float v7, v6

    goto :goto_1f

    :cond_1e
    move v7, v4

    .line 1390
    .local v7, "thumbHeight":F
    :goto_1f
    iget-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v8, :cond_6d

    .line 1392
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1393
    .local v8, "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1394
    .local v16, "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v11, v4, v8

    .line 1395
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v11, v4, v16

    .line 1396
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v11, v8

    move/from16 v13, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1397
    .local v9, "scale":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1399
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    .line 1400
    .local v4, "alpha":Landroid/view/animation/Animation;
    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1403
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1404
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1405
    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1406
    nop

    .end local v4    # "alpha":Landroid/view/animation/Animation;
    .end local v8    # "scaleW":F
    .end local v9    # "scale":Landroid/view/animation/Animation;
    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    .end local v16    # "scaleH":F
    move-object v4, v10

    .line 1407
    .local v4, "a":Landroid/view/animation/Animation;
    nop

    .line 1413
    move-object/from16 v17, v4

    goto :goto_94

    .line 1409
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_6d
    int-to-float v8, v1

    div-float/2addr v8, v5

    .line 1410
    .restart local v8    # "scaleW":F
    int-to-float v9, v2

    div-float v16, v9, v7

    .line 1411
    .restart local v16    # "scaleH":F
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v10, v4, v8

    .line 1412
    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v4, v4, v16

    .line 1413
    invoke-static {v9, v4}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v10, v8

    move/from16 v12, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .end local v8    # "scaleW":F
    .end local v16    # "scaleH":F
    .local v17, "a":Landroid/view/animation/Animation;
    :goto_94
    move-object/from16 v4, v17

    .line 1416
    .end local v17    # "a":Landroid/view/animation/Animation;
    .restart local v4    # "a":Landroid/view/animation/Animation;
    move/from16 v8, p3

    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v9

    return-object v9
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2185
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2186
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_2a

    .line 2187
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2188
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    :cond_2a
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_136

    goto/16 :goto_ef

    .line 2200
    :pswitch_31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2203
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2204
    goto/16 :goto_ef

    .line 2221
    :pswitch_53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2222
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2223
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2224
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_ef

    .line 2206
    :pswitch_7e
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 2207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2209
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2213
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2215
    goto :goto_ef

    .line 2192
    :pswitch_c0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2193
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2194
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2197
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    nop

    .line 2230
    :goto_ef
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_101

    .line 2231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2234
    :cond_101
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_133

    .line 2235
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    :cond_133
    return-void

    nop

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_7e
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_31
    .end packed-switch
.end method

.method freeze()V
    .registers 4

    .line 456
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 457
    .local v0, "transit":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 459
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    .line 460
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    .line 461
    return-void
.end method

.method getAppStackClipMode()I
    .registers 3

    .line 1831
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_d

    goto :goto_24

    .line 1837
    :cond_d
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    goto :goto_22

    .line 1839
    :cond_20
    const/4 v0, 0x0

    goto :goto_23

    .line 1838
    :cond_22
    :goto_22
    const/4 v0, 0x2

    .line 1835
    :goto_23
    return v0

    .line 1833
    :cond_24
    :goto_24
    const/4 v0, 0x1

    return v0
.end method

.method getAppTransition()I
    .registers 2

    .line 317
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;
    .registers 4
    .param p1, "taskId"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 361
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_c

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 364
    :cond_c
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method getLastClipRevealMaxTranslation()I
    .registers 2

    .line 776
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .registers 3

    .line 769
    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    .line 747
    .local v0, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-nez v0, :cond_c

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 750
    :cond_c
    if-eqz v0, :cond_19

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_13

    goto :goto_19

    .line 755
    :cond_13
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3c

    .line 751
    :cond_19
    :goto_19
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting rect for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requested, but not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 753
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 757
    :goto_3c
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .registers 2

    .line 1543
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getThumbnailTransitionState(Z)I
    .registers 3
    .param p1, "enter"    # Z

    .line 967
    if-eqz p1, :cond_a

    .line 968
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_8

    .line 969
    const/4 v0, 0x0

    return v0

    .line 971
    :cond_8
    const/4 v0, 0x2

    return v0

    .line 974
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_10

    .line 975
    const/4 v0, 0x1

    return v0

    .line 977
    :cond_10
    const/4 v0, 0x3

    return v0
.end method

.method public getTransitFlags()I
    .registers 2

    .line 1843
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I
    .registers 20
    .param p1, "transit"    # I
    .param p2, "topOpeningApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "topClosingApp"    # Lcom/android/server/wm/AppWindowToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/AppWindowToken;",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)I"
        }
    .end annotation

    .local p4, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p5, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 420
    const/4 v0, -0x1

    iput v0, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    .line 421
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 422
    const/4 v0, 0x2

    invoke-direct {v10, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 423
    const/4 v0, 0x0

    if-eqz v11, :cond_17

    .line 424
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    goto :goto_18

    .line 425
    :cond_17
    move-object v1, v0

    :goto_18
    move-object v13, v1

    .line 426
    .local v13, "topOpeningAnim":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 427
    if-eqz v11, :cond_20

    iget-object v1, v11, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 428
    move-object v2, v1

    goto :goto_22

    .line 427
    :cond_20
    nop

    .line 428
    move-object v2, v0

    :goto_22
    if-eqz v12, :cond_28

    iget-object v0, v12, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 429
    :goto_26
    move-object v3, v0

    goto :goto_29

    .line 428
    :cond_28
    goto :goto_26

    .line 429
    :goto_29
    if-eqz v13, :cond_31

    invoke-interface {v13}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v0

    .line 430
    :goto_2f
    move-wide v4, v0

    goto :goto_34

    .line 429
    :cond_31
    const-wide/16 v0, 0x0

    goto :goto_2f

    .line 430
    :goto_34
    if-eqz v13, :cond_3c

    .line 431
    invoke-interface {v13}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v0

    .line 432
    :goto_3a
    move-wide v6, v0

    goto :goto_41

    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_3a

    :goto_41
    const-wide/16 v8, 0x78

    .line 426
    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v0

    .line 434
    .local v0, "redoLayout":I
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    .line 435
    move v2, p1

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    .line 437
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_62

    .line 438
    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    invoke-virtual {v1}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    .line 440
    :cond_62
    return v0
.end method

.method hadClipRevealAnimation()Z
    .registers 2

    .line 783
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .registers 2

    .line 398
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .registers 3

    .line 390
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .registers 3

    .line 384
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method isNextAppTransitionThumbnailUp()Z
    .registers 3

    .line 379
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .registers 3

    .line 369
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .line 334
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    nop

    :cond_d
    :goto_d
    return v1
.end method

.method isRunning()Z
    .registers 3

    .line 344
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTimeout()Z
    .registers 3

    .line 352
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1, "transit"    # I

    .line 313
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTransitionSet()Z
    .registers 3

    .line 309
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .registers 33
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "uiMode"    # I
    .param p5, "orientation"    # I
    .param p6, "frame"    # Landroid/graphics/Rect;
    .param p7, "displayFrame"    # Landroid/graphics/Rect;
    .param p8, "insets"    # Landroid/graphics/Rect;
    .param p9, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p10, "stableInsets"    # Landroid/graphics/Rect;
    .param p11, "isVoiceInteraction"    # Z
    .param p12, "freeform"    # Z
    .param p13, "taskId"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    .line 1573
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isAppTransitionSkipped()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1574
    return-object v1

    .line 1577
    :cond_14
    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->prepareMiuiAppTransitionIfNeeded(I)V

    .line 1581
    const/16 v16, 0x0

    .line 1582
    .local v16, "a":Landroid/view/animation/Animation;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz v14, :cond_29

    .line 1583
    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1813
    .end local v16    # "a":Landroid/view/animation/Animation;
    .local v0, "a":Landroid/view/animation/Animation;
    :cond_25
    :goto_25
    move/from16 v1, p13

    goto/16 :goto_1f7

    .line 1584
    .end local v0    # "a":Landroid/view/animation/Animation;
    .restart local v16    # "a":Landroid/view/animation/Animation;
    :cond_29
    const/16 v0, 0x16

    if-ne v13, v0, :cond_2f

    .line 1585
    const/4 v0, 0x0

    goto :goto_25

    .line 1586
    :cond_2f
    const/16 v2, 0x17

    if-ne v13, v2, :cond_3d

    if-nez v14, :cond_3d

    .line 1587
    const v0, 0x10a00b7

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_25

    .line 1588
    :cond_3d
    const/16 v3, 0x1a

    if-ne v13, v3, :cond_43

    .line 1589
    const/4 v0, 0x0

    goto :goto_25

    .line 1590
    :cond_43
    const/16 v3, 0x8

    const/4 v4, 0x6

    if-eqz p11, :cond_5e

    if-eq v13, v4, :cond_50

    if-eq v13, v3, :cond_50

    const/16 v5, 0xa

    if-ne v13, v5, :cond_5e

    .line 1593
    :cond_50
    if-eqz v14, :cond_56

    .line 1594
    const v0, 0x10a00aa

    goto :goto_59

    .line 1595
    :cond_56
    const v0, 0x10a00ab

    .line 1593
    :goto_59
    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_25

    .line 1600
    :cond_5e
    const/16 v5, 0x9

    const/4 v6, 0x7

    if-eqz p11, :cond_79

    if-eq v13, v6, :cond_6b

    if-eq v13, v5, :cond_6b

    const/16 v7, 0xb

    if-ne v13, v7, :cond_79

    .line 1603
    :cond_6b
    if-eqz v14, :cond_71

    .line 1604
    const v0, 0x10a00a8

    goto :goto_74

    .line 1605
    :cond_71
    const v0, 0x10a00a9

    .line 1603
    :goto_74
    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_25

    .line 1610
    :cond_79
    const/16 v7, 0x12

    if-ne v13, v7, :cond_84

    .line 1611
    move-object/from16 v10, p8

    invoke-direct {v11, v15, v10}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_25

    .line 1617
    :cond_84
    move-object/from16 v10, p8

    iget v7, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_99

    .line 1618
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_92

    .line 1619
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_94

    :cond_92
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1618
    :goto_94
    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_25

    .line 1625
    :cond_99
    iget v7, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v7, v6, :cond_a7

    .line 1626
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_25

    .line 1632
    :cond_a7
    iget v7, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v7, v3, :cond_b3

    .line 1633
    move-object/from16 v9, p7

    invoke-direct {v11, v13, v14, v15, v9}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_25

    .line 1639
    :cond_b3
    move-object/from16 v9, p7

    iget v7, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x2

    if-ne v7, v0, :cond_c0

    .line 1640
    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_25

    .line 1646
    :cond_c0
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v7, 0x3

    const/4 v1, 0x0

    if-eq v0, v7, :cond_1e5

    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_cd

    goto/16 :goto_1e5

    .line 1660
    :cond_cd
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1c2

    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v4, :cond_d8

    goto/16 :goto_1c2

    .line 1675
    :cond_d8
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v5, :cond_117

    if-eqz v14, :cond_117

    .line 1676
    const-string v0, "android"

    const v1, 0x10a00a0

    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1678
    .end local v16    # "a":Landroid/view/animation/Animation;
    .restart local v0    # "a":Landroid/view/animation/Animation;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance=true Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1678
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 1697
    .end local v0    # "a":Landroid/view/animation/Animation;
    .restart local v16    # "a":Landroid/view/animation/Animation;
    :cond_117
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v7, 0x65

    if-ne v0, v7, :cond_12a

    .line 1699
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-direct {v11, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    .line 1700
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-static {v13, v14, v15, v0}, Lcom/android/server/wm/AppTransitionInjector;->createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_25

    .line 1702
    :cond_12a
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v7, 0x66

    if-ne v0, v7, :cond_138

    .line 1704
    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-static {v14, v15, v0}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_25

    .line 1706
    :cond_138
    if-eqz p12, :cond_148

    if-eq v13, v4, :cond_142

    if-eq v13, v3, :cond_142

    if-eq v13, v6, :cond_142

    if-ne v13, v5, :cond_148

    .line 1708
    :cond_142
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/AppTransitionInjector;->createFreeFormAppTransitionAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_25

    .line 1711
    :cond_148
    const/4 v0, 0x0

    .line 1712
    .local v0, "animAttr":I
    const/16 v3, 0x13

    if-eq v13, v3, :cond_1b0

    packed-switch v13, :pswitch_data_1f8

    packed-switch v13, :pswitch_data_212

    .line 1802
    .end local v16    # "a":Landroid/view/animation/Animation;
    .local v0, "a":Landroid/view/animation/Animation;
    .local v1, "animAttr":I
    :goto_153
    move v1, v0

    :goto_154
    move-object/from16 v0, v16

    goto/16 :goto_1b5

    .line 1729
    .end local v1    # "animAttr":I
    .local v0, "animAttr":I
    .restart local v16    # "a":Landroid/view/animation/Animation;
    :pswitch_158
    if-eqz v14, :cond_15b

    .line 1730
    goto :goto_15c

    .line 1731
    :cond_15b
    move v4, v6

    :goto_15c
    move v0, v4

    .line 1733
    goto :goto_153

    .line 1719
    :pswitch_15e
    if-eqz v14, :cond_163

    .line 1720
    nop

    .line 1721
    const/4 v2, 0x4

    nop

    :cond_163
    move v0, v2

    .line 1722
    goto :goto_153

    .line 1797
    :pswitch_165
    if-eqz v14, :cond_16a

    .line 1798
    const/16 v1, 0x19

    goto :goto_16c

    .line 1799
    :cond_16a
    const/16 v1, 0x18

    :goto_16c
    move v0, v1

    goto :goto_154

    .line 1792
    :pswitch_16e
    if-eqz v14, :cond_174

    .line 1793
    nop

    .line 1794
    const/16 v17, 0x16

    goto :goto_176

    :cond_174
    const/16 v17, 0x17

    :goto_176
    move/from16 v0, v17

    .line 1795
    goto :goto_153

    .line 1787
    :pswitch_179
    if-eqz v14, :cond_17e

    .line 1788
    const/16 v1, 0x14

    goto :goto_180

    .line 1789
    :cond_17e
    const/16 v1, 0x15

    :goto_180
    move v0, v1

    .line 1790
    goto :goto_154

    .line 1769
    :pswitch_182
    if-eqz v14, :cond_187

    .line 1770
    const/16 v1, 0x10

    goto :goto_189

    .line 1771
    :cond_187
    const/16 v1, 0x11

    :goto_189
    move v0, v1

    .line 1772
    goto :goto_154

    .line 1775
    :pswitch_18b
    if-eqz v14, :cond_192

    .line 1776
    invoke-static {v14, v15, v1}, Lcom/android/server/wm/AppTransitionInjector;->createWallerOpenCloseTransitionAnimation(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v16

    goto :goto_153

    .line 1778
    :cond_192
    const/16 v16, 0x0

    .line 1779
    const/16 v0, 0x13

    .line 1785
    goto :goto_153

    .line 1765
    :pswitch_197
    invoke-static {v14, v15, v1}, Lcom/android/server/wm/AppTransitionInjector;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1767
    goto :goto_153

    .line 1757
    :pswitch_19c
    invoke-static {v14, v15, v8}, Lcom/android/server/wm/AppTransitionInjector;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1759
    goto :goto_153

    .line 1748
    :pswitch_1a1
    invoke-static {v14, v15, v1}, Lcom/android/server/wm/AppTransitionInjector;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1750
    goto :goto_153

    .line 1725
    :pswitch_1a6
    invoke-static {v14, v15, v1}, Lcom/android/server/wm/AppTransitionInjector;->createActivityOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1726
    goto :goto_153

    .line 1715
    :pswitch_1ab
    invoke-static {v14, v15, v8}, Lcom/android/server/wm/AppTransitionInjector;->createActivityOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1716
    goto :goto_153

    .line 1740
    :cond_1b0
    :pswitch_1b0
    invoke-static {v14, v15, v8}, Lcom/android/server/wm/AppTransitionInjector;->createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;

    move-result-object v16

    .line 1742
    goto :goto_153

    .line 1802
    .end local v16    # "a":Landroid/view/animation/Animation;
    .local v0, "a":Landroid/view/animation/Animation;
    .restart local v1    # "animAttr":I
    :goto_1b5
    if-nez v0, :cond_25

    .line 1803
    if-eqz v1, :cond_1be

    invoke-virtual {v11, v12, v1, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_1bf

    :cond_1be
    const/4 v2, 0x0

    :goto_1bf
    move-object v0, v2

    .end local v1    # "animAttr":I
    goto/16 :goto_25

    .line 1662
    .end local v0    # "a":Landroid/view/animation/Animation;
    .restart local v16    # "a":Landroid/view/animation/Animation;
    :cond_1c2
    :goto_1c2
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v2, :cond_1c8

    move v1, v8

    nop

    :cond_1c8
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1664
    nop

    .line 1665
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    .line 1664
    move-object v0, v11

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v13

    move-object v5, v15

    move-object v6, v10

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p12

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_25

    .line 1648
    :cond_1e5
    :goto_1e5
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v7, :cond_1eb

    move v1, v8

    nop

    :cond_1eb
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1650
    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v0

    move/from16 v1, p13

    invoke-virtual {v11, v0, v15, v13, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1813
    .end local v16    # "a":Landroid/view/animation/Animation;
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :goto_1f7
    return-object v0

    :pswitch_data_1f8
    .packed-switch 0x6
        :pswitch_1ab
        :pswitch_1a6
        :pswitch_1b0
        :pswitch_1a1
        :pswitch_19c
        :pswitch_197
        :pswitch_18b
        :pswitch_182
        :pswitch_179
        :pswitch_16e
        :pswitch_165
    .end packed-switch

    :pswitch_data_212
    .packed-switch 0x18
        :pswitch_15e
        :pswitch_158
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "transit"    # I

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 559
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 560
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 561
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 562
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 563
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 566
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_14
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    .line 567
    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 568
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 570
    :cond_23
    const/4 v2, 0x0

    return-object v2
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .line 574
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    .line 575
    .local v0, "context":Landroid/content/Context;
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 576
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 577
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_10

    .line 578
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 580
    :cond_10
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 582
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method needCreateMiuiThumbnail()Z
    .registers 4

    .line 2354
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 2355
    return v2

    .line 2359
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2360
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 2361
    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 2362
    iput v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2365
    :cond_19
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v1, :cond_1f

    const/4 v2, 0x1

    nop

    :cond_1f
    return v2
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 491
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .line 1991
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1992
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1993
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1994
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1995
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    .line 1997
    :cond_10
    return-void
.end method

.method overrideMiuiAnimationInfo(Landroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "icon"    # Landroid/graphics/GraphicBuffer;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 2336
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLoadBackHomeAnimation:Z

    if-nez v0, :cond_5

    .line 2337
    return-void

    .line 2340
    :cond_5
    if-eqz p1, :cond_10

    .line 2341
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 2344
    :cond_10
    if-eqz p2, :cond_18

    .line 2345
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 2347
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLauncherAnimationRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2350
    :goto_1d
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->finishFetchingAppTransitionSpecs()V

    .line 2351
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .line 1856
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1858
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1859
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1860
    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1861
    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1862
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1863
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1865
    :cond_17
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "scaleUp"    # Z

    .line 1922
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1923
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1924
    if-eqz p7, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1925
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1926
    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1927
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1929
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1930
    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1932
    :cond_20
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .registers 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1879
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1881
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1882
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1883
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1885
    :cond_19
    return-void
.end method

.method overridePendingAppTransitionLaunchFromHome(IIII)V
    .registers 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1898
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1900
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1901
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1904
    :cond_19
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 14
    .param p1, "specs"    # [Landroid/view/AppTransitionAnimationSpec;
    .param p2, "onAnimationStartedCallback"    # Landroid/os/IRemoteCallback;
    .param p3, "onAnimationFinishedCallback"    # Landroid/os/IRemoteCallback;
    .param p4, "scaleUp"    # Z

    .line 1937
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1939
    if-eqz p4, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1940
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1941
    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1942
    if-eqz p1, :cond_3c

    .line 1943
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_3c

    .line 1944
    aget-object v1, p1, v0

    .line 1945
    .local v1, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v1, :cond_39

    .line 1946
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v3, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1947
    if-nez v0, :cond_39

    .line 1950
    iget-object v2, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1951
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 1952
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    .line 1951
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1943
    .end local v1    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 1957
    .end local v0    # "i":I
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1958
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1959
    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 1961
    :cond_43
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .registers 6
    .param p1, "specsFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p2, "callback"    # Landroid/os/IRemoteCallback;
    .param p3, "scaleUp"    # Z

    .line 1966
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1967
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1968
    if-eqz p3, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    .line 1969
    :cond_d
    const/4 v0, 0x6

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1970
    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    .line 1971
    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1972
    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    .line 1974
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingExecuteAppTransition:Z

    if-eqz v0, :cond_26

    .line 1975
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mPendingExecuteAppTransition:Z

    .line 1976
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1979
    :cond_26
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .registers 5
    .param p1, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 1982
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1983
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1984
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1985
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 1988
    :cond_1a
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .line 1869
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1871
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1872
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1875
    :cond_18
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .registers 2

    .line 2003
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 2005
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 2008
    :cond_10
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .registers 13
    .param p1, "srcThumb"    # Landroid/graphics/GraphicBuffer;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "scaleUp"    # Z

    .line 1909
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1911
    if-eqz p5, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    .line 1912
    :cond_d
    const/4 v0, 0x4

    :goto_e
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 1913
    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1914
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1916
    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1918
    :cond_20
    return-void
.end method

.method postAnimationCallback()V
    .registers 5

    .line 1847
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1a

    .line 1848
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1852
    :cond_1a
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .registers 11
    .param p1, "transit"    # I
    .param p2, "alwaysKeepCurrent"    # Z
    .param p3, "flags"    # I
    .param p4, "forceOverride"    # Z

    .line 2259
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_e

    if-ne p1, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2261
    .local v0, "allowSetCrashing":Z
    :goto_f
    if-nez p4, :cond_62

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_62

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz v2, :cond_62

    if-eqz v0, :cond_24

    goto :goto_62

    .line 2268
    :cond_24
    if-nez p2, :cond_65

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_65

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v2, v1, :cond_65

    .line 2270
    const/16 v1, 0x8

    if-ne p1, v1, :cond_42

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 2272
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_65

    .line 2273
    :cond_42
    const/4 v1, 0x6

    if-ne p1, v1, :cond_50

    const/4 v1, 0x7

    .line 2274
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2276
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_65

    .line 2277
    :cond_50
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v1

    if-eqz v1, :cond_65

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 2280
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_65

    .line 2263
    :cond_62
    :goto_62
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    .line 2283
    :cond_65
    :goto_65
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v1

    .line 2284
    .local v1, "prepared":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2285
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 2286
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2288
    :cond_81
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .line 950
    packed-switch p4, :pswitch_data_16

    .line 956
    const/16 v0, 0x150

    goto :goto_9

    .line 953
    :pswitch_6
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    .line 954
    .local v0, "duration":I
    nop

    .line 956
    :goto_9
    nop

    .line 959
    int-to-long v5, v0

    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :pswitch_data_16
    .packed-switch 0x6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 9
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # J
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 931
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_9

    .line 932
    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 934
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 935
    if-eqz p6, :cond_12

    .line 936
    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 938
    :cond_12
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 939
    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .line 2245
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    .line 2246
    return-void
.end method

.method setIdle()V
    .registers 2

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 349
    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "transit"    # I
    .param p2, "openingApp"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "closingApp"    # Lcom/android/server/wm/AppWindowToken;

    .line 328
    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    .line 331
    return-void
.end method

.method setLoadBackHomeAnimation(Z)V
    .registers 4
    .param p1, "loadBackHomeAnimation"    # Z

    .line 2379
    iput-boolean p1, p0, Lcom/android/server/wm/AppTransition;->mLoadBackHomeAnimation:Z

    .line 2380
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    if-eqz v0, :cond_11

    .line 2381
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLoadBackHomeAnimation:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->setLoadBackHomeAnimation(Z)V

    .line 2383
    :cond_11
    return-void
.end method

.method setReady()V
    .registers 2

    .line 339
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    .line 341
    return-void
.end method

.method setTimeout()V
    .registers 2

    .line 356
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    .line 357
    return-void
.end method

.method shouldAppTransitionRoundCorner(I)Z
    .registers 5
    .param p1, "transit"    # I

    .line 1889
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x65

    if-eq v0, v2, :cond_23

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x66

    if-eq v0, v2, :cond_23

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultActivityAnimation:Z

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v1, 0x0

    nop

    :cond_23
    :goto_23
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAllowCustomAnimationIfNeeded(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 2375
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-static {p1}, Lcom/android/server/wm/AppTransitionInjector;->allowCustomAnimation(Landroid/util/ArraySet;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mAllowCustomAnimation:Z

    .line 2376
    return-void
.end method

.method updateBooster()V
    .registers 3

    .line 474
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    .line 475
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2176
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2177
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2178
    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2179
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2180
    return-void
.end method
