.class Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;
.super Ljava/lang/Object;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BerylliumConfig"
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_DURATION:I = 0x58

.field protected static final DEFAULT_ANIMATION_DURATION:I = 0x90

.field private static final DEFAULT_LAUNCHER_TRANSITION_ALPHA:F = 1.0f

.field private static final DEFAULT_LAUNCH_FORM_HOME_DURATION:I = 0xb0

.field protected static final DEFAULT_WALLPAPER_OPEN_DURATION:I = 0x90

.field protected static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final FULL_SCREEN_DISPLAY_FRAME:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 825
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 835
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x438

    const/16 v3, 0x8c6

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FULL_SCREEN_DISPLAY_FRAME:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLaunchAppFromHomeAnimation(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 11
    .param p0, "transit"    # I
    .param p1, "enter"    # Z
    .param p2, "appFrame"    # Landroid/graphics/Rect;
    .param p3, "positionRect"    # Landroid/graphics/Rect;

    .line 841
    const-wide/16 v0, 0xb0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-eqz p1, :cond_35

    .line 842
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    .line 843
    # getter for: Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F
    invoke-static {}, Lcom/android/server/wm/AppTransitionInjector;->access$300()F

    move-result v5

    invoke-direct {v4, v5, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v4

    .line 844
    .local v2, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v4, 0x58

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 847
    new-instance v4, Landroid/view/animation/ClipRectAnimation;

    sget-object v5, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FULL_SCREEN_DISPLAY_FRAME:Landroid/graphics/Rect;

    invoke-direct {v4, p3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 849
    .local v4, "clipAnimation":Landroid/view/animation/ClipRectAnimation;
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    .line 851
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 852
    .local v0, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 853
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 854
    sget-object v1, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 855
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 856
    nop

    .line 857
    .end local v2    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v4    # "clipAnimation":Landroid/view/animation/ClipRectAnimation;
    .local v0, "anim":Landroid/view/animation/Animation;
    goto :goto_6d

    .line 858
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_35
    const/16 v4, 0xe

    if-eq p0, v4, :cond_5a

    const/16 v4, 0xf

    if-ne p0, v4, :cond_3e

    goto :goto_5a

    .line 864
    :cond_3e
    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 865
    .local v4, "set":Landroid/view/animation/AnimationSet;
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    .line 866
    # getter for: Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F
    invoke-static {}, Lcom/android/server/wm/AppTransitionInjector;->access$300()F

    move-result v6

    invoke-direct {v5, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v5

    .line 867
    .restart local v2    # "alphaAnimation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 868
    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 869
    sget-object v0, Lcom/android/server/wm/AppTransitionInjector$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 870
    nop

    .end local v2    # "alphaAnimation":Landroid/view/animation/Animation;
    .end local v4    # "set":Landroid/view/animation/AnimationSet;
    goto :goto_69

    .line 860
    :cond_5a
    :goto_5a
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    # getter for: Lcom/android/server/wm/AppTransitionInjector;->LAUNCHER_TRANSITION_ALPHA:F
    invoke-static {}, Lcom/android/server/wm/AppTransitionInjector;->access$300()F

    move-result v5

    invoke-direct {v4, v2, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 861
    .local v4, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 862
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 870
    :goto_69
    move-object v0, v4

    .line 872
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 874
    :goto_6d
    return-object v0
.end method
