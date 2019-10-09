.class public Lcom/android/server/wm/AppTransitionInjector;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;,
        Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$ScaleWallPaperAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$ScaleTaskAnimation;,
        Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;,
        Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;
    }
.end annotation


# static fields
.field static final APP_TRANSITION_SPECS_PENDING_TIMEOUT:I

.field static final BEZIER_ALLPAPER_OPEN_DURATION:I = 0x190

.field private static final BLACK_LIST_NOT_ALLOWED_SNAPSHOT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_ACTIVITY_TRANSITION_DURATION:I = 0x1f4

.field private static final DEFAULT_ALPHA_DURATION:I

.field private static final DEFAULT_ALPHA_OFFSET:I = 0x28

.field private static final DEFAULT_ANIMATION_DURATION:I

.field static final DEFAULT_APP_TRANSITION_ROUND_CORNER_RADIUS:I = 0x3c

.field private static final DEFAULT_LAUNCH_FORM_HOME_DURATION:I = 0x12c

.field private static final DEFAULT_TASK_TRANSITION_DURATION:I = 0x28a

.field private static final DEFAULT_WALLPAPER_EXIT_SCALE_X:F = 0.4f

.field private static final DEFAULT_WALLPAPER_EXIT_SCALE_Y:F = 0.4f

.field static final DEFAULT_WALLPAPER_OPEN_DURATION:I

.field private static final DEFAULT_WALLPAPER_TRANSITION_DURATION:I = 0x226

.field static DISPLAY_ROUND_CORNER_RADIUS:I = 0x0

.field static final IS_E10:Z

.field private static final LAUNCHER_DEFAULT_ALPHA:F = 1.0f

.field private static final LAUNCHER_DEFAULT_SCALE:F = 1.0f

.field private static final LAUNCHER_TRANSITION_ALPHA:F

.field private static final LAUNCHER_TRANSITION_SCALE:F = 0.8f

.field static final NEXT_TRANSIT_TYPE_BACK_HOME:I = 0x66

.field static final NEXT_TRANSIT_TYPE_LAUNCH_FROM_HOME:I = 0x65

.field static final PENDING_EXECUTE_APP_TRANSITION_TIMEOUT:I = 0x64

.field private static final QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "AppTransitionInjector"

.field static final THUMBNAIL_ANIMATION_TIMEOUT_DURATION:I = 0x3e8

.field private static final WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

.field private static sMiuiAnimSupportInset:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 43
    const-string v0, "beryllium"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    .line 44
    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    const/16 v1, 0x12c

    const/16 v2, 0x90

    if-eqz v0, :cond_14

    .line 45
    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    sput v0, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    .line 48
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/wm/AppTransitionInjector;->DISPLAY_ROUND_CORNER_RADIUS:I

    .line 52
    const-string v0, "cactus"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x320

    goto :goto_2a

    :cond_28
    const/16 v0, 0x64

    :goto_2a
    sput v0, Lcom/android/server/wm/AppTransitionInjector;->APP_TRANSITION_SPECS_PENDING_TIMEOUT:I

    .line 58
    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v0, :cond_32

    .line 59
    move v1, v2

    nop

    :cond_32
    sput v1, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_ANIMATION_DURATION:I

    .line 61
    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v0, :cond_3b

    .line 62
    const/16 v0, 0x58

    goto :goto_3d

    :cond_3b
    const/16 v0, 0xd2

    :goto_3d
    sput v0, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_ALPHA_DURATION:I

    .line 66
    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v0, :cond_46

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    sput v0, Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F

    .line 71
    sget-boolean v0, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_51

    .line 72
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_56

    :cond_51
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionInjector$CubicEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$1;)V

    :goto_56
    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 73
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionInjector$QuartEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$1;)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 74
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppTransitionInjector$QuintEaseOutInterpolator;-><init>(Lcom/android/server/wm/AppTransitionInjector$1;)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 75
    sput-object v1, Lcom/android/server/wm/AppTransitionInjector;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Lcom/android/server/wm/AppTransitionInjector$1;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransitionInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector;->BLACK_LIST_NOT_ALLOWED_SNAPSHOT:Ljava/util/ArrayList;

    .line 92
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->BLACK_LIST_NOT_ALLOWED_SNAPSHOT:Ljava/util/ArrayList;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->BLACK_LIST_NOT_ALLOWED_SNAPSHOT:Ljava/util/ArrayList;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->BLACK_LIST_NOT_ALLOWED_SNAPSHOT:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()F
    .registers 1

    .line 39
    sget v0, Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F

    return v0
.end method

