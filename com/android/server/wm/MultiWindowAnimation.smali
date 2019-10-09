.class public Lcom/android/server/wm/MultiWindowAnimation;
.super Ljava/lang/Object;
.source "MultiWindowAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
    }
.end annotation


# static fields
.field static final ANIMATION_TIMEOUT:I = 0x7d0

.field public static final TRANSIT_ENTER:I = 0x2

.field public static final TRANSIT_EXIT:I = 0x3

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_RESIZE:I = 0x4

.field public static final TRANSIT_SWAP:I = 0x1


# instance fields
.field private mAnimRunning:Z

.field private mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimationTimeoutRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSession:Landroid/view/SurfaceSession;

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mTransition:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/wm/MultiWindowAnimation$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowAnimation$1;-><init>(Lcom/android/server/wm/MultiWindowAnimation;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    .line 47
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mSession:Landroid/view/SurfaceSession;

    .line 50
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 51
    iput-object p4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    return-void
.end method

.method private animate(JI)Z
    .registers 10
    .param p1, "now"    # J
    .param p3, "animResId"    # I

    .line 123
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    const/4 v1, 0x1

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v0, :cond_44

    .line 124
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v2, v2, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v3, v3, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v4, v4, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    .line 128
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v5, v5, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    .line 127
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 129
    return v1

    .line 130
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    if-nez v0, :cond_4a

    .line 131
    return v2

    .line 133
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1, p2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 135
    .local v0, "moreAnim":Z
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-nez v3, :cond_5c

    .line 136
    return v2

    .line 138
    :cond_5c
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    .line 139
    if-eqz v0, :cond_66

    .line 140
    return v1

    .line 142
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->kill()V

    .line 143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    .line 144
    iput-boolean v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    .line 145
    iput v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    .line 146
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimation:Landroid/view/animation/Animation;

    .line 147
    return v2
.end method

.method private createSurface()Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
    .registers 12

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 81
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_11

    goto :goto_13

    :cond_11
    const/4 v2, 0x0

    nop

    :cond_13
    :goto_13
    move v1, v2

    .line 84
    .local v1, "isLandscape":Z
    if-eqz v1, :cond_1a

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_18
    move v7, v2

    goto :goto_1d

    :cond_1a
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_18

    .line 85
    .local v7, "width":I
    :goto_1d
    if-eqz v1, :cond_23

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_21
    move v8, v2

    goto :goto_26

    :cond_23
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_21

    .line 88
    .local v8, "height":I
    :goto_26
    :try_start_26
    new-instance v2, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowAnimation;->mSession:Landroid/view/SurfaceSession;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v9, v0, Landroid/view/DisplayInfo;->layerStack:I

    iget v10, v0, Landroid/view/DisplayInfo;->rotation:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;
    :try_end_36
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_26 .. :try_end_36} :catch_37

    .line 92
    goto :goto_3b

    .line 90
    :catch_37
    move-exception v2

    .line 91
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-virtual {v2}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V

    .line 94
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_3b
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v2, :cond_44

    .line 95
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->show()V

    .line 97
    :cond_44
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimationTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    return-object v2
.end method

.method private stepAnimation(J)Z
    .registers 4
    .param p1, "now"    # J

    .line 111
    iget v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    packed-switch v0, :pswitch_data_10

    .line 118
    const/4 v0, 0x0

    return v0

    .line 116
    :pswitch_7
    const v0, 0x10a0001

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowAnimation;->animate(JI)Z

    move-result v0

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public isAnimating()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method setTransition(I)V
    .registers 3
    .param p1, "transit"    # I

    .line 55
    packed-switch p1, :pswitch_data_e

    goto :goto_d

    .line 60
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-nez v0, :cond_d

    .line 61
    iput p1, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    .line 62
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowAnimation;->createSurface()Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    .line 68
    :cond_d
    :goto_d
    return-void

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method stepAnimationLocked(J)Z
    .registers 4
    .param p1, "now"    # J

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MultiWindowAnimation;->stepAnimation(J)Z

    move-result v0

    return v0
.end method

.method public stopAnimation()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;->kill()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimSurface:Lcom/android/server/wm/MultiWindowAnimation$MultiWindowAnimSurface;

    .line 75
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mAnimRunning:Z

    .line 76
    iput v0, p0, Lcom/android/server/wm/MultiWindowAnimation;->mTransition:I

    .line 77
    return-void
.end method
