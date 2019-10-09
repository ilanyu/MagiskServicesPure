.class Lcom/android/server/wm/AppWindowThumbnail;
.super Ljava/lang/Object;
.source "AppWindowThumbnail.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mHeight:I

.field private final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

.field private mThumbnailLeash:Landroid/view/SurfaceControl;

.field private final mWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Lcom/android/server/wm/AppWindowAnimatorHelper;)V

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Lcom/android/server/wm/AppWindowAnimatorHelper;)V
    .registers 12
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;
    .param p4, "helper"    # Lcom/android/server/wm/AppWindowAnimatorHelper;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 71
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppWindowThumbnail$hHTeq2FR5SSE1YyVM6K-wuzeLLo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowThumbnail$hHTeq2FR5SSE1YyVM6K-wuzeLLo;-><init>(Lcom/android/server/wm/AppWindowThumbnail;)V

    iget-object v2, p2, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 72
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    .line 73
    invoke-virtual {p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    .line 76
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 81
    .local v0, "window":Lcom/android/server/wm/WindowState;
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thumbnail anim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    iget v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    .line 83
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 84
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, p2, Lcom/android/server/wm/AppWindowToken;->windowType:I

    .line 86
    if-eqz v0, :cond_55

    iget v3, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    goto :goto_59

    :cond_55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 85
    :goto_59
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 94
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 95
    .local v1, "drawSurface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 96
    invoke-virtual {v1, p3}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 97
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 98
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 102
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 105
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mIsMiuiThumbnail:Z

    if-eqz v2, :cond_97

    .line 106
    iput-object p4, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    .line 107
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    iget v5, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppWindowAnimatorHelper;->setMiuiThumbnailRect(Landroid/graphics/Rect;)V

    .line 110
    :cond_97
    return-void
.end method

.method public static synthetic lambda$hHTeq2FR5SSE1YyVM6K-wuzeLLo(Lcom/android/server/wm/AppWindowThumbnail;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowThumbnail;->onAnimationFinished()V

    return-void
.end method

.method private onAnimationFinished()V
    .registers 1

    .line 143
    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->commitPendingTransaction()V

    .line 197
    return-void
.end method

.method destroy()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 161
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowAnimatorHelper;->clearMiuiThumbnail()V

    .line 165
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1e

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 170
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 171
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 239
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 234
    iget v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 201
    const v0, 0x7fffffff

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 202
    return-void
.end method

.method public onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 210
    return-void
.end method

.method setShowing(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 4
    .param p1, "pendingTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "show"    # Z

    .line 147
    if-eqz p2, :cond_8

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_d

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 152
    :goto_d
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 114
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V
    .registers 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"    # Landroid/view/animation/Animation;
    .param p3, "position"    # Landroid/graphics/Point;

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsMiuiThumbnail:Z

    if-eqz v0, :cond_38

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_b

    .line 122
    return-void

    .line 124
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    iget v5, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    const/4 v6, 0x0

    .line 125
    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIZ)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowAnimatorHelper;->setLeash(Landroid/view/SurfaceControl;)V

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    if-eqz v0, :cond_37

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowThumbnail;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec;->mThumbnailHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    .line 131
    :cond_37
    return-void

    .line 134
    :cond_38
    const-wide/16 v0, 0x2710

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 138
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v3

    invoke-direct {v2, p2, p3, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Z)V

    iget-object v3, p0, Lcom/android/server/wm/AppWindowThumbnail;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 140
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 182
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 183
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mWidth:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 184
    iget v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mHeight:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 185
    iget-object v2, p0, Lcom/android/server/wm/AppWindowThumbnail;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 187
    return-void
.end method