.method static allowCustomAnimation(Landroid/util/ArraySet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 519
    .local p0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 520
    return v0

    .line 523
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 524
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_2a

    .line 525
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 526
    .local v3, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_27

    .line 527
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 528
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_27

    sget-object v5, Lcom/android/server/wm/AppTransitionInjector;->WHITE_LIST_ALLOW_CUSTOM_ANIMATION:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 529
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 530
    const/4 v0, 0x1

    return v0

    .line 524
    .end local v3    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 534
    .end local v2    # "i":I
    :cond_2a
    return v0
.end method

.method static calculateGestureThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 27
    .param p0, "appRect"    # Landroid/graphics/Rect;
    .param p1, "thumbnailRect"    # Landroid/graphics/Rect;
    .param p2, "curSpec"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # F
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p5, "leash"    # Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    .line 479
    move-object/from16 v9, p5

    if-eqz v0, :cond_ab

    if-eqz p1, :cond_ab

    if-eqz v1, :cond_ab

    if-eqz v9, :cond_ab

    if-nez v8, :cond_14

    goto/16 :goto_ab

    .line 484
    :cond_14
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v10, v2

    .line 485
    .local v10, "tmpMatrix":Landroid/graphics/Matrix;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 486
    const/16 v2, 0x9

    new-array v11, v2, [F

    .line 487
    .local v11, "tmp":[F
    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->getValues([F)V

    .line 489
    const/4 v2, 0x0

    aget v12, v11, v2

    .line 490
    .local v12, "curScaleX":F
    const/4 v2, 0x4

    aget v13, v11, v2

    .line 491
    .local v13, "curScaleY":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v14, v2, v12

    .line 492
    .local v14, "curWidth":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v15, v2, v13

    .line 493
    .local v15, "curHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v16, v14, v2

    .line 495
    .local v16, "newScaleX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v17, v15, v2

    .line 497
    .local v17, "newScaleY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v18, v16, v2

    .line 500
    .local v18, "curThumbnailHeight":F
    const/4 v2, 0x2

    aget v2, v11, v2

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    sub-float v7, v2, v3

    .line 502
    .local v7, "curTranslateX":F
    const/4 v2, 0x5

    aget v2, v11, v2

    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float v3, v3, v17

    sub-float/2addr v2, v3

    sub-float v3, v15, v18

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v6, v2, v3

    .line 505
    .local v6, "curTranslateY":F
    const/4 v2, 0x3

    aget v5, v11, v2

    const/4 v2, 0x1

    aget v19, v11, v2

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move v0, v6

    move/from16 v6, v19

    .end local v6    # "curTranslateY":F
    .local v0, "curTranslateY":F
    move v1, v7

    move/from16 v7, v16

    .end local v7    # "curTranslateX":F
    .local v1, "curTranslateX":F
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 506
    invoke-virtual {v8, v9, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 507
    move/from16 v2, p3

    invoke-virtual {v8, v9, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 508
    return-void

    .line 481
    .end local v0    # "curTranslateY":F
    .end local v1    # "curTranslateX":F
    .end local v10    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v11    # "tmp":[F
    .end local v12    # "curScaleX":F
    .end local v13    # "curScaleY":F
    .end local v14    # "curWidth":F
    .end local v15    # "curHeight":F
    .end local v16    # "newScaleX":F
    .end local v17    # "newScaleY":F
    .end local v18    # "curThumbnailHeight":F
    :cond_ab
    :goto_ab
    move/from16 v2, p3

    return-void
.end method

.method static calculateMiuiThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 25
    .param p0, "appRect"    # Landroid/graphics/Rect;
    .param p1, "thumbnailRect"    # Landroid/graphics/Rect;
    .param p2, "curSpec"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # F
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p5, "leash"    # Landroid/view/SurfaceControl;

    move-object/from16 v0, p2

    move-object/from16 v7, p4

    .line 450
    move-object/from16 v8, p5

    if-eqz p0, :cond_80

    if-eqz p1, :cond_80

    if-eqz v0, :cond_80

    if-eqz v8, :cond_80

    if-nez v7, :cond_11

    goto :goto_80

    .line 455
    :cond_11
    const/16 v1, 0x9

    new-array v10, v1, [F

    .line 456
    .local v10, "tmp":[F
    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->getValues([F)V

    .line 458
    const/4 v1, 0x0

    aget v11, v10, v1

    .line 459
    .local v11, "curScaleX":F
    const/4 v1, 0x4

    aget v12, v10, v1

    .line 460
    .local v12, "curScaleY":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v13, v1, v11

    .line 461
    .local v13, "curWidth":F
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v14, v1, v12

    .line 462
    .local v14, "curHeight":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget-object v2, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v15, v13, v1

    .line 464
    .local v15, "newScaleX":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v16, v14, v1

    .line 467
    .local v16, "newScaleY":F
    const/4 v1, 0x2

    aget v1, v10, v1

    sget-object v2, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    sub-float v6, v1, v2

    .line 469
    .local v6, "curTranslateX":F
    const/4 v1, 0x5

    aget v1, v10, v1

    sget-object v2, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    sub-float v5, v1, v2

    .line 472
    .local v5, "curTranslateY":F
    const/4 v1, 0x3

    aget v4, v10, v1

    const/4 v1, 0x1

    aget v17, v10, v1

    move-object v1, v7

    move-object v2, v8

    move v3, v15

    move v0, v5

    move/from16 v5, v17

    .end local v5    # "curTranslateY":F
    .local v0, "curTranslateY":F
    move v9, v6

    move/from16 v6, v16

    .end local v6    # "curTranslateX":F
    .local v9, "curTranslateX":F
    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 473
    invoke-virtual {v7, v8, v9, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 474
    move/from16 v1, p3

    invoke-virtual {v7, v8, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 475
    return-void

    .line 452
    .end local v0    # "curTranslateY":F
    .end local v9    # "curTranslateX":F
    .end local v10    # "tmp":[F
    .end local v11    # "curScaleX":F
    .end local v12    # "curScaleY":F
    .end local v13    # "curWidth":F
    .end local v14    # "curHeight":F
    .end local v15    # "newScaleX":F
    .end local v16    # "newScaleY":F
    :cond_80
    :goto_80
    move/from16 v1, p3

    return-void
.end method

.method static createActivityOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 18
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "isOpenOrClose"    # Z

    .line 348
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 349
    .local v0, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .line 350
    .local v1, "translateAnimation":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 351
    .local v2, "alphaAnimation":Landroid/view/animation/Animation;
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3b

    .line 352
    if-eqz p0, :cond_21

    .line 353
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v3

    goto :goto_67

    .line 360
    :cond_21
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x41800000    # -0.25f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v14

    .line 364
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v5

    .line 365
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_67

    .line 368
    :cond_3b
    if-eqz p0, :cond_57

    .line 369
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/high16 v7, -0x41800000    # -0.25f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v14

    .line 373
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v5

    .line 374
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_67

    .line 376
    :cond_57
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v3

    .line 382
    :goto_67
    new-instance v3, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3f733333    # 0.95f

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;-><init>(FF)V

    sput-object v3, Lcom/android/server/wm/AppTransitionInjector;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 383
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 384
    sget-object v3, Lcom/android/server/wm/AppTransitionInjector;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 386
    return-object v0
.end method

.method static createDummyAnimation(F)Landroid/view/animation/Animation;
    .registers 4
    .param p0, "alpha"    # F

    .line 295
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 296
    .local v0, "dummyAnimation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 297
    return-object v0
.end method

.method static createFreeFormAppTransitionAnimation(Z)Landroid/view/animation/Animation;
    .registers 4
    .param p0, "enter"    # Z

    .line 146
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_10

    :cond_b
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_10
    return-object v2
.end method

.method static createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 26
    .param p0, "transit"    # I
    .param p1, "enter"    # Z
    .param p2, "appFrame"    # Landroid/graphics/Rect;
    .param p3, "positionRect"    # Landroid/graphics/Rect;

    move/from16 v0, p0

    .line 99
    move-object/from16 v1, p3

    if-nez v1, :cond_8

    .line 100
    const/4 v2, 0x0

    return-object v2

    .line 102
    :cond_8
    sget-boolean v2, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v2, :cond_11

    .line 103
    invoke-static/range {p0 .. p3}, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    .line 107
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 108
    .local v2, "appWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 109
    .local v3, "appHeight":I
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 110
    .local v4, "startX":I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    .line 111
    .local v5, "startY":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 112
    .local v6, "startWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 114
    .local v7, "startHeight":I
    const/4 v8, 0x1

    const-wide/16 v9, 0x12c

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5c

    .line 115
    int-to-float v12, v6

    int-to-float v13, v2

    div-float/2addr v12, v13

    .line 116
    .local v12, "scaleX":F
    int-to-float v13, v7

    int-to-float v14, v3

    div-float/2addr v13, v14

    .line 118
    .local v13, "scaleY":F
    new-instance v21, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    int-to-float v14, v4

    sub-float v15, v11, v12

    div-float v19, v14, v15

    int-to-float v14, v5

    sub-float/2addr v11, v13

    div-float v20, v14, v11

    move-object/from16 v14, v21

    move v15, v12

    move/from16 v17, v13

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v11, v21

    .line 120
    .local v11, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v11, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 121
    invoke-virtual {v11, v8}, Landroid/view/animation/ScaleAnimation;->setZAdjustment(I)V

    .line 122
    sget-object v8, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v8}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 123
    invoke-virtual {v11, v2, v3, v2, v3}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 124
    nop

    .end local v11    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v12    # "scaleX":F
    .end local v13    # "scaleY":F
    move-object v8, v11

    .line 125
    .local v8, "anim":Landroid/view/animation/Animation;
    goto :goto_9d

    .line 126
    .end local v8    # "anim":Landroid/view/animation/Animation;
    :cond_5c
    const/16 v12, 0xe

    if-eq v0, v12, :cond_8b

    const/16 v12, 0xf

    if-ne v0, v12, :cond_65

    goto :goto_8b

    .line 132
    :cond_65
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3f4ccccd    # 0.8f

    const/high16 v16, 0x3f800000    # 1.0f

    const v17, 0x3f4ccccd    # 0.8f

    int-to-float v12, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float v18, v12, v13

    int-to-float v12, v3

    div-float v19, v12, v13

    move-object v13, v11

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 135
    .local v11, "scaleAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v11, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    sget-object v9, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    const/4 v9, -0x1

    invoke-virtual {v11, v9}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 138
    nop

    .end local v11    # "scaleAnimation":Landroid/view/animation/Animation;
    goto :goto_98

    .line 128
    :cond_8b
    :goto_8b
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v11, v12

    .line 129
    .local v11, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v11, v8}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 130
    invoke-virtual {v11, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 138
    :goto_98
    move-object v9, v11

    .line 140
    .end local v11    # "anim":Landroid/view/animation/Animation;
    .local v9, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v9, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 142
    move-object v8, v9

    .end local v9    # "anim":Landroid/view/animation/Animation;
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    :goto_9d
    return-object v8
.end method

.method static createTaskOpenCloseTransition(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 20
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "isOpenOrClose"    # Z

    .line 301
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 302
    .local v0, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .line 303
    .local v1, "translateAnimation":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 304
    .local v2, "scaleAnimation":Landroid/view/animation/Animation;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 305
    .local v3, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 306
    .local v4, "heigth":I
    const-wide/16 v5, 0x96

    if-eqz p2, :cond_6a

    .line 307
    if-eqz p0, :cond_42

    .line 308
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, v16

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v1, v16

    .line 313
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const v8, 0x3f666666    # 0.9f

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f800000    # 1.0f

    div-int/lit8 v7, v3, 0x2

    int-to-float v12, v7

    div-int/lit8 v7, v4, 0x2

    int-to-float v13, v7

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v2, v14

    .line 314
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_c0

    .line 316
    :cond_42
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    div-int/lit8 v6, v3, 0x2

    int-to-float v12, v6

    div-int/lit8 v6, v4, 0x2

    int-to-float v13, v6

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v2, v5

    .line 317
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v5

    goto :goto_c0

    .line 323
    :cond_6a
    if-eqz p0, :cond_99

    .line 324
    new-instance v16, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, v16

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object/from16 v1, v16

    .line 328
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f666666    # 0.9f

    const/high16 v11, 0x3f800000    # 1.0f

    div-int/lit8 v7, v3, 0x2

    int-to-float v12, v7

    div-int/lit8 v7, v4, 0x2

    int-to-float v13, v7

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v2, v14

    .line 329
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_c0

    .line 331
    :cond_99
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f666666    # 0.9f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    div-int/lit8 v6, v3, 0x2

    int-to-float v12, v6

    div-int/lit8 v6, v4, 0x2

    int-to-float v13, v6

    move-object v7, v5

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v2, v5

    .line 332
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v5

    .line 339
    :goto_c0
    new-instance v5, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;

    const v6, 0x3f19999a    # 0.6f

    const v7, 0x3f7d70a4    # 0.99f

    invoke-direct {v5, v6, v7}, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;-><init>(FF)V

    sput-object v5, Lcom/android/server/wm/AppTransitionInjector;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 340
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 341
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 342
    sget-object v5, Lcom/android/server/wm/AppTransitionInjector;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 343
    const-wide/16 v5, 0x28a

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 344
    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 4
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "positionRect"    # Landroid/graphics/Rect;

    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "positionRect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "positionRect"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;

    .line 155
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .registers 11
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "positionRect"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "orientation"    # I

    .line 166
    const/4 v3, 0x0

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;)Landroid/view/animation/Animation;
    .registers 59
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "targetPositionRect"    # Landroid/graphics/Rect;
    .param p3, "startRect"    # Landroid/graphics/Rect;
    .param p4, "orientation"    # I
    .param p5, "inertia"    # Landroid/graphics/Point;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 171
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 172
    .local v2, "positionRect":Landroid/graphics/Rect;
    const/4 v5, 0x1

    if-eqz v1, :cond_16

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    move v6, v5

    goto :goto_17

    :cond_16
    const/4 v6, 0x0

    .line 173
    .local v6, "hasStartRect":Z
    :goto_17
    move/from16 v7, p4

    if-ne v7, v5, :cond_1d

    move v8, v5

    goto :goto_1e

    :cond_1d
    const/4 v8, 0x0

    .line 174
    .local v8, "isPortrait":Z
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 175
    .local v15, "appWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 177
    .local v14, "appHeight":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2e

    move v9, v5

    goto :goto_2f

    :cond_2e
    const/4 v9, 0x0

    :goto_2f
    move/from16 v23, v9

    .line 178
    .local v23, "canFindPosition":Z
    sget-object v9, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v13, v9, Landroid/graphics/Rect;->left:I

    .line 179
    .local v13, "insetLeft":I
    sget-object v9, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v12, v9, Landroid/graphics/Rect;->top:I

    .line 180
    .local v12, "insetTop":I
    sget-object v9, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v11, v9, Landroid/graphics/Rect;->right:I

    .line 181
    .local v11, "insetRight":I
    sget-object v9, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 183
    .local v10, "insetBottom":I
    if-eqz v6, :cond_4c

    .line 184
    iget v9, v0, Landroid/graphics/Rect;->left:I

    neg-int v9, v9

    iget v4, v0, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v1, v9, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 187
    :cond_4c
    if-eqz v23, :cond_57

    .line 188
    iget v4, v0, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget v9, v0, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 191
    :cond_57
    const v4, 0x3ecccccd    # 0.4f

    if-eqz v23, :cond_65

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int v16, v13, v11

    sub-int v9, v9, v16

    goto :goto_68

    .line 192
    :cond_65
    int-to-float v9, v15

    mul-float/2addr v9, v4

    float-to-int v9, v9

    .line 193
    .local v9, "targetWidth":I
    :goto_68
    if-eqz v23, :cond_73

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v17, v12, v10

    sub-int v16, v16, v17

    goto :goto_78

    .line 194
    :cond_73
    int-to-float v5, v14

    mul-float/2addr v5, v4

    float-to-int v5, v5

    move/from16 v16, v5

    :goto_78
    move/from16 v5, v16

    .line 196
    .local v5, "targetHeight":I
    if-eqz v6, :cond_7f

    iget v4, v1, Landroid/graphics/Rect;->left:I

    goto :goto_80

    :cond_7f
    const/4 v4, 0x0

    .line 197
    .local v4, "startX":I
    :goto_80
    if-eqz v6, :cond_85

    iget v3, v1, Landroid/graphics/Rect;->top:I

    goto :goto_86

    :cond_85
    const/4 v3, 0x0

    .line 198
    .local v3, "startY":I
    :goto_86
    if-eqz v6, :cond_91

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v16, v4, v16

    goto :goto_9b

    .line 199
    :cond_91
    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v16, v7, v16

    :goto_9b
    move/from16 v7, v16

    .line 200
    .local v7, "startCenterX":I
    if-eqz v6, :cond_aa

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v16, v3, v16

    .line 201
    move/from16 v25, v10

    goto :goto_b6

    :cond_aa
    move/from16 v25, v10

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .end local v10    # "insetBottom":I
    .local v25, "insetBottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v16, v10, v16

    :goto_b6
    move/from16 v10, v16

    .line 202
    .local v10, "startCenterY":I
    const v16, 0x3f19999a    # 0.6f

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v23, :cond_c5

    move/from16 v26, v10

    iget v10, v2, Landroid/graphics/Rect;->left:I

    .end local v10    # "startCenterY":I
    .local v26, "startCenterY":I
    add-int/2addr v10, v13

    goto :goto_cd

    .line 203
    .end local v26    # "startCenterY":I
    .restart local v10    # "startCenterY":I
    :cond_c5
    move/from16 v26, v10

    .end local v10    # "startCenterY":I
    .restart local v26    # "startCenterY":I
    int-to-float v10, v15

    mul-float v10, v10, v16

    div-float v10, v10, v17

    float-to-int v10, v10

    .line 204
    .local v10, "targetX":I
    :goto_cd
    if-eqz v23, :cond_d5

    move/from16 v27, v11

    iget v11, v2, Landroid/graphics/Rect;->top:I

    .end local v11    # "insetRight":I
    .local v27, "insetRight":I
    add-int/2addr v11, v12

    goto :goto_dd

    .line 205
    .end local v27    # "insetRight":I
    .restart local v11    # "insetRight":I
    :cond_d5
    move/from16 v27, v11

    .end local v11    # "insetRight":I
    .restart local v27    # "insetRight":I
    int-to-float v11, v14

    mul-float v16, v16, v11

    div-float v11, v16, v17

    float-to-int v11, v11

    .line 207
    .local v11, "targetY":I
    :goto_dd
    move/from16 v28, v7

    .end local v7    # "startCenterX":I
    .local v28, "startCenterX":I
    if-eqz v6, :cond_eb

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    move/from16 v29, v12

    int-to-float v12, v15

    .end local v12    # "insetTop":I
    .local v29, "insetTop":I
    div-float/2addr v7, v12

    goto :goto_ef

    .end local v29    # "insetTop":I
    .restart local v12    # "insetTop":I
    :cond_eb
    move/from16 v29, v12

    .end local v12    # "insetTop":I
    .restart local v29    # "insetTop":I
    const/high16 v7, 0x3f800000    # 1.0f

    .line 209
    .local v7, "startScaleX":F
    :goto_ef
    if-eqz v6, :cond_fa

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    int-to-float v1, v14

    div-float v1, v12, v1

    goto :goto_fc

    :cond_fa
    const/high16 v1, 0x3f800000    # 1.0f

    .line 211
    .local v1, "startScaleY":F
    :goto_fc
    int-to-float v12, v9

    move/from16 v30, v6

    int-to-float v6, v15

    .end local v6    # "hasStartRect":Z
    .local v30, "hasStartRect":Z
    div-float v6, v12, v6

    .line 212
    .local v6, "scaleX":F
    int-to-float v12, v5

    move/from16 v31, v5

    int-to-float v5, v14

    .end local v5    # "targetHeight":I
    .local v31, "targetHeight":I
    div-float v5, v12, v5

    .line 215
    .local v5, "scaleY":F
    if-eqz p0, :cond_160

    .line 216
    new-instance v12, Landroid/view/animation/AnimationSet;

    move/from16 v32, v9

    const/4 v9, 0x1

    invoke-direct {v12, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .end local v9    # "targetWidth":I
    .local v32, "targetWidth":I
    move-object v9, v12

    .line 217
    .local v9, "set":Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const v34, 0x3f4ccccd    # 0.8f

    const/high16 v35, 0x3f800000    # 1.0f

    const v36, 0x3f4ccccd    # 0.8f

    const/high16 v37, 0x3f800000    # 1.0f

    move/from16 v40, v13

    int-to-float v13, v15

    .end local v13    # "insetLeft":I
    .local v40, "insetLeft":I
    div-float v38, v13, v17

    int-to-float v13, v14

    div-float v39, v13, v17

    move-object/from16 v33, v12

    invoke-direct/range {v33 .. v39}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 221
    .local v12, "scaleAnimation":Landroid/view/animation/Animation;
    sget v13, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    move/from16 v41, v14

    int-to-long v13, v13

    .end local v14    # "appHeight":I
    .local v41, "appHeight":I
    invoke-virtual {v12, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 222
    sget-boolean v13, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-nez v13, :cond_13b

    .line 223
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 225
    :cond_13b
    sget-object v13, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v13}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    const/4 v13, -0x1

    invoke-virtual {v9, v13}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 227
    nop

    .line 228
    .end local v12    # "scaleAnimation":Landroid/view/animation/Animation;
    .local v9, "anim":Landroid/view/animation/Animation;
    nop

    .line 289
    move-object/from16 v48, v2

    move v14, v3

    move/from16 v50, v6

    move v0, v10

    move v3, v11

    move/from16 v34, v15

    move/from16 v2, v26

    move/from16 v26, v27

    move/from16 v33, v28

    move/from16 v27, v29

    move/from16 v28, v32

    move/from16 v29, v40

    move/from16 v32, v41

    move v11, v4

    goto/16 :goto_2ea

    .line 228
    .end local v32    # "targetWidth":I
    .end local v40    # "insetLeft":I
    .end local v41    # "appHeight":I
    .local v9, "targetWidth":I
    .restart local v13    # "insetLeft":I
    .restart local v14    # "appHeight":I
    :cond_160
    move/from16 v32, v9

    move/from16 v40, v13

    move/from16 v41, v14

    .end local v9    # "targetWidth":I
    .end local v13    # "insetLeft":I
    .end local v14    # "appHeight":I
    .restart local v32    # "targetWidth":I
    .restart local v40    # "insetLeft":I
    .restart local v41    # "appHeight":I
    const/4 v9, 0x0

    if-eqz v23, :cond_28e

    .line 229
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v14, v12

    .line 230
    .local v14, "set":Landroid/view/animation/AnimationSet;
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v13, v12

    .line 231
    .local v13, "alphaAnimation":Landroid/view/animation/Animation;
    move-object/from16 v43, v14

    move/from16 v42, v15

    const-wide/16 v14, 0x28

    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .end local v15    # "appWidth":I
    .local v42, "appWidth":I
    .local v43, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v14, v15}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 232
    sget v9, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_ALPHA_DURATION:I

    int-to-long v14, v9

    invoke-virtual {v13, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 233
    sget-object v9, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 237
    if-nez p5, :cond_200

    .line 238
    new-instance v9, Landroid/view/animation/TranslateXAnimation;

    int-to-float v12, v4

    iget v14, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v10

    int-to-float v14, v14

    invoke-direct {v9, v12, v14}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    .line 239
    .local v9, "translateXAnimation":Landroid/view/animation/Animation;
    new-instance v12, Landroid/view/animation/TranslateYAnimation;

    int-to-float v14, v3

    iget v15, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v11

    int-to-float v15, v15

    invoke-direct {v12, v14, v15}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    .line 241
    .local v12, "translateYAnimation":Landroid/view/animation/Animation;
    new-instance v14, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;

    invoke-direct {v14, v7, v6}, Lcom/android/server/wm/AppTransitionInjector$ScaleXAnimation;-><init>(FF)V

    .line 242
    .local v14, "scaleXAnimation":Landroid/view/animation/Animation;
    if-eqz v8, :cond_1ac

    sget-object v15, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_1ae

    .line 243
    :cond_1ac
    sget-object v15, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 242
    :goto_1ae
    invoke-virtual {v14, v15}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    sget v15, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    move/from16 v44, v10

    move/from16 v45, v11

    int-to-long v10, v15

    .end local v10    # "targetX":I
    .end local v11    # "targetY":I
    .local v44, "targetX":I
    .local v45, "targetY":I
    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 246
    new-instance v10, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;

    invoke-direct {v10, v1, v5}, Lcom/android/server/wm/AppTransitionInjector$ScaleYAnimation;-><init>(FF)V

    .line 247
    .local v10, "scaleYAnimation":Landroid/view/animation/Animation;
    sget-object v11, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 248
    sget v11, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    move/from16 v47, v3

    move/from16 v46, v4

    int-to-long v3, v11

    .end local v3    # "startY":I
    .end local v4    # "startX":I
    .local v46, "startX":I
    .local v47, "startY":I
    invoke-virtual {v10, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 249
    sget v3, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v9, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 250
    sget v3, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_WALLPAPER_OPEN_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 251
    move-object/from16 v3, v43

    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 252
    .end local v43    # "set":Landroid/view/animation/AnimationSet;
    .local v3, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 253
    .end local v10    # "scaleYAnimation":Landroid/view/animation/Animation;
    .end local v14    # "scaleXAnimation":Landroid/view/animation/Animation;
    nop

    .line 264
    move-object/from16 v48, v2

    move-object v4, v3

    move/from16 v50, v6

    move-object v6, v13

    move/from16 v2, v26

    move/from16 v26, v27

    move/from16 v33, v28

    move/from16 v27, v29

    move/from16 v28, v32

    move/from16 v29, v40

    move/from16 v32, v41

    move/from16 v34, v42

    move/from16 v0, v44

    move/from16 v3, v45

    goto/16 :goto_26a

    .line 254
    .end local v9    # "translateXAnimation":Landroid/view/animation/Animation;
    .end local v12    # "translateYAnimation":Landroid/view/animation/Animation;
    .end local v44    # "targetX":I
    .end local v45    # "targetY":I
    .end local v46    # "startX":I
    .end local v47    # "startY":I
    .local v3, "startY":I
    .restart local v4    # "startX":I
    .local v10, "targetX":I
    .restart local v11    # "targetY":I
    .restart local v43    # "set":Landroid/view/animation/AnimationSet;
    :cond_200
    move/from16 v47, v3

    move/from16 v46, v4

    move/from16 v44, v10

    move/from16 v45, v11

    move-object/from16 v3, v43

    .end local v4    # "startX":I
    .end local v10    # "targetX":I
    .end local v11    # "targetY":I
    .end local v43    # "set":Landroid/view/animation/AnimationSet;
    .local v3, "set":Landroid/view/animation/AnimationSet;
    .restart local v44    # "targetX":I
    .restart local v45    # "targetY":I
    .restart local v46    # "startX":I
    .restart local v47    # "startY":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int v4, v4, v40

    div-int/lit8 v9, v32, 0x2

    add-int/2addr v4, v9

    int-to-float v4, v4

    .line 255
    .local v4, "endCenterX":F
    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int v9, v9, v29

    div-int/lit8 v10, v31, 0x2

    add-int/2addr v9, v10

    int-to-float v15, v9

    .line 256
    .local v15, "endCenterY":F
    new-instance v16, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;

    move/from16 v14, v28

    int-to-float v12, v14

    .end local v28    # "startCenterX":I
    .local v14, "startCenterX":I
    move/from16 v28, v32

    move-object/from16 v9, v16

    .end local v32    # "targetWidth":I
    .local v28, "targetWidth":I
    move/from16 v11, v26

    move/from16 v0, v44

    move v10, v7

    .end local v26    # "startCenterY":I
    .end local v44    # "targetX":I
    .local v0, "targetX":I
    .local v11, "startCenterY":I
    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move v2, v11

    move/from16 v26, v27

    move/from16 v3, v45

    move v11, v6

    .end local v11    # "startCenterY":I
    .end local v27    # "insetRight":I
    .end local v45    # "targetY":I
    .local v2, "startCenterY":I
    .local v3, "targetY":I
    .local v26, "insetRight":I
    .local v48, "positionRect":Landroid/graphics/Rect;
    .local v49, "set":Landroid/view/animation/AnimationSet;
    move/from16 v27, v29

    .end local v29    # "insetTop":I
    .local v27, "insetTop":I
    move/from16 v50, v6

    move-object v6, v13

    move/from16 v29, v40

    move v13, v4

    .end local v13    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v40    # "insetLeft":I
    .local v6, "alphaAnimation":Landroid/view/animation/Animation;
    .local v29, "insetLeft":I
    .local v50, "scaleX":F
    move/from16 v51, v4

    move/from16 v33, v14

    move/from16 v32, v41

    move-object/from16 v4, v49

    move-object/from16 v14, p5

    .end local v14    # "startCenterX":I
    .end local v41    # "appHeight":I
    .end local v49    # "set":Landroid/view/animation/AnimationSet;
    .local v4, "set":Landroid/view/animation/AnimationSet;
    .local v32, "appHeight":I
    .local v33, "startCenterX":I
    .local v51, "endCenterX":F
    move/from16 v24, v15

    move/from16 v34, v42

    move/from16 v15, v34

    .end local v15    # "endCenterY":F
    .end local v42    # "appWidth":I
    .local v24, "endCenterY":F
    .local v34, "appWidth":I
    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/AppTransitionInjector$BezierXAnimation;-><init>(FFFFLandroid/graphics/Point;I)V

    .line 258
    .restart local v9    # "translateXAnimation":Landroid/view/animation/Animation;
    new-instance v10, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;

    int-to-float v11, v2

    move-object/from16 v16, v10

    move/from16 v17, v1

    move/from16 v18, v5

    move/from16 v19, v11

    move/from16 v20, v24

    move-object/from16 v21, p5

    move/from16 v22, v32

    invoke-direct/range {v16 .. v22}, Lcom/android/server/wm/AppTransitionInjector$BezierYAnimation;-><init>(FFFFLandroid/graphics/Point;I)V

    move-object v12, v10

    .line 260
    .restart local v12    # "translateYAnimation":Landroid/view/animation/Animation;
    const-wide/16 v10, 0x190

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 261
    invoke-virtual {v12, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    .end local v24    # "endCenterY":F
    .end local v51    # "endCenterX":F
    :goto_26a
    if-eqz v8, :cond_26f

    sget-object v10, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_271

    .line 265
    :cond_26f
    sget-object v10, Lcom/android/server/wm/AppTransitionInjector;->QUINT_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 264
    :goto_271
    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 266
    sget-object v10, Lcom/android/server/wm/AppTransitionInjector;->QUART_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 268
    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 269
    invoke-virtual {v4, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 270
    invoke-virtual {v4, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 271
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 272
    nop

    .end local v4    # "set":Landroid/view/animation/AnimationSet;
    .end local v6    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v9    # "translateXAnimation":Landroid/view/animation/Animation;
    .end local v12    # "translateYAnimation":Landroid/view/animation/Animation;
    move-object v9, v4

    .line 273
    .local v9, "anim":Landroid/view/animation/Animation;
    nop

    .line 289
    move/from16 v11, v46

    move/from16 v14, v47

    goto :goto_2ea

    .line 274
    .end local v0    # "targetX":I
    .end local v9    # "anim":Landroid/view/animation/Animation;
    .end local v33    # "startCenterX":I
    .end local v34    # "appWidth":I
    .end local v46    # "startX":I
    .end local v47    # "startY":I
    .end local v48    # "positionRect":Landroid/graphics/Rect;
    .end local v50    # "scaleX":F
    .local v2, "positionRect":Landroid/graphics/Rect;
    .local v3, "startY":I
    .local v4, "startX":I
    .local v6, "scaleX":F
    .restart local v10    # "targetX":I
    .local v11, "targetY":I
    .local v15, "appWidth":I
    .local v26, "startCenterY":I
    .local v27, "insetRight":I
    .local v28, "startCenterX":I
    .local v29, "insetTop":I
    .local v32, "targetWidth":I
    .restart local v40    # "insetLeft":I
    .restart local v41    # "appHeight":I
    :cond_28e
    move-object/from16 v48, v2

    move/from16 v47, v3

    move/from16 v46, v4

    move/from16 v50, v6

    move v0, v10

    move v3, v11

    move/from16 v34, v15

    move/from16 v2, v26

    move/from16 v26, v27

    move/from16 v33, v28

    move/from16 v27, v29

    move/from16 v28, v32

    move/from16 v29, v40

    move/from16 v32, v41

    const/4 v10, 0x1

    .end local v4    # "startX":I
    .end local v6    # "scaleX":F
    .end local v10    # "targetX":I
    .end local v11    # "targetY":I
    .end local v15    # "appWidth":I
    .end local v40    # "insetLeft":I
    .end local v41    # "appHeight":I
    .restart local v0    # "targetX":I
    .local v2, "startCenterY":I
    .local v3, "targetY":I
    .local v26, "insetRight":I
    .local v27, "insetTop":I
    .local v28, "targetWidth":I
    .local v29, "insetLeft":I
    .local v32, "appHeight":I
    .restart local v33    # "startCenterX":I
    .restart local v34    # "appWidth":I
    .restart local v46    # "startX":I
    .restart local v47    # "startY":I
    .restart local v48    # "positionRect":Landroid/graphics/Rect;
    .restart local v50    # "scaleX":F
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 275
    .local v4, "set":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const v10, 0x3ecccccd    # 0.4f

    invoke-direct {v6, v7, v10, v1, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 278
    .local v6, "scaleAnimation":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    move/from16 v11, v46

    int-to-float v12, v11

    .end local v46    # "startX":I
    .local v11, "startX":I
    int-to-float v13, v0

    move/from16 v14, v47

    int-to-float v15, v14

    .end local v47    # "startY":I
    .local v14, "startY":I
    int-to-float v9, v3

    invoke-direct {v10, v12, v13, v15, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v9, v10

    .line 279
    .local v9, "translateAnimation":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 281
    .local v10, "alphaAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 282
    invoke-virtual {v4, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 283
    invoke-virtual {v4, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 284
    sget v12, Lcom/android/server/wm/AppTransitionInjector;->DEFAULT_ANIMATION_DURATION:I

    int-to-long v12, v12

    invoke-virtual {v4, v12, v13}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 285
    sget-object v12, Lcom/android/server/wm/AppTransitionInjector;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v12}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 286
    sget-boolean v12, Lcom/android/server/wm/AppTransitionInjector;->IS_E10:Z

    if-eqz v12, :cond_2e8

    .line 287
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 289
    :cond_2e8
    nop

    .end local v4    # "set":Landroid/view/animation/AnimationSet;
    .end local v6    # "scaleAnimation":Landroid/view/animation/Animation;
    .end local v9    # "translateAnimation":Landroid/view/animation/Animation;
    .end local v10    # "alphaAnimation":Landroid/view/animation/Animation;
    move-object v9, v4

    .local v9, "anim":Landroid/view/animation/Animation;
    :goto_2ea
    move-object v4, v9

    .line 291
    .end local v9    # "anim":Landroid/view/animation/Animation;
    .local v4, "anim":Landroid/view/animation/Animation;
    return-object v4
.end method

.method static createWallerOpenCloseTransitionAnimation(ZLandroid/graphics/Rect;Z)Landroid/view/animation/Animation;
    .registers 19
    .param p0, "enter"    # Z
    .param p1, "appFrame"    # Landroid/graphics/Rect;
    .param p2, "isOpenOrClose"    # Z

    .line 393
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 394
    .local v0, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .line 395
    .local v1, "translateAnimation":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 396
    .local v2, "scaleAnimation":Landroid/view/animation/Animation;
    const/4 v3, 0x0

    .line 397
    .local v3, "alphaAnimation":Landroid/view/animation/Animation;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 398
    .local v4, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 399
    .local v5, "heigth":I
    if-eqz p0, :cond_27

    .line 401
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v6, v15

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v1, v15

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_33

    .line 416
    :cond_27
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v3, v6

    .line 417
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 420
    :goto_33
    new-instance v6, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;

    const v7, 0x3f266666    # 0.65f

    const v8, 0x3f733333    # 0.95f

    invoke-direct {v6, v7, v8}, Lcom/android/server/wm/AppTransitionInjector$ActivityTranstionInterpolator;-><init>(FF)V

    sput-object v6, Lcom/android/server/wm/AppTransitionInjector;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 422
    sget-object v6, Lcom/android/server/wm/AppTransitionInjector;->sActivityTransitionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 423
    const-wide/16 v6, 0x226

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 424
    return-object v0
.end method

.method static disableSnapshot(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .line 907
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->BLACK_LIST_NOT_ALLOWED_SNAPSHOT:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 908
    const/4 v0, 0x1

    return v0

    .line 911
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static getMiuiAnimSupportInset()Landroid/graphics/Rect;
    .registers 1

    .line 817
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method static initDisplayRoundCorner(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 880
    if-nez p0, :cond_5

    .line 881
    const/16 v0, 0x3c

    .line 881
    .local v0, "result":I
    goto :goto_38

    .line 883
    .end local v0    # "result":I
    :cond_5
    const/4 v0, 0x0

    .line 884
    .local v0, "top":I
    const/4 v1, 0x0

    .line 885
    .local v1, "bottom":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 886
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v3, "rounded_corner_radius_top"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 887
    .local v3, "resourceId":I
    if-lez v3, :cond_1c

    .line 888
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 890
    :cond_1c
    const-string/jumbo v4, "rounded_corner_radius_bottom"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 891
    if-lez v3, :cond_2d

    .line 892
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 894
    :cond_2d
    if-le v0, v1, :cond_31

    move v4, v1

    goto :goto_32

    :cond_31
    move v4, v0

    .line 895
    .local v4, "result":I
    :goto_32
    if-gtz v4, :cond_37

    .line 896
    const/16 v0, 0x3c

    .line 896
    .end local v1    # "bottom":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "resourceId":I
    .end local v4    # "result":I
    .local v0, "result":I
    goto :goto_38

    .line 900
    .end local v0    # "result":I
    .restart local v4    # "result":I
    :cond_37
    move v0, v4

    .line 900
    .end local v4    # "result":I
    .restart local v0    # "result":I
    :goto_38
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_44

    .line 901
    const-string v1, "AppTransitionInjector"

    const-string/jumbo v2, "use default round corner Radius"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_44
    sput v0, Lcom/android/server/wm/AppTransitionInjector;->DISPLAY_ROUND_CORNER_RADIUS:I

    .line 904
    return-void
.end method

.method static notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 2
    .param p0, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 439
    if-eqz p0, :cond_a

    .line 441
    :try_start_2
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationEnd()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 444
    goto :goto_a

    .line 442
    :catch_6
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 446
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_a
    return-void
.end method

.method static notifyMiuiAnimationStart(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 2
    .param p0, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 429
    if-eqz p0, :cond_a

    .line 431
    :try_start_2
    invoke-interface {p0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->notifyMiuiAnimationStart()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 434
    goto :goto_a

    .line 432
    :catch_6
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_a
    return-void
.end method

.method static recalculateClipRevealTranslateYDuration(J)J
    .registers 4
    .param p0, "duration"    # J

    .line 538
    const-wide/16 v0, 0x32

    sub-long v0, p0, v0

    return-wide v0
.end method

.method static setMiuiAnimSupportInset(Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "inset"    # Landroid/graphics/Rect;

    .line 511
    if-nez p0, :cond_8

    .line 512
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_d

    .line 514
    :cond_8
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector;->sMiuiAnimSupportInset:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 516
    :goto_d
    return-void
.end method
