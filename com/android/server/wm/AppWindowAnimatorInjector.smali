.class Lcom/android/server/wm/AppWindowAnimatorInjector;
.super Ljava/lang/Object;
.source "AppWindowAnimatorInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scaleCurrentDuration(Landroid/view/animation/Animation;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p0, "anim"    # Landroid/view/animation/Animation;
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 9
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    goto :goto_1d

    .line 12
    :pswitch_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 13
    nop

    .line 17
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x6
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
